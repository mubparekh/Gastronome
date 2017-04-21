# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

chocolate_mousse = Recipe.create(
  name: 'Chocolate Mousse',
  description: 'This is Chocolate Mousse',
  cuisine_type: 'French',
  serving_size: 4,
  cooking_time: '2 hours',
  directions: 'Cut the chocolate into pieces. Place chocolate chips in a large bowl. Heat the milk and cream in a saucepan just until boiling. Remove from heat and keep you. Cut the butter into small pieces. Separate the eggs. Beat the egg whites very stiff with salt and sugar. In the last seconds before turning off the mixer, add the egg yolks. Add the milk and cream mixture to chocolate. Mix well until the chocolate melts. I recommend using a foué to stir the mixture until the temperature about 40 degrees, slightly warmer than its lip. Add butter and continue mixing until melted. Add a little of the chocolate mixture to eggs. Mix gently with a spatula silicon. Then add the egg mixture once the chocolate mixture, incorporating everything with gentle movements that do not lose the clear air. Mix just until uniform with a mousse. Transfer mixture to bowl in which you want to serve. Cover with plastic wrap and refrigerate for at least 2 hours before serving. It is recommended that one should serve the mousse within 24 hours because of the eggs. I think it will have no problem, because there will be nothing left! Source: http://www.opensourcefood.com/people/janedeere/recipes/chocolate-mousse',
  )

Ingredient.create(name: 'chocolate', amount: '340g', recipe: chocolate_mousse)
Ingredient.create(name: 'whole milk', amount: '40ml', recipe: chocolate_mousse)
Ingredient.create(name: 'whipping cream', amount: '200ml', recipe: chocolate_mousse)
Ingredient.create(name: 'unsalted butter', amount: '40g', recipe: chocolate_mousse)
Ingredient.create(name: 'eggs', amount: '6', recipe: chocolate_mousse)
Ingredient.create(name: 'sugar', amount: '30g', recipe: chocolate_mousse)

Response.create(comment: 'Yummy!', rating: 5, recipe: chocolate_mousse)
Response.create(comment: 'Bleh...', rating: 1, recipe: chocolate_mousse)


asparagus = Recipe.create(
  name: 'Grilled Asparagus',
  description: 'This is Asparagus, grilled.',
  cuisine_type: 'American',
  serving_size: 4,
  cooking_time: '15 minutes',
  directions: 'Preheat gas or charcoal grill to around 400 degrees. Trim asparagus of woody ends and toss with oil, garlic and seasonings.  Place asaragus on hot grill and grill for about 3 to 5 minutes on each side.  Use large tongs to carefully turn asparagus over. * One way to grill asparagus easily is to use skewers.  Lay several spears of seasoned asparagus on a flat surface and thread skewer through spears.  One skewer near the top portion and one skewer near the bottom.  This makes for easier flipping. You may also roast the asparagus in the oven:  Place seasoned asparagus on a large baking sheet and bake in a 400 degree oven for about 20 minutes. Halfway through, toss asparagus around lightly to prevent burning. Serve warm. Source: http://www.opensourcefood.com/people/janedeere/recipes/grilled-asparagus',
)

Ingredient.create(name: 'fresh asparagus', amount: '2 bunches', recipe: asparagus)
Ingredient.create(name: 'olive oil', amount: '1/4 cup', recipe: asparagus)
Ingredient.create(name: 'fresh garlic, minced', amount: '1 clove', recipe: asparagus)
Ingredient.create(name: 'balsamic vinegar', amount: '1 tablespoon', recipe: asparagus)

Response.create(comment: 'Easy.', rating: 5, recipe: asparagus)
Response.create(comment: 'Okay.', rating: 3, recipe: asparagus)

sesame_chicken = Recipe.create(
  name: 'Sesame Chicken',
  description: 'This is the popular chinese food Sesame Chicken',
  cuisine_type: 'Asian',
  serving_size: 4,
  cooking_time: '1 hour',
  directions: 'Wash the chicken under cold running water, pat dry and trim off any excess fat. Cut the chicken into 1-inch cubes and put into a large mixing bowl. Add the marinade ingredients to the bowl and stir to combine. Set aside to marinate while you prepare the sauce. 
				To make the sauce: In a saucepan, add the sesame oil and set over low heat. Add the ginger and garlic and fry gently until fragrant, about 2 to 3 minutes. Meanwhile, combine the remaining sauce ingredients in a mixing bowl and stir well to dissolve the cornstarch. Gently pour into the saucepan with the fried ginger and garlic. Stir as you pour because the cornstarch will thicken up pretty quickly. Keep warm over low heat.
				In a heavy-bottomed pot or deep-fryer heat enough oil to come halfway up the sides of the pot, to 375 degrees F.
				Fry the chicken, in small batches, until golden and crispy, about 5 to 6 minutes. Remove the chicken using a wire mesh strainer and drain on paper towels. Season with a little salt, to taste. To serve, arrange the fried chicken on a platter and pour drizzle with the sauce. Sprinkle with a generous amount of toasted sesame seeds and garnish with scallions and cilantro sprigs
				Read more at: http://www.foodnetwork.com/recipes/tyler-florence/sesame-chicken-recipe.html?oc=linkback',
)

Ingredient.create(name: 'soy sauce', amount: '6 tablespoons', recipe: sesame_chicken)
Ingredient.create(name: 'sesame seed oil', amount: '2 teaspoons', recipe: sesame_chicken)
Ingredient.create(name: 'salt', amount: '1 teaspoon', recipe: sesame_chicken)
Ingredient.create(name: 'flour', amount: '4 tablespoon', recipe: sesame_chicken)
Ingredient.create(name: 'cornstarch', amount: '4 tablespoon', recipe: sesame_chicken)
Ingredient.create(name: 'water', amount: '4 tablespoon', recipe: sesame_chicken)
Ingredient.create(name: 'baking powder', amount: '1 teaspoon', recipe: sesame_chicken)
Ingredient.create(name: 'boneless chicken breasts', amount: '1 1/2 lb.', recipe: sesame_chicken)

Response.create(comment: 'Easy.', rating: 8, recipe: sesame_chicken)
Response.create(comment: 'Amazing!', rating: 9, recipe: sesame_chicken)

roasted_cauliflower = Recipe.create(
  name: 'Roasted Cauliflower',
  description: 'This is cauliflower, roasted',
  cuisine_type: 'Italian',
  serving_size: 4,
  cooking_time: '40 minutes',
  directions: 'Position racks in the upper and lower thirds of the oven and preheat to 475 degrees F. Toss the cauliflower florets with 1 tablespoon olive oil on a baking sheet. Spread in a single layer and season with salt and pepper. Roast on the upper oven rack, 5 minutes. Add the almonds and roast until the cauliflower is tender, about 15 more minutes.
				Meanwhile, heat the remaining 2 tablespoons olive oil in a Dutch oven over high heat. Add the onion and cauliflower stems and cook, stirring, until the onion is translucent, about 3 minutes. Add the rice and garlic and cook, stirring, 2 minutes. Add the wine and cook, stirring, until evaporated, 1 to 2 minutes. Add the broth, 2 cups water and 1 teaspoon salt; cover and bring to a boil. Transfer the pot to the lower oven rack and bake until the rice is tender, about 15 minutes.
				Remove the rice from the oven and add the butter, fontina and parsley, stirring vigorously until the risotto is creamy, 1 to 2 minutes. Divide among bowls and top with the roasted cauliflower and almonds
				Read more at: http://www.foodnetwork.com/recipes/food-network-kitchens/roasted-cauliflower-risotto-recipe.html?oc=linkback,'
)

Ingredient.create(name: 'cauliflower', amount: '1 head', recipe: roasted_cauliflower)
Ingredient.create(name: 'salt', amount: '1 teaspoon', recipe: roasted_cauliflower)
Ingredient.create(name: 'extra-virgin olive oil', amount: '3 tablespoons', recipe: roasted_cauliflower)
Ingredient.create(name: 'sliced almonds', amount: '1/4 cup', recipe: roasted_cauliflower)
Ingredient.create(name: 'short-grain Italian rice', amount: '1 1/2 cups', recipe: roasted_cauliflower)
Ingredient.create(name: 'medium onnion', amount: '1/2 finely chopped', recipe: roasted_cauliflower)
Ingredient.create(name: 'garlic', amount: '1 clove', recipe: roasted_cauliflower)
Ingredient.create(name: 'dry white wine', amount: '1/2 cup', recipe: roasted_cauliflower)
Ingredient.create(name: 'chicken broth', amount: '3 cups', recipe: roasted_cauliflower)
Ingredient.create(name: 'unsalted butter', amount: '2 tablespoons', recipe: roasted_cauliflower)
Ingredient.create(name: 'italian fonita cheese, grated', amount: '4 ounces', recipe: roasted_cauliflower)
Ingredient.create(name: 'fresh parsley, chopped', amount: '1/2 cup', recipe: roasted_cauliflower)

Response.create(comment: 'Easy.', rating: 8, recipe: roasted_cauliflower)
Response.create(comment: 'Amazing!', rating: 9, recipe: roasted_cauliflower)

fried_rice = Recipe.create(
  name: 'Fried Rice',
  description: 'A quick fried rice like you get at your favorite Chinese restaurant.',
  cuisine_type: 'Chinese',
  serving_size: 4,
  cooking_time: '30 minutes',
  directions: 'In a saucepan, combine rice and water. Bring to a boil. Reduce heat, cover, and simmer for 20 minutes. In a small saucepan, boil carrots in water about 3 to 5 minutes. Drop peas into boiling water, and drain. Heat wok over high heat. Pour in oil, then stir in carrots and peas; cook about 30 seconds. Crack in eggs, stirring quickly to scramble eggs with vegetables. Stir in cooked rice. Shake in soy sauce, and toss rice to coat. Drizzle with sesame oil, and toss again. Source: http://allrecipes.com/Recipe/Fried-Rice-Restaurant-Style/?prop24=hn_slide2_Fried-Rice,-Restaurant-Style&evt19=1',
)

Ingredient.create(name: 'brown rice', amount: '2 cups', recipe: fried_rice)
Ingredient.create(name: 'vegetable oil', amount: '2 tablespoons', recipe: fried_rice)
Ingredient.create(name: 'eggs', amount: '2', recipe: fried_rice)
Ingredient.create(name: 'baby carrots', amount: '2/3 cup', recipe: fried_rice)
Ingredient.create(name: 'soy sauce', amount: '2 tablespoons', recipe: fried_rice)
Ingredient.create(name: 'green peas', amount: '1/2 cup', recipe: fried_rice)
Ingredient.create(name: 'sesame oil', amount: '1 tablespoon', recipe: fried_rice)

Response.create(comment: 'Yummy!', rating: 7, recipe: fried_rice)
Response.create(comment: 'Bleh...', rating: 1, recipe: fried_rice)

yakisoba_chicken = Recipe.create(
  name: 'Yakisoba Chicken',
  description: 'Japanese buckwheat flour noodles with chicken at their best!',
  cuisine_type: 'Japanese',
  serving_size: 4,
  cooking_time: '15 minutes',
  directions: 'In a large skillet combine sesame oil, canola oil and chili paste; stir-fry 30 seconds. Add garlic and stir fry an additional 30 seconds. Add chicken and 1/4 cup of the soy sauce and stir fry until chicken is no longer pink, about 5 minutes. Remove mixture from pan, set aside, and keep warm. In the emptied pan combine the onion, cabbage, and carrots. Stir-fry until cabbage begins to wilt, 2 to 3 minutes. Stir in the remaining soy sauce, cooked noodles, and the chicken mixture to pan and mix to blend. Serve and enjoy! Source: http://allrecipes.com/Recipe/Yakisoba-Chicken',
)

Ingredient.create(name: 'sesame oil', amount: '1/2 tablespoon', recipe: yakisoba_chicken)
Ingredient.create(name: 'canola oil', amount: '1 tablespoon', recipe: yakisoba_chicken)
Ingredient.create(name: 'chile paste', amount: '2 tablespoons', recipe: yakisoba_chicken)
Ingredient.create(name: 'garlic', amount: '2 cloves', recipe: yakisoba_chicken)
Ingredient.create(name: 'boneless chicken breast', amount: '4', recipe: yakisoba_chicken)
Ingredient.create(name: 'soy sauce', amount: '1/4 cup', recipe: yakisoba_chicken)
Ingredient.create(name: 'onion', amount: '1', recipe: yakisoba_chicken)
Ingredient.create(name: 'cabbage', amount: '1/2', recipe: yakisoba_chicken)
Ingredient.create(name: 'carrots', amount: '2', recipe: yakisoba_chicken)
Ingredient.create(name: 'soba noodles', amount: '8 ounce', recipe: yakisoba_chicken)

Response.create(comment: 'Yummy!', rating: 5, recipe: yakisoba_chicken)
Response.create(comment: 'Bleh...', rating: 1, recipe: yakisoba_chicken)


greek_quinoa = Recipe.create(
  name: 'Greek Quinoa',
  description: 'Great to bring a greek side dish to a BBQ or as lunch for the week. Easy to make in advance.',
  cuisine_type: 'Greek',
  serving_size: 4,
  cooking_time: '15 minutes',
  directions: 'Bring water and quinoa to a boil in a saucepan. Reduce heat to medium-low, cover, and simmer until quinoa is tender and water has been absorbed, 15 to 20 minutes. Transfer quinoa to a large serving bowl and let cool completely. Drizzle olive oil over cooled quinoa and stir. Fold olives, feta cheese, tomatoes, and basil through the quinoa. Source: http://allrecipes.com/Recipe/Greek-Quinoa',
)

Ingredient.create(name: 'water', amount: '2 cups', recipe: greek_quinoa)
Ingredient.create(name: 'quinoa', amount: '1 cup', recipe: greek_quinoa)
Ingredient.create(name: 'olive oil', amount: '1/2 cup', recipe: greek_quinoa)
Ingredient.create(name: 'Kalamata olives', amount: '1/3 cup', recipe: greek_quinoa)
Ingredient.create(name: 'feta cheese', amount: '1/3 cup', recipe: greek_quinoa)
Ingredient.create(name: 'cherry tomatoes', amount: '1/3 cup', recipe: greek_quinoa)
Ingredient.create(name: 'basil leaves', amount: '2 tablespoons', recipe: greek_quinoa)

Response.create(comment: 'Amazing!', rating: 8, recipe: greek_quinoa)
Response.create(comment: 'Good.', rating: 5, recipe: greek_quinoa)


chicken_tikka_masala = Recipe.create(
  name: 'Chicken Tikka Masala',
  description: 'This is an easy Indian recipe- Chicken marinated in yogurt and spices served in a tomato cream sauce',
  cuisine_type: 'Indian',
  serving_size: 4,
  cooking_time: '2 hours 20 minutes',
  directions: 'In a large bowl, combine yogurt, lemon juice, 2 teaspoons cumin, cinnamon, cayenne, black pepper, ginger, and 4 teaspoons salt. Stir in chicken, cover, and refrigerate for 1 hour. Preheat a grill for high heat. Lightly oil the grill grate. Thread chicken onto skewers, and discard marinade. Grill until juices run clear, about 5 minutes on each side.
		Melt butter in a large heavy skillet over medium heat. Saute garlic and jalapeno for 1 minute. Season with 2 teaspoons cumin, paprika, and 3 teaspoons salt. Stir in tomato sauce and cream. Simmer on low heat until sauce thickens, about 20 minutes. Add grilled chicken, and simmer for 10 minutes. Transfer to a serving platter, and garnish with fresh cilantro. Source: http://allrecipes.com/Recipe/Chicken-Tikka-Masala',
)

Ingredient.create(name: 'yogurt', amount: '1 cup', recipe: chicken_tikka_masala)
Ingredient.create(name: 'lemon juice', amount: '1 tablespoon', recipe: chicken_tikka_masala)
Ingredient.create(name: 'ground cumin', amount: '2 teaspoons', recipe: chicken_tikka_masala)
Ingredient.create(name: 'ground cinnamon', amount: '1 teaspoon', recipe: chicken_tikka_masala)
Ingredient.create(name: 'cayenne pepper', amount: '2 teaspoons', recipe: chicken_tikka_masala)
Ingredient.create(name: 'ground black pepper', amount: '2 teaspoons', recipe: chicken_tikka_masala)
Ingredient.create(name: 'ginger', amount: '1 teaspoon', recipe: chicken_tikka_masala)
Ingredient.create(name: 'salt', amount: '2 tablespoons', recipe: chicken_tikka_masala)
Ingredient.create(name: 'chicken breasts', amount: '3', recipe: chicken_tikka_masala)
Ingredient.create(name: 'butter', amount: '1 teaspoon', recipe: chicken_tikka_masala)
Ingredient.create(name: 'garlic', amount: '1 clove', recipe: chicken_tikka_masala)
Ingredient.create(name: 'tomato sauce', amount: '8 ounce', recipe: chicken_tikka_masala)
Ingredient.create(name: 'heavy cream', amount: '1 cup', recipe: chicken_tikka_masala)
Ingredient.create(name: 'cilantro', amount: '1/4 cup', recipe: chicken_tikka_masala)

Response.create(comment: 'Yummy!', rating: 5, recipe: chicken_tikka_masala)
Response.create(comment: 'Bleh...', rating: 1, recipe: chicken_tikka_masala)


kalbi = Recipe.create(
  name: 'Kalbi',
  description: 'This is the staple of Korean fine dining, too expensive in restaurants but simple to make at home',
  cuisine_type: 'Korean',
  serving_size: 4,
  cooking_time: '3 hours 30 minutes',
  directions: 'In a bowl, stir together the soy sauce, brown sugar, water, garlic, green onions, and sesame oil until the sugar has dissolved.
Place the ribs in a large plastic zipper bag. Pour the marinade over the ribs, squeeze out all the air, and refrigerate the bag for 3 hours to overnight.
	       Preheat an outdoor grill for medium-high heat, and lightly oil the grate. Remove the ribs from the bag, shake off the excess marinade, and discard the marinade. Grill the ribs on the preheated grill until the meat is still pink but not bloody nearest the bone, 5 to 7 minutes per side. Source: http://allrecipes.com/Recipe/Kalbi-Korean-BBQ-Short-Ribs',
)

Ingredient.create(name: 'soy sauce', amount: '3/4 cup', recipe: kalbi)
Ingredient.create(name: 'brown sugar', amount: '3/4 cup', recipe: kalbi)
Ingredient.create(name: 'water', amount: '3/4 cup', recipe: kalbi)
Ingredient.create(name: 'garlic', amount: '1 clove', recipe: kalbi)
Ingredient.create(name: 'green onion', amount: '1 cup', recipe: kalbi)
Ingredient.create(name: 'sesame oil', amount: '1 tablespoon', recipe: kalbi)
Ingredient.create(name: 'beef ribs', amount: '2 pounds', recipe: kalbi)

Response.create(comment: 'Yummy!', rating: 5, recipe: kalbi)
Response.create(comment: 'Bleh...', rating: 1, recipe: kalbi)



chicken_enchiladas = Recipe.create(
  name: 'Chicken Enchiladas',
  description: 'This is a easy Mexican recipe serving 4',
  cuisine_type: 'Mexican',
  serving_size: 4,
  cooking_time: '45 minutes',
  directions: 'Preheat oven to 350 degrees F (175 degrees C). Lightly grease a large baking dish.
		In a medium saucepan over medium heat, melt the butter and saute the green onion until tender (about 3 to 4 minutes). Add the garlic powder, then stir in the green chiles, cream of mushroom soup and sour cream. Mix well. Reserve 3/4 of this sauce and set aside. To the remaining 1/4 of the sauce in the saucepan, add the chicken and 1/2 cup of shredded Cheddar cheese. Stir together.
		Fill each flour tortilla with the chicken mixture and roll up. Place seam side down in the prepared baking dish.
In a small bowl combine the reserved 3/4 of the sauce with the milk. Spoon this mixture over the rolled tortillas and top with the remaining 1/2 cup of shredded Cheddar cheese. Bake in the preheated oven for 30 to 35 minutes, or until cheese is bubbly. Source: http://allrecipes.com/recipe/chicken-enchiladas-ii',
)

Ingredient.create(name: 'butter', amount: '1 tablespoon', recipe: chicken_enchiladas)
Ingredient.create(name: 'green onion', amount: '1/2 cup', recipe: chicken_enchiladas)
Ingredient.create(name: 'garlic powder', amount: '1/2 teaspoon', recipe: chicken_enchiladas)
Ingredient.create(name: 'green chiles', amount: '1', recipe: chicken_enchiladas)
Ingredient.create(name: 'mushroom soup', amount: '10.75 ounce', recipe: chicken_enchiladas)
Ingredient.create(name: 'sour cream', amount: '1/2 cup', recipe: chicken_enchiladas)
Ingredient.create(name: 'chicken breast', amount: '1 1/2 cups', recipe: chicken_enchiladas)
Ingredient.create(name: 'Cheddar cheese', amount: '1 cup', recipe: chicken_enchiladas)
Ingredient.create(name: 'tortillas', amount: '6', recipe: chicken_enchiladas)
Ingredient.create(name: 'milk', amount: '1/4 cup', recipe: chicken_enchiladas)

Response.create(comment: 'excellent!', rating: 4, recipe: chicken_enchiladas)
Response.create(comment: 'best enchilada recipe', rating: 5, recipe: chicken_enchiladas)


falafel = Recipe.create(
  name: 'Falafel',
  description: 'Super quick and easy Middle Eastern recipe - you will probably have all the ingredients in your pantry already!',
  cuisine_type: 'Middle Eastern',
  serving_size: 5,
  cooking_time: '30 minutes',
  directions: 'Place garbanzo beans, 1/4 cup panko bread crumbs, onion, 1/4 cup olive oil, egg, parsley, curry powder, garlic powder, lemon juice, and black pepper in a food processor or blender. Puree until coarse crumbles form. Blend more panko crumbs into mixture if it is too moist. Roll mixture into balls about the size of a golf ball; place on a plate. Press into patties and coat in panko bread crumbs. Heat about 1-inch olive oil in a skillet over medium heat. Pan-fry patties until crispy, about 3 minutes on each side. Source: http://allrecipes.com/Recipe/Easiest-Falafel',
)

Ingredient.create(name: 'garbanzo ', amount: '16 ounce', recipe: falafel)
Ingredient.create(name: 'bread crumbs', amount: '1/4 cup', recipe: falafel)
Ingredient.create(name: 'onion', amount: '1/4 cup', recipe: falafel)
Ingredient.create(name: 'olive oil', amount: '1 tablespoon', recipe: falafel)
Ingredient.create(name: 'egg', amount: '1', recipe: falafel)
Ingredient.create(name: 'parsley', amount: '2 tablespoons', recipe: falafel)
Ingredient.create(name: 'curry powder', amount: '1 tablespoon', recipe: falafel)
Ingredient.create(name: 'garlic powder', amount: '1 tablespoon', recipe: falafel)
Ingredient.create(name: 'lemon juice', amount: '1 tablespoon', recipe: falafel)
Ingredient.create(name: 'ground black pepper', amount: '1 tablespoon', recipe: falafel)

Response.create(comment: 'Wonderful recipe!', rating: 8, recipe: falafel)
Response.create(comment: 'So yummy and easy', rating: 9, recipe: falafel)


thai_red_chicken_curry = Recipe.create(
  name: 'Thai Red Chicken Curry',
  description: 'This is a quick and easy Thai curry made with chicken, zucchini, red bell pepper and carrot.',
  cuisine_type: 'Thai',
  serving_size: 4,
  cooking_time: '20 minutes',
  directions: 'Heat the oil in a large skillet over medium-high heat. Add the chicken pieces; cook and stir for about 3 minutes. Mix in the curry paste, zucchini, bell pepper, carrot and onion. Cook and stir for a few minutes. Dissolve the cornstarch in the coconut milk, then pour into the skillet. Bring to a boil, then simmer over medium heat for 1 minutes. Right before serving, stir in the cilantro. Source: http://allrecipes.com/Recipe/Thai-Red-Chicken-Curry',
)

Ingredient.create(name: 'olive oil', amount: '2 teaspoons', recipe: thai_red_chicken_curry)
Ingredient.create(name: 'chicken breast', amount: '1 pound', recipe: thai_red_chicken_curry)
Ingredient.create(name: 'Thai red curry paste', amount: '1 tablespoon', recipe: thai_red_chicken_curry)
Ingredient.create(name: 'zucchini', amount: '1 cup', recipe: thai_red_chicken_curry)
Ingredient.create(name: 'red bell', amount: '1', recipe: thai_red_chicken_curry)
Ingredient.create(name: 'carrot', amount: '1/2 cup', recipe: thai_red_chicken_curry)
Ingredient.create(name: 'onion', amount: '1', recipe: thai_red_chicken_curry)
Ingredient.create(name: 'corn starch', amount: '1 tablespoon', recipe: thai_red_chicken_curry)
Ingredient.create(name: 'coconut milk', amount: '14 ounce', recipe: thai_red_chicken_curry)
Ingredient.create(name: 'cilantro', amount: '2 tablespoon', recipe: thai_red_chicken_curry)

Response.create(comment: 'SO good!', rating: 5, recipe: thai_red_chicken_curry)
Response.create(comment: 'Bleh...', rating: 1, recipe: thai_red_chicken_curry)




