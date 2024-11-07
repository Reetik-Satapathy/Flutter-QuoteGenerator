import 'package:flutter/material.dart';
import 'dart:math';
// ignore_for_file: prefer_const_constructors

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Map<String, String>> quotes = [
    {
      "name": "Albert Einstein",
      "quote":
          "Life is like riding a bicycle. To keep your balance, you must keep moving."
    },
    {
      "name": "Maya Angelou",
      "quote":
          "You will face many defeats in life, but never let yourself be defeated."
    },
    {
      "name": "Oscar Wilde",
      "quote": "Be yourself; everyone else is already taken."
    },
    {
      "name": "Steve Jobs",
      "quote":
          "Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work."
    },
    {
      "name": "Mahatma Gandhi",
      "quote": "Be the change that you wish to see in the world."
    }
  ];
  String name = "";
  String quote = "";
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Quotes from Famous People",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              quote,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  int randomIndex = random.nextInt(quotes.length);
                  quote = quotes[randomIndex]["quote"]!;
                  name = quotes[randomIndex]["name"]!;
                });
              },
              child: Text("Generate Quote"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
