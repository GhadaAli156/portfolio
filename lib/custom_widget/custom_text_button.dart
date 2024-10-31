// import 'package:flutter/material.dart';
// class CustomTextButton extends StatelessWidget {
//    CustomTextButton({super.key,required this.onPressed,required this.title,required this.color});
//   VoidCallback onPressed;
//   String title;
//   Color color;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(onPressed: onPressed, child: Text(title,style: TextStyle(
//         color: color,
//     fontWeight: FontWeight.bold,
//     fontSize: 20),));
//   }
// }


import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color color;

  const CustomTextButton({
    required this.onPressed,
    required this.title,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(color: color, fontSize: 18),
      ),
    );
  }
}
