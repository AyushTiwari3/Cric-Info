import 'package:cric_info/models/meal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritePlayersNotifier extends StateNotifier<List<Meal>> {
  FavoritePlayersNotifier() : super([]);

  bool togglePlayerFavStatus(Meal meal) {
    final playerIsFav = state.contains(meal);

    if (playerIsFav) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoritePlayerProvider =
    StateNotifierProvider<FavoritePlayersNotifier, List<Meal>>((ref) {
  return FavoritePlayersNotifier();
});
