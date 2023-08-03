import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cric_info/providers/players_provider.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegetarian: false,
          Filter.vegan: false,
        });

  void setFilters(Map<Filter, bool> chosenFilters) {
    state = chosenFilters;
  }

  void setFilter(Filter filter, bool isActive) {
    state = {...state, filter: isActive};
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>(
  (ref) => FiltersNotifier(),
);

final filteredPlayerProvider = Provider((ref) {
  final players = ref.watch(playerProvider);
  final activeFilters = ref.watch(filtersProvider);

  return players.where((meal) {
    if (activeFilters[Filter.glutenFree]! && !meal.isInd) {
      return false;
    }
    if (activeFilters[Filter.lactoseFree]! && !meal.isAus) {
      return false;
    }
    if (activeFilters[Filter.vegetarian]! && !meal.isEng) {
      return false;
    }
    if (activeFilters[Filter.vegan]! && !meal.isSa) {
      return false;
    }
    return true;
  }).toList();
});
