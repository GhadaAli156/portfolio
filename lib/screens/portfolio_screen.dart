import 'package:flutter/material.dart';
import 'package:portfolio/custom_widget/custom_button.dart';
import 'package:portfolio/custom_widget/custom_skills_button.dart';

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/background.jpg'),fit: BoxFit.cover)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15,right: 15),
        child: Column(
          children: [
            Text('What I Can do',style: TextStyle(
              color: Colors.white,
                fontSize: 40,
              fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'
            ),),
            Padding(
              padding: const EdgeInsets.only(right: 70,top: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                Text('Platforms I Build For',style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Merriweather',
                  fontSize: 30
                ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(text: 'Android',iconData: Icons.android),
                      CustomButton(text: 'IOS',iconData: Icons.apple)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(text: 'Web',iconData: Icons.web),
                      CustomButton(text: 'Desktop',iconData: Icons.laptop_chromebook_outlined)
                    ],
                  ),
                      SizedBox(height: 70,),
                      Center(
                        child: Text('My Skills',style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Merriweather',
                            fontSize: 30
                        ),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomSkillsButton(width: 150,image: 'assets/images/firebase.png',text: 'Firebase',),
                          CustomSkillsButton(width: 150,image: 'assets/images/flutter.png',text: 'Flutter',),
                          CustomSkillsButton(width: 150,image: 'assets/images/dart.png',text: 'Dart',),
                          CustomSkillsButton(width: 100,image: 'assets/images/c++.png',text: 'c++',),
                          CustomSkillsButton(width: 150, image: 'assets/images/figma.png', text: 'Figma')

                        ],)
              ],),
            )
          ],
        ),
      ),
    );
  }
}
