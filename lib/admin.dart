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

  final List<String> _categories = [
    'Breakfast', 'Lunch', 'Dinner', 'Snacks',
    'Desserts', 'Healthy', 'Drinks',
  ];

  @override
  void initState() {
    super.initState();
    _loadAllRecipes();
  }

  String _listToText(dynamic data) {
    if (data == null) return '';
    try {
      List<dynamic> list = (data is String) ? json.decode(data) : data;
      return list.join('\n');
    } catch (e) {
      return data.toString();
    }
  }

  String _getCategoryId(String categoryName) {
    switch (categoryName) {
      case 'Breakfast': return '1';
      case 'Lunch': return '2';
      case 'Dinner': return '3';
      case 'Snacks': return '4';
      case 'Desserts': return '5';
      case 'Healthy': return '6';
      case 'Drinks': return '7';
      default: return '1';
    }
  }

  Future<void> _loadAllRecipes() async {
    setState(() { _isLoading = true; _message = ""; });
    try {
      final uri = Uri.parse("${_baseUrl}get_recipes.php").replace(
        queryParameters: {'_cacheBust': DateTime.now().millisecondsSinceEpoch.toString()},
      );
      final res = await http.get(uri);
      if (!mounted) return;
      if (res.statusCode == 200) {
        final body = json.decode(res.body);
        setState(() {
          _recipes = body is List ? body : [];
          if (_recipes.isEmpty) _message = "No recipes found.";
        });
      } else {
        setState(() { _message = "Failed to load recipes. Server responded with ${res.statusCode}"; });
      }
    } catch (e) {
      if (!mounted) return;
      setState(() { _message = "An error occurred: $e"; });
    } finally {
      if (mounted) setState(() { _isLoading = false; });
    }
  }

  Future<void> _searchRecipe() async {
    if (searchCtrl.text.isEmpty) {
      _loadAllRecipes();
      return;
    }
    setState(() { _isLoading = true; _message = ""; });
    try {
      final uri = Uri.parse("${_baseUrl}search_recipe.php").replace(queryParameters: {
        'q': searchCtrl.text,
        '_cacheBust': DateTime.now().millisecondsSinceEpoch.toString(),
      });
      final res = await http.get(uri);
      if (!mounted) return;
      if (res.statusCode == 200) {
        final data = json.decode(res.body);
        setState(() {
          _recipes = data is List ? data : [];
          _message = (data is List && data.isEmpty) ? "Recipe not found" : "";
        });
      } else {
        setState(() { _message = "Search failed with status: ${res.statusCode}"; });
      }
    } catch (e) {
      if (!mounted) return;
      setState(() { _message = "An error occurred during search: $e"; });
    } finally {
      if (mounted) setState(() { _isLoading = false; });
    }
  }

  Future<void> _deleteRecipe(dynamic id) async {
    bool? confirmDelete = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Deletion'),
        content: const Text('Are you sure you want to delete this recipe?'),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(false), child: const Text('Cancel')),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
    if (confirmDelete != true) return;
    try {
      final res = await http.post(
        Uri.parse("${_baseUrl}delete_recipe.php"),
        body: {"recipe_id": id.toString()},
      );
      if (!mounted) return;
      if (res.statusCode == 200) {
        _loadAllRecipes();
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Recipe deleted successfully."), backgroundColor: Colors.green));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Failed to delete recipe. Server response: ${res.body}")));
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("An error occurred: $e")));
    }
  }

  void _openForm({Map? recipe}) {
    final nameCtrl = TextEditingController(text: recipe?['name'] ?? '');
    final descCtrl = TextEditingController(text: recipe?['description'] ?? '');
    final ingredientsCtrl = TextEditingController(text: _listToText(recipe?['ingredients']));
    final stepsCtrl = TextEditingController(text: _listToText(recipe?['steps']));
    String? selectedCategory = recipe?['category_name'] ?? recipe?['category'];

    if (selectedCategory != null && !_categories.contains(selectedCategory)) {
      selectedCategory = null;
    }

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(recipe == null ? "Add Recipe" : "Update Recipe"),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(controller: nameCtrl, decoration: const InputDecoration(labelText: "Recipe Name")),
              const SizedBox(height: 8),
              TextField(controller: descCtrl, decoration: const InputDecoration(labelText: "Description")),
              const SizedBox(height: 8),
              StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  return DropdownButtonFormField<String>(
                    value: selectedCategory,
                    hint: const Text('Select a Category'),
                    isExpanded: true,
                    items: _categories.map((String category) {
                      return DropdownMenuItem<String>(value: category, child: Text(category));
                    }).toList(),
                    onChanged: (newValue) => setState(() => selectedCategory = newValue),
                    validator: (value) => value == null ? 'Category is required' : null,
                  );
                },
              ),
              const SizedBox(height: 8),
              TextField(controller: ingredientsCtrl, maxLines: 4, decoration: const InputDecoration(labelText: "Ingredients", hintText: "One per line")),
              const SizedBox(height: 8),
              TextField(controller: stepsCtrl, maxLines: 4, decoration: const InputDecoration(labelText: "Steps", hintText: "One per line")),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancel")),
          ElevatedButton(
            onPressed: () async {
              if (nameCtrl.text.isEmpty || selectedCategory == null) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Recipe Name and Category are required."), backgroundColor: Colors.orange));
                return;
              }

              final url = Uri.parse(recipe == null
                  ? "${_baseUrl}add_recipe.php"
                  : "${_baseUrl}update_recipe.php");

              final ingredientsList = ingredientsCtrl.text.split('\n').where((s) => s.trim().isNotEmpty).toList();
              final stepsList = stepsCtrl.text.split('\n').where((s) => s.trim().isNotEmpty).toList();

              final Map<String, String> body = {
                "name": nameCtrl.text,
                "description": descCtrl.text,
                "category_id": _getCategoryId(selectedCategory!),
                "ingredients": jsonEncode(ingredientsList),
                "steps": jsonEncode(stepsList),
              };

              if (recipe != null) {
                body["recipe_id"] = recipe['recipe_id'].toString();
              }

              try {
                final res = await http.post(url, body: body);

                developer.log("${recipe == null ? 'Add' : 'Update'} Response: ${res.statusCode} ${res.body}");

                if (!mounted) return;
                final result = json.decode(res.body);

                if (res.statusCode == 200 && result['status'] == 'success') {
                  Navigator.pop(context);
                  _loadAllRecipes();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result['message']), backgroundColor: Colors.green));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to save: ${result['message'] ?? 'Unknown error'}"), backgroundColor: Colors.red));
                }
              } catch (e) {
                developer.log("Error saving recipe: $e\nRequest Body: $body");
                if (!mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("An error occurred: $e")));
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
                ? Center(child: Text(_message, style: const TextStyle(color: Colors.grey, fontSize: 16)))
                : RefreshIndicator(
              onRefresh: _loadAllRecipes,
              child: ListView.builder(
                itemCount: _recipes.length,
                itemBuilder: (context, i) {
                  final r = _recipes[i];
                  return Card(
                    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: ListTile(
                      title: Text(r['name'] ?? 'No Name'),
                      subtitle: Text(r['description'] ?? 'No Description', maxLines: 1, overflow: TextOverflow.ellipsis),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.blue),
                            onPressed: () => _openForm(recipe: r),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => _deleteRecipe(r['recipe_id']),
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
