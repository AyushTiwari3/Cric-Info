import 'package:cric_info/models/meal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cric_info/providers/favourites_provider.dart';

class MealDetailsScreen extends ConsumerWidget {
  const MealDetailsScreen({
    super.key,
    required this.meal,
  });
  final Meal meal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritePlayer = ref.watch(favoritePlayerProvider);
    final isFav = favoritePlayer.contains(meal);

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title.toString()),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              final wasAdded = ref
                  .read(favoritePlayerProvider.notifier)
                  .togglePlayerFavStatus(meal);

              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(wasAdded
                      ? 'Player added as a favorite'
                      : 'Player removed as a favorite'),
                ),
              );
            },
            icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return RotationTransition(
                  turns: Tween(
                  begin: 0.85,
                  end: 1.0)
                  .animate(animation),
                  child: child,);
              },
              child: Icon(isFav ? Icons.star : Icons.star_border,
              key: ValueKey(isFav),),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(tag: meal.id,
              child: Image.network(meal.imageUrl,
                  width: double.infinity, height: 300, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Personal Information',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            for (var ingredient in meal.ingredients)
              Text(
                ingredient,
                style: const TextStyle(color: Colors.white),
              ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Stats',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            for (var step in meal.steps)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  step,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
