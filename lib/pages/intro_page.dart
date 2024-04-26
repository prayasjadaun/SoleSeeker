import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image.asset(
                'assets/images/nike.png',
                height: 350,
              ),
              const SizedBox(
                height: 50,
              ),

              //title
              const Text(
                'Just Do It',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
             const  SizedBox(height: 24,),
              const Text(
                'Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40,),

              //start now button
              GestureDetector(
                onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[900]
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text('Shop Now',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
