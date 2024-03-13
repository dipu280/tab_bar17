// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tab_bar_demo17/page1.dart';
import 'package:tab_bar_demo17/page2.dart';
import 'package:tab_bar_demo17/page3.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo>with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
   // print("object");
     tabController=TabController(
      length: 3,
      vsync: this,
     );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(width: double.infinity
            ,
             
              child: TabBar(
                physics:BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast) ,
                labelPadding: EdgeInsets.symmetric(horizontal: 10),
                labelStyle:myStyle(20, Colors.white) ,
              controller: tabController,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
            //  padding: EdgeInsets.symmetric(horizontal: 12),

            onTap: (value){
              print("page number: $value");
            },
              indicator: BoxDecoration(
               // borderRadius: BorderRadius.circular(20),
               
               
                color: Color.fromARGB(255, 167, 163, 165)
              ),

              tabs:[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Tab(
                  
                  text: "Page 1",),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Tab(
                  
                  text: "Page 2",),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Tab(
                  
                  text: "Page ",),
              ),
             

            ] ),),
            Expanded(child: TabBarView(
              controller: tabController,
              children: [
              Page1(),
              Page2(),
              Page3()
            ]))
          ],
        ),
      ),
    );
  }
}
myStyle(double size,Color clr,{FontWeight? fw}){
  return TextStyle(
    fontSize: size,
    color: clr,
    fontWeight: fw
  );
}