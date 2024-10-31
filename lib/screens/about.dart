import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('My Experience',style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(colors: [Colors.blue,Colors.blueGrey])
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('ITI Summer Training Certificate in ApplicationDevelopment Using Flutter',style: TextStyle(color: Colors.white),),
                  )),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(colors: [Colors.blue,Colors.blueGrey])
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Flutter Advanced Course Bloc and MVVM Pattern',style: TextStyle(color: Colors.white),),
                  )),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(colors: [Colors.blue,Colors.blueGrey])
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Flutter Intern at Career 180 & Learnit',style: TextStyle(color: Colors.white),),
                  )),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('My Education',style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(colors: [Colors.blue,Colors.blueGrey])
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Text('Faculty of Computer and Artificial Intelligence',style: TextStyle(color: Colors.white),),
                      SizedBox(height: 10,),
                      Text('2020 – 2024',style: TextStyle(color: Colors.white)),
                    ],)
                  )),
                ),
                SizedBox(height: 110,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
