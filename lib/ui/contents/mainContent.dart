import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                'API Enterprises',
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Righteous'),
              ),
              Text(
                " \t Lorem ipsum dolor sit amet,\n \t consectetur adipiscing elit,\n sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontFamily: 'Righteous'),
              ),
              Text(
                "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                    fontFamily: 'Righteous'),
              ),
              SizedBox(height:10),
              Container(
                width: 200,
                color: Colors.black,
                child: RaisedButton(onPressed: null,
                child: Text('Show Products',style: TextStyle(color:Colors.white),),),
              )
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage('/buying.jpg'),
              height: 600,
              width: 600,
            ),
          ),
        ],
      ),
    );
  }
}
