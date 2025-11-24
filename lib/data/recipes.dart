class RecipeData {
  static Map<String, List<Map<String, dynamic>>> getRecipes() {
    return {
      'Breakfast': [
        {
          'name': 'Pancakes',
          'desc': 'Fluffy pancakes perfect for a morning treat.',
          'ingredients': [
            '1 cup all-purpose flour',
            '2 tablespoons sugar',
            '2 teaspoons baking powder',
            '1/2 teaspoon salt',
            '1 cup milk',
            '1 large egg',
            '2 tablespoons melted butter'
          ],
          'steps': [
            'Mix dry ingredients in a bowl',
            'In another bowl, whisk milk, egg, and melted butter',
            'Combine wet and dry ingredients until just mixed',
            'Heat a non-stick pan over medium heat',
            'Pour 1/4 cup batter for each pancake',
            'Cook until bubbles form, then flip',
            'Cook until golden brown on both sides'
          ],
        },
        {
          'name': 'Omelette',
          'desc': 'Quick and protein-packed breakfast.',
          'ingredients': [
            '3 large eggs',
            '2 tablespoons milk',
            '1/4 cup shredded cheese',
            'Salt and pepper to taste',
            '1/4 cup chopped onion',
            '1 tablespoon butter'
          ],
          'steps': [
            'Beat eggs with milk, salt, and pepper',
            'Heat butter in a non-stick pan',
            'Pour egg mixture into the pan',
            'Add cheese and onion when eggs start to set',
            'Fold in half and cook until golden'
          ],
        },
        {
          'name': 'French Toast',
          'desc': 'Classic breakfast favorite with crispy edges.',
          'ingredients': [
            '4 slices of bread',
            '2 large eggs',
            '1/2 cup milk',
            '1 teaspoon vanilla extract',
            '1/2 teaspoon cinnamon',
            '2 tablespoons butter',
            'Maple syrup for serving'
          ],
          'steps': [
            'Whisk eggs, milk, vanilla, and cinnamon',
            'Dip bread slices in the mixture',
            'Heat butter in a pan',
            'Cook bread until golden brown on both sides',
            'Serve with maple syrup'
          ],
        },
        {
          'name': 'Scrambled Eggs',
          'desc': 'Creamy and delicious scrambled eggs.',
          'ingredients': [
            '4 large eggs',
            '2 tablespoons butter',
            '2 tablespoons cream',
            'Salt and pepper',
            'Fresh chives for garnish'
          ],
          'steps': [
            'Beat eggs with cream, salt, and pepper',
            'Melt butter in a pan over low heat',
            'Add eggs and stir gently',
            'Cook until creamy and set',
            'Garnish with chives'
          ],
        },
        {
          'name': 'Waffles',
          'desc': 'Crispy golden waffles with fluffy interior.',
          'ingredients': [
            '2 cups all-purpose flour',
            '2 tablespoons sugar',
            '1 tablespoon baking powder',
            '1/2 teaspoon salt',
            '2 large eggs',
            '1 3/4 cups milk',
            '1/2 cup melted butter',
            '1 teaspoon vanilla extract'
          ],
          'steps': [
            'Preheat waffle iron',
            'Mix dry ingredients in a bowl',
            'Whisk eggs, milk, butter, and vanilla',
            'Combine wet and dry ingredients',
            'Pour batter onto hot waffle iron',
            'Cook until golden and crispy',
            'Serve with syrup and butter'
          ],
        },
        {
          'name': 'Breakfast Burrito',
          'desc': 'Hearty breakfast wrapped in a tortilla.',
          'ingredients': [
            '2 large flour tortillas',
            '4 large eggs',
            '1/2 cup cooked sausage or bacon',
            '1/2 cup shredded cheese',
            '1/4 cup diced bell peppers',
            '1/4 cup diced onions',
            'Salsa and sour cream',
            'Salt and pepper'
          ],
          'steps': [
            'Scramble eggs with salt and pepper',
            'Cook sausage or bacon until crispy',
            'Sauté peppers and onions',
            'Warm tortillas',
            'Layer eggs, meat, vegetables, and cheese',
            'Roll tightly into burrito',
            'Serve with salsa and sour cream'
          ],
        },
        {
          'name': 'Yogurt Parfait',
          'desc': 'Layered yogurt with granola and fresh fruit.',
          'ingredients': [
            '2 cups Greek yogurt',
            '1 cup granola',
            '1 cup mixed berries',
            '2 tablespoons honey',
            '1/4 cup nuts (optional)',
            'Fresh mint for garnish'
          ],
          'steps': [
            'Layer yogurt in a glass',
            'Add a layer of granola',
            'Add fresh berries',
            'Repeat layers',
            'Drizzle with honey',
            'Top with nuts and mint',
            'Serve chilled'
          ],
        },
        {
          'name': 'Manoushe',
          'desc': 'Lebanese flatbread with za\'atar or cheese.',
          'ingredients': [
            '2 cups all-purpose flour',
            '1 teaspoon active dry yeast',
            '1 teaspoon sugar',
            '1/2 teaspoon salt',
            '3/4 cup warm water',
            '2 tablespoons olive oil',
            '1/4 cup za\'atar',
            '1/4 cup olive oil for za\'atar mix'
          ],
          'steps': [
            'Dissolve yeast and sugar in warm water',
            'Mix flour and salt in a bowl',
            'Add yeast mixture and olive oil',
            'Knead dough for 5-7 minutes',
            'Let rise for 1 hour',
            'Mix za\'atar with olive oil',
            'Roll dough into flat circles',
            'Spread za\'atar mixture on top',
            'Bake at 450°F for 8-10 minutes'
          ],
        },
        {
          'name': 'Labneh',
          'desc': 'Strained yogurt cheese, creamy and tangy.',
          'ingredients': [
            '4 cups plain Greek yogurt',
            '1/2 teaspoon salt',
            'Olive oil for serving',
            'Za\'atar for garnish',
            'Olives for serving'
          ],
          'steps': [
            'Mix yogurt with salt',
            'Line a strainer with cheesecloth',
            'Place yogurt in cheesecloth',
            'Tie and hang over bowl',
            'Let drain for 24-48 hours',
            'Remove from cheesecloth',
            'Shape into balls or serve as spread',
            'Drizzle with olive oil',
            'Sprinkle with za\'atar',
            'Serve with olives and pita bread'
          ],
        },
      ],
      'Lunch': [
        {
          'name': 'Grilled Cheese Sandwich',
          'desc': 'Crispy outside, gooey inside.',
          'ingredients': [
            '4 slices of bread',
            '4 slices of cheddar cheese',
            '2 tablespoons butter',
            'Optional: tomato slices'
          ],
          'steps': [
            'Butter one side of each bread slice',
            'Place cheese between bread slices',
            'Heat pan over medium heat',
            'Grill sandwich until golden and cheese melts',
            'Flip and cook the other side'
          ],
        },
        {
          'name': 'Caesar Salad',
          'desc': 'Fresh and crispy salad with creamy dressing.',
          'ingredients': [
            '1 head romaine lettuce',
            '1/2 cup croutons',
            '1/4 cup parmesan cheese',
            'Caesar dressing',
            'Black pepper',
            'Lemon wedges'
          ],
          'steps': [
            'Wash and chop lettuce into bite-sized pieces',
            'Toss lettuce with dressing',
            'Add croutons and parmesan',
            'Season with black pepper',
            'Serve with lemon wedges'
          ],
        },
        {
          'name': 'Chicken Wrap',
          'desc': 'Healthy and filling lunch wrap.',
          'ingredients': [
            '2 large tortillas',
            '1 cup cooked chicken, sliced',
            '1/2 cup lettuce',
            '1/4 cup tomatoes, diced',
            '2 tablespoons ranch dressing',
            '1/4 cup shredded cheese'
          ],
          'steps': [
            'Warm tortillas slightly',
            'Spread dressing on tortillas',
            'Add chicken, lettuce, tomatoes, and cheese',
            'Roll tightly and cut in half',
            'Serve immediately'
          ],
        },
        {
          'name': 'Tomato Soup',
          'desc': 'Comforting and warm soup.',
          'ingredients': [
            '2 cups canned tomatoes',
            '1 cup vegetable broth',
            '1/2 onion, chopped',
            '2 cloves garlic',
            '1/4 cup cream',
            'Basil leaves',
            'Salt and pepper'
          ],
          'steps': [
            'Sauté onion and garlic until soft',
            'Add tomatoes and broth',
            'Simmer for 15 minutes',
            'Blend until smooth',
            'Stir in cream and season',
            'Garnish with basil'
          ],
        },
        {
          'name': 'Club Sandwich',
          'desc': 'Triple-decker sandwich with turkey, bacon, and veggies.',
          'ingredients': [
            '6 slices bread, toasted',
            '6 slices cooked turkey',
            '6 slices cooked bacon',
            'Lettuce leaves',
            '2 tomatoes, sliced',
            'Mayonnaise',
            'Salt and pepper'
          ],
          'steps': [
            'Toast bread slices',
            'Spread mayonnaise on bread',
            'Layer turkey, bacon, lettuce, and tomato',
            'Stack three layers',
            'Cut diagonally into quarters',
            'Secure with toothpicks',
            'Serve immediately'
          ],
        },
        {
          'name': 'Chicken Caesar Wrap',
          'desc': 'Classic Caesar salad wrapped in a tortilla.',
          'ingredients': [
            '2 large tortillas',
            '2 cups cooked chicken, sliced',
            '2 cups romaine lettuce',
            '1/2 cup Caesar dressing',
            '1/4 cup parmesan cheese',
            '1/4 cup croutons',
            'Black pepper'
          ],
          'steps': [
            'Warm tortillas slightly',
            'Toss lettuce with dressing',
            'Add chicken, cheese, and croutons',
            'Place mixture on tortilla',
            'Roll tightly and cut in half',
            'Serve immediately'
          ],
        },
        {
          'name': 'Minestrone Soup',
          'desc': 'Hearty Italian vegetable soup.',
          'ingredients': [
            '2 tablespoons olive oil',
            '1 onion, diced',
            '2 carrots, diced',
            '2 celery stalks, diced',
            '2 cloves garlic, minced',
            '1 can diced tomatoes',
            '1 can kidney beans',
            '1/2 cup pasta',
            '4 cups vegetable broth',
            '1 cup spinach',
            'Parmesan cheese',
            'Salt and pepper'
          ],
          'steps': [
            'Heat oil and sauté vegetables',
            'Add garlic and cook 1 minute',
            'Add tomatoes, beans, and broth',
            'Simmer for 20 minutes',
            'Add pasta and cook until tender',
            'Stir in spinach',
            'Season with salt and pepper',
            'Serve with parmesan cheese'
          ],
        },
        {
          'name': 'Shawarma',
          'desc': 'Marinated meat cooked on a rotating spit.',
          'ingredients': [
            '2 lbs chicken or beef, thinly sliced',
            '1/2 cup plain yogurt',
            '3 cloves garlic, minced',
            '2 tablespoons lemon juice',
            '1 teaspoon cumin',
            '1 teaspoon paprika',
            '1/2 teaspoon turmeric',
            '1/2 teaspoon cinnamon',
            'Salt and pepper',
            'Pita bread and tahini sauce for serving'
          ],
          'steps': [
            'Mix yogurt, garlic, lemon juice, and spices',
            'Marinate meat for at least 4 hours',
            'Cook meat in a pan or on grill until done',
            'Warm pita bread',
            'Slice meat thinly',
            'Serve in pita with tahini sauce',
            'Add pickles and vegetables if desired'
          ],
        },
      ],
      'Dinner': [
        {
          'name': 'Spaghetti Bolognese',
          'desc': 'Classic Italian pasta dish.',
          'ingredients': [
            '8 oz spaghetti',
            '1/2 lb ground beef',
            '1 cup tomato sauce',
            '1/2 onion, diced',
            '2 cloves garlic, minced',
            '1/4 cup red wine',
            'Parmesan cheese',
            'Salt and pepper'
          ],
          'steps': [
            'Cook spaghetti according to package directions',
            'Brown ground beef in a large pan',
            'Add onion and garlic, cook until soft',
            'Add tomato sauce and wine, simmer 20 minutes',
            'Season with salt and pepper',
            'Serve over pasta with parmesan'
          ],
        },
        {
          'name': 'Grilled Salmon',
          'desc': 'Healthy and flavorful fish dish.',
          'ingredients': [
            '2 salmon fillets',
            '2 tablespoons olive oil',
            '1 lemon',
            'Fresh dill',
            'Salt and pepper',
            'Garlic powder'
          ],
          'steps': [
            'Preheat grill to medium-high',
            'Rub salmon with oil, lemon juice, and seasonings',
            'Grill for 4-5 minutes per side',
            'Garnish with fresh dill',
            'Serve with lemon wedges'
          ],
        },
        {
          'name': 'Chicken Stir Fry',
          'desc': 'Quick and colorful stir fry.',
          'ingredients': [
            '1 lb chicken breast, sliced',
            '2 cups mixed vegetables',
            '2 tablespoons soy sauce',
            '1 tablespoon ginger, minced',
            '2 cloves garlic',
            '2 tablespoons vegetable oil',
            'Rice for serving'
          ],
          'steps': [
            'Heat oil in a wok or large pan',
            'Cook chicken until golden, set aside',
            'Stir fry vegetables until crisp-tender',
            'Add ginger and garlic',
            'Return chicken, add soy sauce',
            'Serve over rice'
          ],
        },
        {
          'name': 'Beef Tacos',
          'desc': 'Delicious and customizable tacos.',
          'ingredients': [
            '1 lb ground beef',
            '8 taco shells',
            '1 packet taco seasoning',
            '1 cup shredded lettuce',
            '1 cup diced tomatoes',
            '1 cup shredded cheese',
            'Sour cream and salsa'
          ],
          'steps': [
            'Brown ground beef in a pan',
            'Add taco seasoning and water',
            'Simmer until thickened',
            'Warm taco shells',
            'Fill with beef and toppings',
            'Serve with sour cream and salsa'
          ],
        },
        {
          'name': 'Chicken Parmesan',
          'desc': 'Breaded chicken with marinara and melted cheese.',
          'ingredients': [
            '4 chicken breasts',
            '1 cup breadcrumbs',
            '1/2 cup parmesan cheese',
            '2 eggs, beaten',
            '1 cup marinara sauce',
            '1 cup mozzarella cheese',
            '2 tablespoons olive oil',
            'Salt and pepper',
            'Pasta for serving'
          ],
          'steps': [
            'Preheat oven to 400°F',
            'Pound chicken to even thickness',
            'Season with salt and pepper',
            'Dip in eggs, then breadcrumb mixture',
            'Pan-fry until golden',
            'Top with marinara and mozzarella',
            'Bake until cheese melts',
            'Serve over pasta'
          ],
        },
        {
          'name': 'Beef Stew',
          'desc': 'Hearty and comforting beef stew.',
          'ingredients': [
            '2 lbs beef chuck, cubed',
            '2 tablespoons flour',
            '2 tablespoons oil',
            '1 large onion, chopped',
            '3 carrots, chopped',
            '3 potatoes, cubed',
            '4 cups beef broth',
            '1 cup red wine',
            '2 bay leaves',
            'Salt and pepper'
          ],
          'steps': [
            'Coat beef with flour',
            'Brown beef in oil',
            'Add onion and cook until soft',
            'Add vegetables and broth',
            'Add wine and bay leaves',
            'Simmer for 2 hours until tender',
            'Season with salt and pepper',
            'Serve hot'
          ],
        },
        {
          'name': 'Fish and Chips',
          'desc': 'Crispy battered fish with golden fries.',
          'ingredients': [
            '4 white fish fillets',
            '1 cup flour',
            '1 cup beer',
            '4 large potatoes',
            'Vegetable oil for frying',
            'Salt and pepper',
            'Lemon wedges',
            'Tartar sauce'
          ],
          'steps': [
            'Cut potatoes into fries',
            'Soak fries in cold water',
            'Make batter with flour and beer',
            'Heat oil to 350°F',
            'Fry potatoes until golden',
            'Dip fish in batter and fry',
            'Drain on paper towels',
            'Serve with lemon and tartar sauce'
          ],
        },
        {
          'name': 'Kibbeh',
          'desc': 'Lebanese meat and bulgur croquettes.',
          'ingredients': [
            '1 cup fine bulgur',
            '1 lb ground beef or lamb',
            '1 large onion, finely chopped',
            '1/4 cup pine nuts',
            '1 teaspoon allspice',
            '1/2 teaspoon cinnamon',
            'Salt and pepper',
            'Vegetable oil for frying'
          ],
          'steps': [
            'Soak bulgur in water for 30 minutes, drain',
            'Mix bulgur with half the meat and spices',
            'Grind mixture in food processor until smooth',
            'Sauté remaining meat with onion and pine nuts',
            'Form kibbeh shells with bulgur mixture',
            'Fill with meat mixture and seal',
            'Shape into oval croquettes',
            'Fry in hot oil until golden brown'
          ],
        },
        {
          'name': 'Kafta',
          'desc': 'Lebanese spiced meat skewers.',
          'ingredients': [
            '1 lb ground beef or lamb',
            '1 large onion, grated',
            '1/2 cup fresh parsley, chopped',
            '1 teaspoon allspice',
            '1/2 teaspoon cinnamon',
            '1/2 teaspoon black pepper',
            'Salt to taste',
            'Skewers for grilling'
          ],
          'steps': [
            'Mix ground meat with grated onion',
            'Add chopped parsley and spices',
            'Knead mixture well with hands',
            'Form into long sausage shapes',
            'Thread onto skewers',
            'Grill over medium heat',
            'Turn occasionally until cooked through',
            'Serve with rice, salad, or in pita bread'
          ],
        },
        {
          'name': 'Stuffed Grape Leaves (Warak Enab)',
          'desc': 'Grape leaves stuffed with rice and herbs.',
          'ingredients': [
            '1 jar grape leaves, rinsed',
            '1 cup short-grain rice',
            '1/2 lb ground beef or lamb (optional)',
            '1/2 cup fresh parsley, chopped',
            '1/4 cup fresh mint, chopped',
            '1 large onion, finely chopped',
            '1/4 cup olive oil',
            '2 tablespoons lemon juice',
            'Salt and pepper',
            'Water or broth for cooking'
          ],
          'steps': [
            'Rinse grape leaves and pat dry',
            'Mix rice with meat, herbs, and onion',
            'Season with salt, pepper, and spices',
            'Place a leaf shiny side down',
            'Add a spoonful of filling',
            'Fold sides and roll tightly',
            'Arrange in pot, seam side down',
            'Add water or broth and lemon juice',
            'Simmer for 45-60 minutes until tender',
            'Serve warm or cold'
          ],
        },
        {
          'name': 'Mujaddara',
          'desc': 'Lentils and rice with caramelized onions.',
          'ingredients': [
            '1 cup brown lentils',
            '1 cup basmati rice',
            '3 large onions, sliced',
            '1/4 cup olive oil',
            '1 teaspoon cumin',
            '1/2 teaspoon allspice',
            'Salt and pepper',
            'Plain yogurt for serving'
          ],
          'steps': [
            'Cook lentils until tender but not mushy',
            'Rinse rice and set aside',
            'Caramelize onions in olive oil until golden',
            'Remove half the onions for garnish',
            'Add rice to remaining onions',
            'Add cooked lentils and spices',
            'Add water and bring to boil',
            'Simmer covered for 20 minutes',
            'Let rest for 10 minutes',
            'Serve topped with caramelized onions and yogurt'
          ],
        },
        {
          'name': 'Sayadieh',
          'desc': 'Lebanese fish and rice dish.',
          'ingredients': [
            '2 lbs white fish fillets',
            '2 cups basmati rice',
            '2 large onions, sliced',
            '1/4 cup olive oil',
            '1/2 cup slivered almonds',
            '1 teaspoon turmeric',
            '1/2 teaspoon cinnamon',
            '4 cups fish stock',
            'Salt and pepper',
            'Lemon wedges'
          ],
          'steps': [
            'Season fish with salt and pepper',
            'Fry fish until golden, set aside',
            'Caramelize onions in olive oil',
            'Add rice and toast for 2 minutes',
            'Add turmeric, cinnamon, and stock',
            'Simmer until rice is cooked',
            'Toast almonds until golden',
            'Serve rice topped with fish',
            'Garnish with almonds and lemon'
          ],
        },
        {
          'name': 'Fattet Hummus',
          'desc': 'Layered dish with chickpeas, bread, and yogurt.',
          'ingredients': [
            '2 cups cooked chickpeas',
            '2 pita breads, toasted',
            '2 cups plain yogurt',
            '2 cloves garlic, minced',
            '1/4 cup tahini',
            '2 tablespoons lemon juice',
            '1/4 cup pine nuts',
            '2 tablespoons butter',
            'Paprika and parsley'
          ],
          'steps': [
            'Break toasted pita into pieces',
            'Layer pita in serving dish',
            'Top with warm chickpeas',
            'Mix yogurt with garlic and tahini',
            'Pour yogurt mixture over chickpeas',
            'Toast pine nuts in butter',
            'Garnish with pine nuts, paprika, and parsley',
            'Serve immediately'
          ],
        },
        {
          'name': 'Shish Tawook',
          'desc': 'Marinated chicken skewers.',
          'ingredients': [
            '2 lbs chicken breast, cubed',
            '1/2 cup plain yogurt',
            '1/4 cup lemon juice',
            '4 cloves garlic, minced',
            '2 tablespoons olive oil',
            '1 teaspoon paprika',
            '1/2 teaspoon turmeric',
            'Salt and pepper',
            'Skewers'
          ],
          'steps': [
            'Mix yogurt, lemon juice, and spices',
            'Marinate chicken for 4 hours',
            'Thread chicken onto skewers',
            'Grill over medium heat',
            'Turn occasionally until cooked',
            'Serve with garlic sauce and rice',
            'Garnish with parsley'
          ],
        },
      ],
      'Snacks': [
        {
          'name': 'Fruit Salad',
          'desc': 'Refreshing and healthy snack.',
          'ingredients': [
            '1 apple, diced',
            '1 banana, sliced',
            '1 orange, segmented',
            '1 cup grapes, halved',
            '1/2 cup strawberries',
            '1 tablespoon honey',
            '1 tablespoon lemon juice'
          ],
          'steps': [
            'Chop all fruits into bite-sized pieces',
            'Mix fruits in a large bowl',
            'Drizzle with honey and lemon juice',
            'Toss gently to combine',
            'Chill for 30 minutes before serving'
          ],
        },
        {
          'name': 'Guacamole',
          'desc': 'Creamy and flavorful dip.',
          'ingredients': [
            '3 ripe avocados',
            '1/2 lime, juiced',
            '1/4 cup red onion, diced',
            '1 tomato, diced',
            '1 jalapeño, minced',
            '2 tablespoons cilantro',
            'Salt to taste'
          ],
          'steps': [
            'Mash avocados in a bowl',
            'Add lime juice immediately',
            'Mix in onion, tomato, and jalapeño',
            'Stir in cilantro and salt',
            'Serve with tortilla chips'
          ],
        },
        {
          'name': 'Trail Mix',
          'desc': 'Energy-boosting snack mix.',
          'ingredients': [
            '1 cup almonds',
            '1/2 cup cashews',
            '1/2 cup dried cranberries',
            '1/2 cup chocolate chips',
            '1/4 cup pumpkin seeds'
          ],
          'steps': [
            'Combine all ingredients in a bowl',
            'Mix well',
            'Store in an airtight container',
            'Enjoy as a healthy snack'
          ],
        },
        {
          'name': 'Hummus',
          'desc': 'Smooth and creamy chickpea dip.',
          'ingredients': [
            '1 can chickpeas, drained',
            '2 tablespoons tahini',
            '2 cloves garlic',
            '3 tablespoons lemon juice',
            '2 tablespoons olive oil',
            'Salt and cumin',
            'Paprika for garnish'
          ],
          'steps': [
            'Blend chickpeas in a food processor',
            'Add tahini, garlic, and lemon juice',
            'Blend until smooth',
            'Drizzle in olive oil while blending',
            'Season with salt and cumin',
            'Garnish with paprika and serve'
          ],
        },
        {
          'name': 'Nachos',
          'desc': 'Loaded nachos with cheese and toppings.',
          'ingredients': [
            '1 bag tortilla chips',
            '2 cups shredded cheese',
            '1/2 cup black beans',
            '1/2 cup diced tomatoes',
            '1/4 cup jalapeños',
            '1/4 cup sour cream',
            '1/4 cup salsa',
            'Fresh cilantro'
          ],
          'steps': [
            'Preheat oven to 350°F',
            'Spread chips on baking sheet',
            'Top with cheese and beans',
            'Bake until cheese melts',
            'Add tomatoes and jalapeños',
            'Drizzle with sour cream and salsa',
            'Garnish with cilantro',
            'Serve immediately'
          ],
        },
        {
          'name': 'Stuffed Mushrooms',
          'desc': 'Bite-sized mushrooms filled with savory stuffing.',
          'ingredients': [
            '20 large mushrooms',
            '1/2 cup breadcrumbs',
            '1/4 cup parmesan cheese',
            '2 cloves garlic, minced',
            '2 tablespoons parsley',
            '2 tablespoons olive oil',
            'Salt and pepper'
          ],
          'steps': [
            'Preheat oven to 375°F',
            'Remove mushroom stems',
            'Chop stems and mix with breadcrumbs',
            'Add cheese, garlic, and parsley',
            'Stuff mixture into caps',
            'Drizzle with olive oil',
            'Bake for 20 minutes',
            'Serve warm'
          ],
        },
        {
          'name': 'Baba Ganoush',
          'desc': 'Smoky eggplant dip with tahini.',
          'ingredients': [
            '2 large eggplants',
            '1/4 cup tahini',
            '3 tablespoons lemon juice',
            '2 cloves garlic, minced',
            '2 tablespoons olive oil',
            '1/4 cup fresh parsley, chopped',
            'Salt to taste',
            'Pomegranate seeds for garnish (optional)'
          ],
          'steps': [
            'Roast eggplants over open flame or in oven',
            'Cook until skin is charred and flesh is soft',
            'Let cool, then peel off skin',
            'Mash eggplant flesh with fork',
            'Mix in tahini, lemon juice, and garlic',
            'Stir in olive oil gradually',
            'Season with salt',
            'Garnish with parsley and pomegranate seeds',
            'Serve with pita bread'
          ],
        },
        {
          'name': 'Falafel',
          'desc': 'Crispy fried chickpea fritters.',
          'ingredients': [
            '2 cups dried chickpeas, soaked overnight',
            '1 large onion, chopped',
            '4 cloves garlic',
            '1/2 cup fresh parsley',
            '1/2 cup fresh cilantro',
            '1 teaspoon cumin',
            '1 teaspoon coriander',
            '1/2 teaspoon baking soda',
            'Salt and pepper',
            'Vegetable oil for frying'
          ],
          'steps': [
            'Drain soaked chickpeas completely',
            'Blend chickpeas in food processor',
            'Add onion, garlic, and herbs',
            'Pulse until mixture is coarse, not smooth',
            'Add spices, salt, and baking soda',
            'Form into small patties or balls',
            'Heat oil to 350°F',
            'Fry falafel until golden brown and crispy'
          ],
        },
      ],
      'Desserts': [
        {
          'name': 'Chocolate Mug Cake',
          'desc': 'Quick dessert in a mug.',
          'ingredients': [
            '4 tablespoons flour',
            '3 tablespoons sugar',
            '2 tablespoons cocoa powder',
            '1/4 teaspoon baking powder',
            '3 tablespoons milk',
            '2 tablespoons oil',
            '1/4 teaspoon vanilla'
          ],
          'steps': [
            'Mix dry ingredients in a mug',
            'Add milk, oil, and vanilla',
            'Stir until smooth',
            'Microwave for 1-2 minutes',
            'Let cool slightly and enjoy'
          ],
        },
        {
          'name': 'Chocolate Chip Cookies',
          'desc': 'Classic homemade cookies.',
          'ingredients': [
            '2 1/4 cups flour',
            '1 cup butter, softened',
            '3/4 cup brown sugar',
            '3/4 cup white sugar',
            '2 large eggs',
            '2 cups chocolate chips',
            '1 teaspoon vanilla',
            '1 teaspoon baking soda'
          ],
          'steps': [
            'Preheat oven to 375°F',
            'Cream butter and sugars',
            'Beat in eggs and vanilla',
            'Mix in flour and baking soda',
            'Stir in chocolate chips',
            'Drop onto baking sheet',
            'Bake for 9-11 minutes'
          ],
        },
        {
          'name': 'Ice Cream Sundae',
          'desc': 'Simple and delicious treat.',
          'ingredients': [
            '2 scoops vanilla ice cream',
            '2 tablespoons chocolate sauce',
            'Whipped cream',
            'Cherry for topping',
            'Nuts (optional)'
          ],
          'steps': [
            'Scoop ice cream into a bowl',
            'Drizzle with chocolate sauce',
            'Add whipped cream',
            'Top with cherry and nuts',
            'Serve immediately'
          ],
        },
        {
          'name': 'Apple Crisp',
          'desc': 'Warm and comforting dessert.',
          'ingredients': [
            '4 apples, sliced',
            '1/2 cup flour',
            '1/2 cup brown sugar',
            '1/2 cup oats',
            '1/3 cup butter',
            '1 teaspoon cinnamon'
          ],
          'steps': [
            'Preheat oven to 375°F',
            'Place apples in a baking dish',
            'Mix flour, sugar, oats, and cinnamon',
            'Cut in butter until crumbly',
            'Sprinkle over apples',
            'Bake for 30 minutes until golden'
          ],
        },
        {
          'name': 'Brownies',
          'desc': 'Rich and fudgy chocolate brownies.',
          'ingredients': [
            '1/2 cup butter, melted',
            '1 cup sugar',
            '2 large eggs',
            '1 teaspoon vanilla',
            '1/3 cup cocoa powder',
            '1/2 cup flour',
            '1/4 teaspoon salt',
            '1/4 teaspoon baking powder',
            '1/2 cup chocolate chips'
          ],
          'steps': [
            'Preheat oven to 350°F',
            'Mix melted butter and sugar',
            'Beat in eggs and vanilla',
            'Stir in cocoa, flour, salt, and baking powder',
            'Fold in chocolate chips',
            'Pour into greased pan',
            'Bake for 25-30 minutes',
            'Cool before cutting'
          ],
        },
        {
          'name': 'Cheesecake',
          'desc': 'Creamy and smooth classic cheesecake.',
          'ingredients': [
            '1 1/2 cups graham cracker crumbs',
            '1/3 cup butter, melted',
            '3 packages cream cheese',
            '1 cup sugar',
            '3 large eggs',
            '1 teaspoon vanilla',
            '1 cup sour cream'
          ],
          'steps': [
            'Preheat oven to 325°F',
            'Mix crumbs and butter for crust',
            'Press into springform pan',
            'Beat cream cheese and sugar',
            'Add eggs one at a time',
            'Stir in vanilla and sour cream',
            'Pour over crust',
            'Bake for 50-60 minutes',
            'Cool completely before serving'
          ],
        },
        {
          'name': 'Tiramisu',
          'desc': 'Italian coffee-flavored dessert.',
          'ingredients': [
            '1 cup strong coffee, cooled',
            '2 tablespoons coffee liqueur',
            '24 ladyfinger cookies',
            '1 cup mascarpone cheese',
            '1/2 cup heavy cream',
            '1/4 cup sugar',
            'Cocoa powder for dusting'
          ],
          'steps': [
            'Mix coffee and liqueur',
            'Dip ladyfingers in coffee mixture',
            'Layer in dish',
            'Beat mascarpone, cream, and sugar',
            'Spread over ladyfingers',
            'Repeat layers',
            'Dust with cocoa powder',
            'Chill for 4 hours'
          ],
        },
      ],
      'Healthy': [
        {
          'name': 'Avocado Toast',
          'desc': 'Nutritious and trendy.',
          'ingredients': [
            '2 slices whole grain bread',
            '1 ripe avocado',
            '1/2 lemon, juiced',
            'Salt and pepper',
            'Red pepper flakes',
            'Optional: poached egg'
          ],
          'steps': [
            'Toast bread until golden',
            'Mash avocado with lemon juice',
            'Season with salt and pepper',
            'Spread on toast',
            'Sprinkle with red pepper flakes',
            'Top with poached egg if desired'
          ],
        },
        {
          'name': 'Quinoa Bowl',
          'desc': 'Protein-packed and nutritious.',
          'ingredients': [
            '1 cup cooked quinoa',
            '1/2 cup black beans',
            '1/2 cup corn',
            '1/4 cup red bell pepper',
            '2 tablespoons olive oil',
            'Lime juice',
            'Cilantro',
            'Salt and pepper'
          ],
          'steps': [
            'Cook quinoa according to package',
            'Mix quinoa with beans and corn',
            'Add diced bell pepper',
            'Drizzle with olive oil and lime',
            'Season and garnish with cilantro',
            'Serve warm or cold'
          ],
        },
        {
          'name': 'Greek Salad',
          'desc': 'Fresh Mediterranean flavors.',
          'ingredients': [
            '2 cups mixed greens',
            '1/2 cup cucumber, diced',
            '1/2 cup tomatoes, diced',
            '1/4 cup red onion',
            '1/4 cup feta cheese',
            'Kalamata olives',
            'Greek dressing'
          ],
          'steps': [
            'Combine greens in a large bowl',
            'Add cucumber, tomatoes, and onion',
            'Top with feta and olives',
            'Drizzle with dressing',
            'Toss gently and serve'
          ],
        },
        {
          'name': 'Smoothie Bowl',
          'desc': 'Colorful and nutritious breakfast bowl.',
          'ingredients': [
            '1 frozen banana',
            '1/2 cup frozen berries',
            '1/2 cup yogurt',
            '1/4 cup milk',
            'Granola',
            'Fresh berries for topping',
            'Honey'
          ],
          'steps': [
            'Blend banana, berries, yogurt, and milk',
            'Pour into a bowl',
            'Top with granola and fresh berries',
            'Drizzle with honey',
            'Enjoy immediately'
          ],
        },
        {
          'name': 'Buddha Bowl',
          'desc': 'Colorful and nutritious grain bowl.',
          'ingredients': [
            '1 cup cooked quinoa',
            '1/2 cup chickpeas, roasted',
            '1 cup mixed vegetables',
            '1/4 cup tahini dressing',
            '1/4 avocado, sliced',
            '2 tablespoons seeds',
            'Fresh herbs'
          ],
          'steps': [
            'Cook quinoa according to package',
            'Roast chickpeas until crispy',
            'Steam or roast vegetables',
            'Arrange quinoa in bowl',
            'Add vegetables and chickpeas',
            'Top with avocado and seeds',
            'Drizzle with tahini dressing',
            'Garnish with herbs'
          ],
        },
        {
          'name': 'Zucchini Noodles',
          'desc': 'Light and healthy pasta alternative.',
          'ingredients': [
            '3 large zucchinis',
            '2 tablespoons olive oil',
            '2 cloves garlic, minced',
            '1 cup cherry tomatoes',
            '1/4 cup parmesan cheese',
            'Fresh basil',
            'Salt and pepper'
          ],
          'steps': [
            'Spiralize zucchinis into noodles',
            'Heat oil in a large pan',
            'Add garlic and cook 1 minute',
            'Add tomatoes and cook until soft',
            'Add zucchini noodles',
            'Toss for 2-3 minutes',
            'Season with salt and pepper',
            'Top with parmesan and basil'
          ],
        },
        {
          'name': 'Tabbouleh',
          'desc': 'Fresh parsley salad with bulgur, tomatoes, and mint.',
          'ingredients': [
            '1 cup fine bulgur',
            '2 bunches fresh parsley, chopped',
            '1/2 cup fresh mint, chopped',
            '4 tomatoes, diced',
            '1/2 cup green onions, chopped',
            '1/4 cup olive oil',
            '1/4 cup lemon juice',
            'Salt and pepper to taste'
          ],
          'steps': [
            'Soak bulgur in warm water for 30 minutes, then drain',
            'Chop parsley and mint very finely',
            'Dice tomatoes and chop green onions',
            'Mix bulgur with vegetables in a large bowl',
            'Whisk olive oil and lemon juice together',
            'Pour dressing over salad and mix well',
            'Season with salt and pepper',
            'Chill for at least 1 hour before serving'
          ],
        },
        {
          'name': 'Fattoush',
          'desc': 'Lebanese bread salad with fresh vegetables and sumac.',
          'ingredients': [
            '2 pita breads, toasted and broken into pieces',
            '2 cups mixed greens',
            '2 tomatoes, diced',
            '1 cucumber, diced',
            '1/2 cup radishes, sliced',
            '1/4 cup fresh mint, chopped',
            '1/4 cup fresh parsley, chopped',
            '1/4 cup olive oil',
            '2 tablespoons lemon juice',
            '1 teaspoon sumac',
            'Salt and pepper'
          ],
          'steps': [
            'Toast pita bread until crispy, break into pieces',
            'Wash and chop all vegetables',
            'Mix greens, tomatoes, cucumber, and radishes',
            'Add fresh herbs and pita pieces',
            'Whisk olive oil, lemon juice, and sumac',
            'Toss salad with dressing',
            'Season with salt and pepper',
            'Serve immediately'
          ],
        },
      ],
      'Drinks': [
        {
          'name': 'Smoothie',
          'desc': 'Fruity and energizing.',
          'ingredients': [
            '1 banana',
            '1 cup mixed berries',
            '1/2 cup yogurt',
            '1/2 cup milk',
            '1 tablespoon honey',
            'Ice cubes'
          ],
          'steps': [
            'Add all ingredients to a blender',
            'Blend until smooth',
            'Add more milk if too thick',
            'Pour into a glass',
            'Serve immediately'
          ],
        },
        {
          'name': 'Lemonade',
          'desc': 'Refreshing and classic drink.',
          'ingredients': [
            '1 cup fresh lemon juice',
            '1/2 cup sugar',
            '4 cups water',
            'Ice cubes',
            'Lemon slices for garnish'
          ],
          'steps': [
            'Dissolve sugar in warm water',
            'Add lemon juice',
            'Stir well and chill',
            'Serve over ice',
            'Garnish with lemon slices'
          ],
        },
        {
          'name': 'Iced Coffee',
          'desc': 'Cool and caffeinated beverage.',
          'ingredients': [
            '1 cup strong coffee, cooled',
            '1/2 cup milk',
            '2 tablespoons sugar',
            'Ice cubes',
            'Whipped cream (optional)'
          ],
          'steps': [
            'Brew coffee and let cool',
            'Fill glass with ice',
            'Pour coffee over ice',
            'Add milk and sugar',
            'Stir and top with whipped cream'
          ],
        },
        {
          'name': 'Green Tea',
          'desc': 'Antioxidant-rich healthy drink.',
          'ingredients': [
            '1 green tea bag',
            '1 cup hot water',
            'Honey to taste',
            'Lemon slice (optional)'
          ],
          'steps': [
            'Heat water to 175°F',
            'Steep tea bag for 2-3 minutes',
            'Remove tea bag',
            'Add honey to taste',
            'Garnish with lemon if desired'
          ],
        },
        {
          'name': 'Mango Lassi',
          'desc': 'Creamy and refreshing Indian yogurt drink.',
          'ingredients': [
            '1 cup mango, chopped',
            '1 cup plain yogurt',
            '1/2 cup milk',
            '2 tablespoons honey',
            '1/4 teaspoon cardamom',
            'Ice cubes'
          ],
          'steps': [
            'Blend mango until smooth',
            'Add yogurt and milk',
            'Blend until creamy',
            'Add honey and cardamom',
            'Blend with ice cubes',
            'Pour into glasses',
            'Serve chilled'
          ],
        },
        {
          'name': 'Fresh Orange Juice',
          'desc': 'Simple and refreshing fresh-squeezed juice.',
          'ingredients': [
            '6-8 fresh oranges',
            '1 tablespoon sugar (optional)',
            'Ice cubes'
          ],
          'steps': [
            'Cut oranges in half',
            'Squeeze juice using juicer',
            'Strain to remove pulp if desired',
            'Add sugar if needed',
            'Pour over ice',
            'Serve immediately'
          ],
        },
      ],
    };
  }
}
