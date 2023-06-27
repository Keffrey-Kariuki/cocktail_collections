import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPage();

}

class _CheckoutPage extends State<CheckoutPage>{

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: 'Checkout Items',
      home: Scaffold(
        body: Column(
          children: [
            const Text(
                "Order Details",
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black
              ),
            ),
            OrderCard()
          ]
        ),
      ),
    );
  }

}

class OrderCard extends StatelessWidget{
  OrderCard({super.key});

  static const bannerImage = "https://images.unsplash.com/photo-1609951651556-5334e2706168?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80";
  static const foodName = "burger";
  static const foodPrice = 20.55;

  // final qtyController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 150,
        child: Card(
          child: Row(
            children: [
              Padding(padding: const EdgeInsets.all(16), 
                child: Image.network(
                  bannerImage, 
                  height: 100, 
                  width: 100, 
                  fit: BoxFit.cover,
                )
              ),
              const SizedBox(
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      foodName,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                    Text(
                      "\$$foodPrice",
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 18
                      ),
                    )
                  ],
                )
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: (){},
                      child: const Icon(Icons.dangerous_sharp)
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Text("1"),
                  ),
                  ElevatedButton(
                      onPressed: (){}, 
                      child: const Icon(Icons.add))
                ],
              )
            ],
          ),
      )
    );
  }
}