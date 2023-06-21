import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  static const bannerImage = "https://images.unsplash.com/photo-1609951651556-5334e2706168?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80";
  static const headline = "Discover wonderful cocktails near you";
  static const subTitle = "Discover the most iconic cocktail party ever!!";

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Image.network(
          bannerImage,
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        const Text(
          headline,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const Text(
          subTitle,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.normal,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 70,
              child: OutlinedButton(
                onPressed: (){},
                child: const Text("Skip", style: TextStyle(fontSize: 30)),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 70,
              child: ElevatedButton(
                  onPressed: (){},
                  child: const Text("Next", style: TextStyle(fontSize: 30))
              ),
            )

          ],
        )
      ],
    );
  }

}