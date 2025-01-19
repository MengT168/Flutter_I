import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learnfromyt/config/app_icons.dart';
import 'package:learnfromyt/pages/home_page.dart';
import 'package:learnfromyt/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(items:
        [
          BottomNavigationBarItem(icon:
          SvgPicture.asset(AppIcon.icHome) , label: 'Home'
          ),
          BottomNavigationBarItem(icon:
          SvgPicture.asset(AppIcon.icFavorite) , label: 'Favorite'
          ),
          BottomNavigationBarItem(icon:
          SvgPicture.asset(AppIcon.icMessages) , label: 'Messages'
          ),
          BottomNavigationBarItem(icon:
          SvgPicture.asset(AppIcon.icUser) , label: 'User'
          )
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
      ),
    );


  }
  final page = [
    const HomePage(),
    const Center(
      child: Text('Favorite'),
    ),
    const Center(
      child: Text('Messages'),
    ),
    const ProfilePage()
  ];
}
