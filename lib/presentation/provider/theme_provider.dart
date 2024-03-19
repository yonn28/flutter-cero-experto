import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// lista do de colores imutable
final colorListProvider = Provider((ref) => colorList);

final isDarkModeProvider = StateProvider<bool>((ref) => false);

//un simple int
final selectedColorProvider = StateProvider((ref) => 1);

// un bojeto de tipo (custom)

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

// controller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = estado = new AppTheme();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int coloIndex) {
    state = state.copyWith(selectedColor: coloIndex);
  }
}
