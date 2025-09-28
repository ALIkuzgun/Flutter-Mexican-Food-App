import 'package:flutter/material.dart';

class FoodModel {
  String name;
  String image;
  final double cost;
  Color bgcolor;
  final String description;
  int number_of_food;

  FoodModel({
    required this.name,
    required this.bgcolor,
    required this.cost,
    required this.image,
    required this.description,
    required this.number_of_food,
  });

  int get total_cost => (number_of_food * cost).toInt();

  static final List<FoodModel> _categoriesFood = [
    FoodModel(
      name: "Taco",
      image: "images/taco.png",
      bgcolor: Color.fromARGB(255, 255, 224, 178),
      cost: 10.0,
      description:
          "Tacos are a traditional Mexican dish consisting of small, soft or crispy corn or flour tortillas filled with a variety of ingredients such as seasoned meat (beef, chicken, pork), seafood, beans, or vegetables. They are typically topped with fresh ingredients like onions, cilantro, salsa, cheese, and lime. Tacos are known for their versatility and bold flavors, making them a popular and customizable street food enjoyed worldwide.",
      number_of_food: 0,
    ),
    FoodModel(
      name: "Salad",
      image: "images/salad.png",
      bgcolor: Color.fromARGB(255, 200, 230, 201),
      cost: 7.0,
      description:
          "Mexican Salad is a fresh and vibrant dish featuring a mix of crisp lettuce, tomatoes, corn, black beans, avocado, and red onions, often dressed with lime juice, cilantro, and a touch of chili powder or cumin. It may also include ingredients like shredded cheese, jalapeños, and tortilla strips for added texture and flavor. This salad is a colorful, healthy, and flavorful option inspired by traditional Mexican ingredients.",
      number_of_food: 0,
    ),
    FoodModel(
      name: "Guacamole",
      image: "images/guacamole.png",
      bgcolor: Color.fromARGB(255, 165, 214, 167),
      cost: 11.0,
      description:
          "Guacamole is a classic Mexican dip made from mashed ripe avocados mixed with ingredients like lime juice, chopped onions, tomatoes, cilantro, jalapeños, and salt. It has a creamy texture with a fresh, tangy, and slightly spicy flavor. Guacamole is commonly served as a dip with tortilla chips or as a topping for tacos, nachos, and other Mexican dishes.",
      number_of_food: 0,
    ),
    FoodModel(
      name: "Nachos",
      image: "images/nachos.png",
      bgcolor: Color.fromARGB(255, 255, 249, 196),
      cost: 12.0,
      description:
          "Nachos are a popular Mexican-inspired snack made with crispy tortilla chips topped with melted cheese and often accompanied by ingredients like jalapeños, beans, ground beef, salsa, guacamole, and sour cream. They are typically served warm and are perfect for sharing, offering a flavorful combination of crunchy, cheesy, and spicy elements.",
      number_of_food: 0,
    ),
    FoodModel(
      name: "Fajitas",
      image: "images/fajitas.png",
      bgcolor: Color.fromARGB(255, 255, 213, 153),
      cost: 13.0,
      description:
          "Fajitas are a Tex-Mex dish made with grilled, marinated meat—such as chicken, beef, or shrimp—served in tortillas with sautéed bell peppers and onions. The meat is typically seasoned with lime juice, garlic, and chili powder, then grilled and sliced into strips. Fajitas are often served with toppings like guacamole, sour cream, salsa, and shredded cheese, offering a customizable and flavorful meal.",
      number_of_food: 0,
    ),
    FoodModel(
      name: "Enchilada",
      image: "images/enchilada.png",
      bgcolor: Color.fromARGB(255, 239, 154, 154),
      cost: 15.0,
      description:
          "Enchiladas are a traditional Mexican dish made by rolling corn tortillas around a filling—typically meat, cheese, beans, or vegetables—and then covering them with a savory chili sauce. They are baked until heated through and often topped with melted cheese, sour cream, chopped onions, or fresh cilantro. The fillings and sauces can vary widely, with common varieties including red, green (verde), or mole sauces. Enchiladas are flavorful, comforting, and often served with sides like rice and beans.",
      number_of_food: 0,
    ),
  ];

  static List<FoodModel> getCategoriesFood() => _categoriesFood;
}
