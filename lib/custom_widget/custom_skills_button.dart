import 'package:flutter/material.dart';
class CustomSkillsButton extends StatelessWidget {
   CustomSkillsButton({super.key , required this.width,required this.image,required this.text});
   double width;
   String image;
   String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Row(
          children: [
            Image.asset(image),
            Text(text,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),)
          ],
        ),
      ),
    );
  }
}
