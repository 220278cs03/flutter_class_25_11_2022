import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body:  Padding(
          padding: const EdgeInsets.only(top: 100.0, bottom: 32, left: 32, right: 32),
          child: Column(
              children: [
               Container(
                 height: 200,
                 width: 200,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   image: DecorationImage(image: NetworkImage('https://foodhub.scene7.com/is/image/woolworthsltdprod/2011-greek-chicken-salad:Mobile-1300x1150'), fit: BoxFit.cover),
                 ),
               ),
                Container(
                  margin: EdgeInsets.only(top: 50, bottom: 30),
                    width: 200,
                    child: Text('Fast delivery at your doorstep', style: TextStyle(fontSize: 24, decoration: TextDecoration.none, color:Colors.white, fontWeight: FontWeight.w900),textAlign: TextAlign.center,)),
                Text('Home delivery and online reservation system for restaurants & cafe', style: TextStyle(fontSize: 20, decoration: TextDecoration.none, color:Colors.white,),textAlign: TextAlign.center,),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  child: Text("Let's Explore",style: TextStyle(color:Colors.green, fontWeight: FontWeight.w900, fontSize: 24), ),
                )
              ],
            ),
        ),
      ),
    );
  }
}
