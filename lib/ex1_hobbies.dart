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
              NewWidget(
                color: Colors.green,
                icon: Icons.travel_explore,
                title: 'Travelling',
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
  final String title;
  final IconData icon;
  final Color color;

  const NewWidget({
    super.key, required this.color, required this.icon, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom:15),
      decoration: BoxDecoration ( 
        color:color,
        borderRadius:BorderRadius.circular(15), 
    
      ) , 
      child:  Row(  
        children:[
          Icon(
            icon,
            
            color: Colors.white,
          ),
          const SizedBox(width:20),
          Text(
            title,
            style: const TextStyle( 
              color: Colors.white,
              fontSize:30,
            ),
          ),
          
        ],
      ),
    
    );
  }
}
