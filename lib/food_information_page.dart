import 'package:flutter/material.dart';
import 'package:mexican_restaurant_app/food_model.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodInformationPage extends StatelessWidget {
  final FoodModel food;

  const FoodInformationPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: food.bgcolor,
      appBar: AppBar(
        title: Text(food.name, style: GoogleFonts.notoSerif()),
        backgroundColor: const Color.fromARGB(255, 221, 194, 152),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(food.image, height: 150)),
            SizedBox(height: 20),
            Text(
              "Name: ${food.name}",
              style: GoogleFonts.notoSerif(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Price: ${food.cost} Dollar",
              style: GoogleFonts.notoSerif(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Description:",
              style: GoogleFonts.notoSerif(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${food.description}",
              style: GoogleFonts.notoSerif(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
