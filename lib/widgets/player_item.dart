import 'package:flutter/material.dart';
import 'package:cric_info/models/meal.dart';
import 'package:cric_info/widgets/player_main_trait.dart';

import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal, required this.onSelectedMeal});
  final Meal meal;
  final void Function(Meal meal) onSelectedMeal;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.hardEdge,
      elevation: 4,
      child: InkWell(
        splashColor: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          onSelectedMeal(meal);
        },
        child: Stack(
          children: [
            Hero(tag: meal.id,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(meal.imageUrl),
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 44),
                child: Column(
                  children: [
                    Text(
                      meal.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MealItemTrait(
                            icon: Icons.sports_cricket_outlined,
                            label: '${meal.duration} '),
                        const SizedBox(
                          width: 12,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        MealItemTrait(
                            icon: Icons.location_on_outlined,
                            label: meal.affordability.name[0].toUpperCase() +
                                meal.affordability.name.substring(1)),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
