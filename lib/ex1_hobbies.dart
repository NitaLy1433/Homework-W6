import 'package:flutter/material.dart';

// EX 1 – The hobbies (handout page: EX 1)
// Part 1: build ONE hobby card.
// Part 2: extract it into a StatelessWidget called HobbyCard, then show several cards.

void main() {
  
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: Container(
          color: Colors.grey,
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              NewWidget(
                title:'Skating',
                icon: Icons.skateboarding,
                color: Colors.blueGrey,
              ),
                
                  
              
            ],
          ),
        ),
         // YOUR CODE
      ),
    ),
  );
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key, required MaterialColor color, required IconData icon, required String title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration ( 
        color:Colors.green,
        borderRadius:BorderRadius.circular(15), 
    
      ) , 
      child: const Row(  
        children:[
          Icon(
            Icons.travel_explore,
            color: Colors.white,
          ),
          SizedBox(width:20),
          Text(
            'Travelling',
            style: TextStyle( 
              color: Colors.white,
              fontSize:30,
            ),
          ),
          
        ],
      ),
    
    );
  }
}
