import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer' as developer;

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final searchCtrl = TextEditingController();
  List _recipes = [];
  bool _isLoading = true;
  String _message = "";

  final String _baseUrl = "http://nourz.atwebpages.com/";

  @override
  void initState() {
    super.initState();
    _loadAllRecipes();
  }

  Future<void> _loadAllRecipes() async {
    setState(() {
      _isLoading = true;
      _message = "";
    });

    try {
      final uri = Uri.parse("${_baseUrl}get_recipes.php").replace(
        queryParameters: {'_cacheBust': DateTime.now().millisecondsSinceEpoch.toString()},
      );
      final res = await http.get(uri);

      if (!mounted) return;

      if (res.statusCode == 200) {
        try {
          final body = json.decode(res.body);
          setState(() {
            _recipes = body is List ? body : [];
          });
        } on FormatException {
          developer.log("Server returned non-JSON response:\n${res.body}");
          setState(() {
            _message = "Failed to parse server response. Check debug console.";
          });
        }
      } else {
        setState(() {
          _message = "Failed to load recipes. Server responded with ${res.statusCode}";
        });
      }
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _message = "An error occurred: $e";
      });
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _searchRecipe() async {
    if (searchCtrl.text.isEmpty) {
      _loadAllRecipes();
      return;
    }
    
    setState(() {
      _isLoading = true;
      _message = "";
    });

    try {
      final uri = Uri.parse("${_baseUrl}search_recipe.php").replace(queryParameters: {
        'q': searchCtrl.text,
        '_cacheBust': DateTime.now().millisecondsSinceEpoch.toString(),
      });
      final res = await http.get(uri);

      if (!mounted) return;

      if (res.statusCode == 200) {
        try {
          final data = json.decode(res.body);
          setState(() {
            _recipes = data is List ? data : [];
            _message = (data is List && data.isEmpty) ? "Recipe not found" : "";
          });
        } on FormatException {
          developer.log("Server returned non-JSON response during search:\n${res.body}");
          setState(() {
            _message = "Failed to parse search results. Check debug console.";
          });
        }
      } else {
        setState(() {
          _message = "Search failed with status: ${res.statusCode}";
        });
      }
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _message = "An error occurred during search: $e";
      });
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _deleteRecipe(dynamic id) async {
    try {
      final res = await http.post(
        Uri.parse("${_baseUrl}delete_recipe.php"),
        body: {"recipe_id": id.toString()},
      );
      
      developer.log("Delete Response: ${res.statusCode} ${res.body}");

      if (res.statusCode == 200) {
        _loadAllRecipes(); 
      } else {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Failed to delete recipe. Server response: ${res.body}")));
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("An error occurred: $e")));
    }
  }

  void _openForm({Map? recipe}) {
    final nameCtrl = TextEditingController(text: recipe?['name']);
    final descCtrl = TextEditingController(text: recipe?['description']);

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(recipe == null ? "Add Recipe" : "Update Recipe"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameCtrl,
              decoration: const InputDecoration(labelText: "Recipe Name"),
            ),
            TextField(
              controller: descCtrl,
              decoration: const InputDecoration(labelText: "Description"),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () async {
              final url = recipe == null
                  ? "${_baseUrl}add_recipe.php"
                  : "${_baseUrl}update_recipe.php";

              final body = recipe == null
                  ? {
                      "name": nameCtrl.text,
                      "description": descCtrl.text,
                      "category_id": "1", 
                      "ingredients": jsonEncode(["Ingredient"]), 
                      "steps": jsonEncode(["Step"]), 
                    }
                  : {
                      "recipe_id": recipe!['recipe_id'].toString(),
                      "name": nameCtrl.text,
                      "description": descCtrl.text,
                    };

              try {
                final res = await http.post(
                  Uri.parse(url),
                  body: body,
                );

                developer.log("Save Response: ${res.statusCode} ${res.body}");

                if (!mounted) return;

                if (res.statusCode == 200) {
                  Navigator.pop(context);
                  _loadAllRecipes();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Failed to save recipe. Server response: ${res.body}")));
                }
              } catch (e) {
                if (!mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("An error occurred: $e")));
              }
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Panel")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openForm(),
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              controller: searchCtrl,
              onChanged: (_) => _searchRecipe(),
              decoration: const InputDecoration(
                labelText: "Search recipe by name",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _message.isNotEmpty
                    ? Center(
                        child: Text(_message,
                            style: const TextStyle(
                                color: Colors.red, fontSize: 16)))
                    : RefreshIndicator(
                        onRefresh: _loadAllRecipes,
                        child: ListView.builder(
                          itemCount: _recipes.length,
                          itemBuilder: (context, i) {
                            final r = _recipes[i];
                            return Card(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              child: ListTile(
                                title: Text(r['name'] ?? 'No Name'),
                                subtitle:
                                    Text(r['description'] ?? 'No Description'),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.edit,
                                          color: Colors.blue),
                                      onPressed: () => _openForm(recipe: r),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.delete,
                                          color: Colors.red),
                                      onPressed: () =>
                                          _deleteRecipe(r['recipe_id']),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
          ),
        ],
      ),
    );
  }
}
