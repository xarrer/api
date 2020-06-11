import 'package:flutter/material.dart';

import 'contents/mainContent.dart';
import 'navbar/navbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.withOpacity(0.2),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: [
                NavBar(),
                MainContent(),
                ProductView(),
                FooterView(),
              ],
            ),
          ),
        ));
  }
}

class ProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: MediaQuery.of(context).size.width-240,
      child: Card(
        elevation: 7.0,
        color: Colors.white24,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'What we Offer',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FooterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
          child: Container(
  
        height: 200,
        width: MediaQuery.of(context).size.width,
        color: Colors.white24,
      ),
    );
  }
}
