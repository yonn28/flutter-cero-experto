import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// lista do de colores imutable
final colorListProvider = Provider((ref) => colorList);

final isDarkModeProvider = StateProvider<bool>((ref) => false);

//un simple int
final selectedColorProvider = StateProvider((ref) => 1);


