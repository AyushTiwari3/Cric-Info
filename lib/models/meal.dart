enum Complexity {
  rh,
  lh,
}

enum Affordability {
  ind,
  aus,
  eng,
  sa,
}

class Meal {
  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isInd,
    required this.isAus,
    required this.isEng,
    required this.isSa,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final String duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isInd;
  final bool isAus;
  final bool isEng;
  final bool isSa;
}