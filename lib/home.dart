import 'package:flutter/material.dart';
import 'dart:math';
import 'data/recipes.dart';

class RecipePage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  final List<String> categories = [
    'Breakfast',
    'Lunch',
    'Dinner',
    'Snacks',
    'Desserts',
    'Healthy',
    'Drinks',
  ];

  String selectedCategory = 'Breakfast';
  String recipeName = '';
  String description = '';
  List<String> ingredients = [];
  List<String> steps = [];

  late final Map<String, List<Map<String, dynamic>>> recipes = RecipeData.getRecipes();
  final Random _random = Random();

  //picks a random recipe
  void generateRecipe() {
    final categoryRecipes = recipes[selectedCategory];

    if (categoryRecipes == null || categoryRecipes.isEmpty) {
      return;
    }

    final recipe = categoryRecipes[_random.nextInt(categoryRecipes.length)];

    setState(() {
      recipeName = recipe['name'] as String;
      description = recipe['desc'] as String;
      ingredients = List<String>.from(recipe['ingredients'] as List);
      steps = List<String>.from(recipe['steps'] as List);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🍽️ Random Recipe Generator'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey.shade50,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Category:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade800,
                  ),
                ),
                SizedBox(height: 12),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final checkboxWidth = (constraints.maxWidth - 16) / 2;
                    return Wrap(
                      spacing: 16,
                      runSpacing: 8,
                      children: categories.map((cat) {
                        final isSelected = selectedCategory == cat;
                        return SizedBox(
                          width: checkboxWidth,
                          child: CheckboxListTile(
                            title: Text(cat),
                            dense: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: isSelected,
                            onChanged: (checked) {
                              if ((checked ?? false)) {
                                setState(() => selectedCategory = cat);
                              }
                            },
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),
                SizedBox(height: 24),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: generateRecipe,
                    icon: Icon(Icons.shuffle),
                    label: Text('Generate Recipe'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                if (recipeName.isNotEmpty) ...[
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '🍲 $recipeName',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '✏️ $description',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          SizedBox(height: 20),
                          Divider(),
                          SizedBox(height: 16),
                          Text(
                            '🧂 Ingredients:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          SizedBox(height: 12),
                          ...ingredients.map((item) => Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Row(
                              children: [
                                Icon(Icons.circle, size: 8, color: Colors.teal),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    item,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          )),
                          SizedBox(height: 20),
                          Text(
                            '👨‍🍳 Steps:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          SizedBox(height: 12),
                          ...steps.asMap().entries.map((e) => Padding(
                            padding: EdgeInsets.only(bottom: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 28,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    color: Colors.teal,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${e.key + 1}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    e.value,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}

