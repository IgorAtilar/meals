import 'package:flutter/material.dart';
import 'package:meals/utils/app_routes.dart';
import './screens/categories_screen.dart';
import './screens/categories_meals_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ).copyWith(
          secondary: Colors.amber,
        ),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      ),
      initialRoute: '/',
      routes: {
        AppRoutes.home: (_) => const CategoriesScreen(),
        AppRoutes.categoriesMeals: (_) => const CategoriesMealsScreen(),
      },
    );
  }
}
