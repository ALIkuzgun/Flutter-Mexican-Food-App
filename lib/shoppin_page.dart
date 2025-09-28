import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mexican_restaurant_app/food_information_page.dart';
import 'package:mexican_restaurant_app/food_model.dart';
import 'package:mexican_restaurant_app/shopping_cart.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  List<FoodModel> categoriesfood = [];

  void _getCategoriesFood() {
    categoriesfood = FoodModel.getCategoriesFood();
  }

  @override
  void initState() {
    super.initState();
    _getCategoriesFood();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 231, 204),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: Text(
                "Mexican Restaurant",
                style: GoogleFonts.notoSerif(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              "Opportunity:",
              style: GoogleFonts.notoSerif(fontSize: 20),
            ),
          ),
          SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 190,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 108, 65),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("images/taco.png", height: 110),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "If you buy three tacos it's only 24 dollar.",
                            style: GoogleFonts.notoSerif(
                              fontSize: 24,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 260,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 197, 38),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Go to opportunity",
                        style: GoogleFonts.notoSerif(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Divider(
              height: 20,
              thickness: 3,
              color: Color.fromARGB(255, 239, 233, 146),
            ),
          ),
          SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text("Foods:", style: GoogleFonts.notoSerif(fontSize: 20)),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: categoriesfood.length,
              itemBuilder: (context, index) {
                return Card(
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
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                categoriesfood[index].name,
                                style: GoogleFonts.notoSerif(fontSize: 18),
                              ),
                              Text(
                                "${categoriesfood[index].cost} Dollar",
                                style: GoogleFonts.notoSerif(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 13),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              categoriesfood[index].number_of_food += 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              255,
                              174,
                              52,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Add",
                            style: GoogleFonts.notoSerif(fontSize: 16),
                          ),
                        ),
                        SizedBox(width: 7),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FoodInformationPage(
                                  food: categoriesfood[index],
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              255,
                              174,
                              52,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "İnf.",
                            style: GoogleFonts.notoSerif(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 10),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShoppingCartPage()),
                  );
                },
                child: Container(
                  height: 50,
                  width: 260,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 197, 38),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Go to shopping cart",
                    style: GoogleFonts.notoSerif(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
