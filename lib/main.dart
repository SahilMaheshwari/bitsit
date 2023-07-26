import 'dart:html';

import 'package:bitsit/quotes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home : Listerrr(),
  ));
}

class Listerrr extends StatefulWidget {
  const Listerrr({super.key});

  @override
  State<Listerrr> createState() => _ListerrrState();
}

class _ListerrrState extends State<Listerrr> {

  List<Quotes> quotes = [
    Quotes(text: "Pee regularly",author: "Sahil maheshwari"),
    Quotes(text: "Poop maybe",author: "Shil mesh")
  ];

  Widget quoteTemplate(quote){
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 15,
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[300],

      appBar: AppBar(
        title: const Text("Hello"),
        backgroundColor: Colors.indigoAccent,
      ),

      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList()
    )
    );
  }
}



