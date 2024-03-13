import 'package:flutter/material.dart';
import 'package:tab_bar_demo17/page1.dart';
import 'package:tab_bar_demo17/page2.dart';
import 'package:tab_bar_demo17/page3.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController pageController=PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
        
          child: 
        Column(children: [
              Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                MaterialButton(onPressed: (){
                  print("object");
                  pageController.jumpToPage(0);
                },child: Text("Page 1"),color: Colors.grey,),
                MaterialButton(onPressed: (){
                  pageController.jumpToPage(1);
                  },child: Text("Page 2"),color: Colors.grey,),
                MaterialButton(onPressed: (){
                  pageController.jumpToPage(2);
                  },child: Text("Page 3"),color: Colors.grey,),
              ],),),
              Expanded(child: PageView(
                controller:pageController,
                children: [
                Page1(),
                Page2(),
                Page3()
                ],
              ))
      
        ],),) ,
      ),
    );
  }
}