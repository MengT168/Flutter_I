import 'package:flutter/material.dart';
import 'package:learnfromyt/components//toolbar.dart';
import 'package:learnfromyt/components/user_avatar.dart';
import 'package:learnfromyt/config/app_routes.dart';
import 'package:learnfromyt/styles/app_colors.dart';

import '../styles/app_text.dart';

enum ProfileMenu{
  edit,logout
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Toolbar(title: 'Profile',
          actions: [
            PopupMenuButton<ProfileMenu>(
              onSelected: (value) {
                switch(value){
                  case ProfileMenu.edit:
                    Navigator.of(context).pushNamed(AppRoutes.editProfile);
                    break;
                  case ProfileMenu.logout:
                    print('logout');
                    break;
                }
            } ,
              icon: const Icon(Icons.more_vert_outlined)
              ,itemBuilder:
             (context) {
               return [
                  const PopupMenuItem(
                      value: ProfileMenu.edit,child:
                      Text('Edit'),
                  ),
                 const PopupMenuItem(
                      value: ProfileMenu.logout,child:
                      Text('Log-out'),
                 )
               ];

             },
            ),

          ],
        ),
        body: const Column(
            children: [
              UserAvatar(size: 90),
              SizedBox(
                height: 12,
              ),
              Text('Alexander' , style: AppText.header2,),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                        Text('600',style: AppText.header2,),
                        Text('Followers',style: TextStyle(color: Colors.white),),
                    ],

                  ),
                  Column(
                    children: [
                      Text('120',style: AppText.header2,),
                      Text('Following',style: TextStyle(color: Colors.white),),
                    ],

                  ),
                  Column(
                    children: [
                      Text('22',style: AppText.header2, ),
                      Text('Posts',style: TextStyle(color: Colors.white),),
                    ],

                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
                height: 10,
              )
            ],

        ),
    );
  }
}
