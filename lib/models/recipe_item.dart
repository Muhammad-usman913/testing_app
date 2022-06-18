
// ignore_for_file: avoid_types_as_parameter_names

class RecipeItem {
  String? profileImagUri;
  String? recipeImage;
  String? recipeDescription;
  bool? vegetarian;

  RecipeItem.fromJson(Map<String, dynamic> json) {
    profileImagUri = json["prfileImage"];
    recipeImage = json[""];
    recipeDescription = json[""];
    vegetarian = json[""];
  }
}

var recipeItemList = [
  RecipeItem(profileImagUri: 'assets/images/girl_avator.jpg',recipeImage: 'assets/images/recipe_book_images/bread_samosa.jpg',recipeDescription: 'Red Wine and Mint Souffle'),
  RecipeItem(profileImagUri: 'assets/images/girl_avator.jpg',recipeImage: 'assets/images/recipe_book_images/cheese_bread_receipe.jpg',recipeDescription: 'White wine Toffee'),
  RecipeItem(profileImagUri: 'assets/images/girl_avator.jpg',recipeImage: 'assets/images/recipe_book_images/cocumer_salam_receipe.jpg',recipeDescription: 'Vanilla Pud'),
  RecipeItem(profileImagUri: 'assets/images/girl_avator.jpg',recipeImage: 'assets/images/recipe_book_images/noodles.jpg',recipeDescription: 'Cured Vegetables & Mutton'),
  RecipeItem(profileImagUri: 'assets/images/girl_avator.jpg',recipeImage: 'assets/images/recipe_book_images/pasta_recipe.jpg',recipeDescription: 'Cured Vegetables & Mutton'),
  RecipeItem(profileImagUri: 'assets/images/girl_avator.jpg',recipeImage: 'assets/images/recipe_book_images/pecan_receipe.jpg',recipeDescription: 'Cured Vegetables & Mutton'),
  RecipeItem(profileImagUri: 'assets/images/girl_avator.jpg',recipeImage: 'assets/images/recipe_book_images/soup_receipe.jpg',recipeDescription: 'Cured Vegetables & Mutton'),
];