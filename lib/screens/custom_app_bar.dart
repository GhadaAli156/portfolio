// import 'package:flutter/material.dart';
// import 'package:portfolio/custom_widget/custom_text_button.dart';
// import 'package:portfolio/screens/portfolio_screen.dart';
// class CustomAppBar extends StatefulWidget {
//   const CustomAppBar({super.key});
//
//   @override
//   State<CustomAppBar> createState() => _CustomAppBarState();
// }
//
// class _CustomAppBarState extends State<CustomAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         CustomTextButton(onPressed: (){}, title: 'Home', color: Color(0xff088BEA)),
//         CustomTextButton(onPressed: (){}, title: 'About', color: Colors.white),
//         CustomTextButton(onPressed: (){}, title: 'Portfolio', color: Colors.white),
//         CustomTextButton(onPressed: (){}, title: 'Works', color: Colors.white)
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:portfolio/custom_widget/custom_text_button.dart';

class CustomAppBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onSelectScreen;

  const CustomAppBar({
    required this.selectedIndex,
    required this.onSelectScreen,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomTextButton(
          onPressed: () => onSelectScreen(0),
          title: 'Home',
          color: selectedIndex == 0 ? Color(0xff088BEA) : Colors.white,
        ),
        CustomTextButton(
          onPressed: () => onSelectScreen(1),
          title: 'Portfolio',
          color: selectedIndex == 1 ? Color(0xff088BEA) : Colors.white,
        ),
        CustomTextButton(
          onPressed: () => onSelectScreen(2),
          title: 'About',
          color: selectedIndex == 2 ? Color(0xff088BEA) : Colors.white,
        ),
        CustomTextButton(
          onPressed: () {},
          title: 'Works',
          color: Colors.white, // Keeping this as a default color since it's not implemented yet
        ),
      ],
    );
  }
}
