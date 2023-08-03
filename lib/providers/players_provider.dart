import 'package:cric_info/data/dummy_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final playerProvider = Provider((ref) {
  return dummyMeals;
});
