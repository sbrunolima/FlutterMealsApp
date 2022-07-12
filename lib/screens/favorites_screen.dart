import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favotiteMeals;

  FavoritesScreen(this.favotiteMeals);

  @override
  Widget build(BuildContext context) {
    if (favotiteMeals.isEmpty) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Text(
            'The You have no favorites yet - start adding some!',
            textAlign: TextAlign.center,
          ),
        ),
      );
    } else {
      return ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              favotiteMeals[index].id,
              favotiteMeals[index].title,
              favotiteMeals[index].imageUrl,
              favotiteMeals[index].duration,
              favotiteMeals[index].complexity,
              favotiteMeals[index].affordability,
              favotiteMeals[index].isGlutenFree,
              favotiteMeals[index].isLactoseFree,
              favotiteMeals[index].isVegetarian,
              favotiteMeals[index].isVegan,
            );
          },
          itemCount: favotiteMeals.length);
    }
  }
}
