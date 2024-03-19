import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/provider/theme_provider.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int colorSelected = ref.watch(selectedColorProvider);
    bool isDarkSelected = ref.watch(isDarkModeProvider);
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(sectedColor: colorSelected, isDarkmode: isDarkSelected).getTheme(),
      title: 'Material App',
    );
  }
}
