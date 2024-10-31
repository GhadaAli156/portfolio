import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
   CustomButton({super.key,required this.text,required this.iconData});
  String text;
  IconData iconData;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 70,
        width: 130,
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [Colors.purple,Colors.purple,Colors.white,Colors.purple,Colors.purple],begin: Alignment.topLeft,end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(6)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData,size: 40,),
            Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
