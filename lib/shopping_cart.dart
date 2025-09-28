import 'package:flutter/material.dart';
import 'package:mexican_restaurant_app/food_model.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  List<FoodModel> categoriesfood = [];

  void _getCategoriesFood() {
    categoriesfood = FoodModel.getCategoriesFood();
  }

  double _calculateTotalCost() {
    double total = 0;
    for (var food in categoriesfood) {
      if (food.number_of_food > 0) {
        total += food.total_cost;
      }
    }
    return total;
  }

  @override
  void initState() {
    super.initState();
    _getCategoriesFood();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 239, 213),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: categoriesfood.length,
                itemBuilder: (context, index) {
                  return categoriesfood[index].number_of_food > 0
                      ? Card(
                          margin: const EdgeInsets.only(left: 22, right: 22),
                          color: categoriesfood[index].bgcolor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          elevation: 6,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  categoriesfood[index].image,
                                  height: 60,
                                  width: 60,
                                ),
                                const SizedBox(width: 12),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Number of ${categoriesfood[index].name}: ${categoriesfood[index].number_of_food}",
                                      style: GoogleFonts.notoSerif(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Cost ${categoriesfood[index].name}: ${categoriesfood[index].total_cost}€",
                                      style: GoogleFonts.notoSerif(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      : const SizedBox.shrink();
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
              ),
            ),
            SizedBox(height: 100),
            Text(
              "Total Cost: ${_calculateTotalCost().toStringAsFixed(2)}€",
              style: GoogleFonts.notoSerif(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: GestureDetector(
                  onTap: () {
                    // You can add the payment process
                  },
                  child: Container(
                    height: 50,
                    width: 260,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 128, 38),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Proceed To Payment",
                      style: GoogleFonts.notoSerif(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
