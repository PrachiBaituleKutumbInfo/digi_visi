import 'package:flutter/material.dart';

class DigiVisi extends StatelessWidget {
  final String text;
  
const DigiVisi(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text( text,style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 8, 11, 83),
                      ),
    ),
    );
          
                 
                     
                    
                
  }
}