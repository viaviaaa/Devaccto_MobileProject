import 'package:flutter/material.dart';
import '/widget/containerhome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 17.0),
              width: 431,
              height: 100,
              color: Color(0xFF5D866C),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/foodie.jpeg', 
              width: 431.0, 
              height: 150.0,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.only(top: 25.0),
              width: 431,
              height: 300,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ContainerHome(text: "breakfast", image: 'assets/images/rawon.jpeg',),
                      ContainerHome(text: "lunch", image: 'assets/images/rendang.jpeg'),
                      ContainerHome(text: "dinner", image: 'assets/images/mpekmpek.jpeg'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ContainerHome(text: "salad", image: 'assets/images/banana.jpeg'),
                      ContainerHome(text: "drink", image: 'assets/images/milkshake.jpeg'),
                      ContainerHome(text: "soup", image: 'assets/images/gudeg.jpeg'),
                    ],
                  )
                ],
              ),
            )
          ],
        );
  }
}