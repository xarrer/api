import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth>1200){
        return DesktopNavbar();

      }else if(constraints.maxWidth>800 && constraints.maxWidth<1200){
        return DesktopNavbar();
      }else {
        return MobileNavBar();
      }
    });
  }
}


class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}


class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1300),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 80,
            width: 160,
            child: Image(image: AssetImage('/Logo2.png'))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                }
                ,child: Text('Home',style: TextStyle(color:Colors.black87),)),

                SizedBox(width:30),

              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/productView');
                },child: Text('Products',style: TextStyle(color:Colors.black87))),
              SizedBox(width:30),
              Text('Clients',style: TextStyle(color:Colors.black87)),
              SizedBox(width:30),
              FlatButton(
                onPressed: (){
                    AlertDialog(
                      content: Text('Call 0011223344?'),
                    actions: [
                      FlatButton(onPressed: null, child: Text('No'),),
                      FlatButton(onPressed: null, child: Text('Yes'),),
                    ],);
                },
                color: Colors.blue,
                child: Text('Contact Us',style: TextStyle(color:Colors.white),),),

            ],
          ),
        ],
      ),
    );
  }
}