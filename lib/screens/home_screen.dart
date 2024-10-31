// import 'package:flutter/material.dart';
// import 'package:portfolio/screens/about.dart';
// import 'package:portfolio/screens/home_body.dart';
// import 'package:portfolio/screens/portfolio_screen.dart';
// import 'custom_app_bar.dart';
// class HomeScreen extends StatelessWidget {
//    HomeScreen({super.key});
//   List screens = [
//     HomeBody(),
//     PortfolioScreen(),
//     AboutScreen()
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Color(0xff051521),
//       appBar: PreferredSize(
//           preferredSize: Size(screenSize.width, 50),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: CustomAppBar(),
//           )),
//       body:AboutScreen(),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/home_body.dart';
import 'package:portfolio/screens/portfolio_screen.dart';
import 'custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    HomeBody(),
    PortfolioScreen(),
    AboutScreen(),
  ];

  void onSelectScreen(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff051521),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomAppBar(
            selectedIndex: selectedIndex,
            onSelectScreen: onSelectScreen,
          ),
        ),
      ),
      body: screens[selectedIndex], // Display the selected screen
    );
  }
}
