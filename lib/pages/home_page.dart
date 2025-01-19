import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/postcomponents.dart';
import '../components/toolbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> users = const [
    'User number 0',
    'User number 1',
    'User number 2',
    // Add more constant values...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Social',
        actions: [
          IconButton(onPressed: () {

          }, icon: SvgPicture.asset('assets/svg/ic_location.svg'))
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return PostItem(user: users[index]);
        },
      ),
    );
  }

}
