import 'package:flutter/material.dart';

// EX 3 – The products (handout page: EX 3)
// Part 1: build ONE product card (images are in assets/ex3/).
// Part 2: create the Product enum (follow the UML in the handout).
// Part 3: extract the card into a StatelessWidget called ProductCard.

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.grey.shade200,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[ 
              Card(  
                child:Column(  
                  children:[ 
                    Image.asset(
                      'assets/ex3/dart.png',
                      height:150,
                    ),
                    const Padding(  
                      padding: EdgeInsets.all(10),
                      child:Text(  
                        'Dart',
                        style: TextStyle( 
                          fontSize:24,
                          fontWeight: FontWeight.bold,
                        ),
                        
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child:Text(  
                        'Dart is a programing language'
                        'used to build applications',
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ],
                ),
              ) ,

            ] ,

          ),

        ), // YOUR CODE
      ),
    ),
  );
}
