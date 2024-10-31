import 'package:flutter/material.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Flutter Developer',style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'Pacifico'
              ),),
              SizedBox(height: 6,),
              Text('Hi, I\'m Ghada Ali',style: TextStyle(
                  color: Colors.pink,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Merriweather'),),
              SizedBox(height: 6,),
              Text('From Egypt',style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Merriweather'))
            ],
          ),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                image: DecorationImage(image: AssetImage('assets/images/profile.jpg'),fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
