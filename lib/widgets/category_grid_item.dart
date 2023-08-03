import 'package:flutter/material.dart';
import 'package:cric_info/models/category.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key, required this.category,required this.onSelectedCategory, required this.image});

  final Category category;
  final Image image;
  final void Function() onSelectedCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectedCategory,
      splashColor: Theme.of(context).colorScheme.primaryContainer,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          image:  DecorationImage(fit: BoxFit.cover,image: AssetImage(category.image,),opacity: .3),
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
            category.color.withOpacity(0.55),
            category.color.withOpacity(0.9)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Text(
          category.title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onBackground,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
