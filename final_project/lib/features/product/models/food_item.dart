class FoodItem {
  final String name;
  final String description;
  final String image;
  final String detailImage;
  final double detailImageWidth;
  final double price;
  final double rating;
  final int calories;
  final int preparationTime;
  final String category;

  const FoodItem({
    required this.name,
    required this.description,
    required this.image,
    required this.detailImage,
    required this.detailImageWidth,
    required this.price,
    required this.rating,
    required this.calories,
    required this.preparationTime,
    required this.category,
  });
}
