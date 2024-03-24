class Category {
  final String title;
  final String image;
  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(title: "shoes", image: "lib/images/purpleHeels.png"),
  Category(title: "dress", image: "lib/images/orangeblouses.png"),
  Category(title: "neck", image: "lib/images/neckless.png"),
  Category(title: "jacket", image: "lib/images/Jacketgirl.png"),
  Category(title: "bags", image: "lib/images/ValentinoBag.png"),
];
