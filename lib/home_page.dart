import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mexican_restaurant_app/shoppin_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 57, 53),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 229, 57, 53),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Welcome to Mexican Restaurant",
              style: GoogleFonts.notoSerif(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              softWrap: true,
              overflow: TextOverflow.visible,
              maxLines: 2,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(13.0),
              child: Image.asset("images/nachos.png", height: 260),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Welcome to our handcrafted Mexican Food Restaurant.Click the button below to start ordering",
                style: GoogleFonts.notoSerif(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingPage()),
                );
              },
              child: Container(
                height: 50,
                width: 260,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 128, 38),
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Start shoping",
                  style: GoogleFonts.notoSerif(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
