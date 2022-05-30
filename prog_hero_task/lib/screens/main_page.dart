

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010133),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Column(children: [
                 Image.asset('assets/logo.png',height:200,width:280),
            
            Text('QUIZ',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),
           

              ]),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Column(
                children: [
                   Text('Highscore',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),),
            Text('500 Point',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),),
                ],
              ),
            ),

            Container(
                      
              height: 50,
              width: 250,
              alignment: Alignment.center,
                     decoration: BoxDecoration(
                       color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
       
              
              child: Text('Start',style: TextStyle(color: Color(0xff010133),fontSize: 22,fontWeight: FontWeight.bold),),
              )
           
          ],
        ),
      )
    );
    
  }
}