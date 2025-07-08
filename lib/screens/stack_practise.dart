import 'package:flutter/material.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 100,
            child: Image.network('https://www.google.com/imgres?q=image&imgurl=https%3A%2F%2Fplus.unsplash.com%2Fpremium_photo-1664474619075-644dd191935f%3Ffm%3Djpg%26q%3D60%26w%3D3000%26ixlib%3Drb-4.1.0%26ixid%3DM3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%253D&imgrefurl=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fimage&docid=ExDvm63D_wCvSM&tbnid=2brKLR3s5kTpPM&vet=12ahUKEwjkmcrjh56OAxUR8LsIHdVNEeIQM3oECB0QAA..i&w=3000&h=2003&hcb=2&itg=1&ved=2ahUKEwjkmcrjh56OAxUR8LsIHdVNEeIQM3oECB0QAA'
            ),


          ),
          Positioned(
            top: 40,
            left: 10,
            child: CircleAvatar(
              radius: 30,
            ),

          ),
          Container(
            height:10,
            width: 5,
              color: Colors.orange,


          ),
          Positioned(
            top: 40,
            left: 10,
            child: CircleAvatar(
            radius: 30,
          ),

          ),
        ],
      ),
    );
  }
}
