import 'package:flutter/material.dart';
import 'package:learnfromyt/config/app_icons.dart';
import 'package:learnfromyt/config/app_routes.dart';
import 'package:learnfromyt/config/app_strings.dart';
import 'package:learnfromyt/pages/home_page.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: const Text('My App')
      // ),
      // backgroundColor: Colors.lightGreen,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
               const Spacer(),
                const Text(AppStrings.helloWelcome, style: TextStyle(
                  fontSize: 22,
                  color: Colors.white
                ),),
                // const Spacer(),
                const Text(AppStrings.loginToContinue,style: TextStyle(
                  color: Colors.white
                ),),
                // const Spacer(),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: AppStrings.username,
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        filled: true,
                        fillColor: Colors.blue
                    ),
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: AppStrings.password,
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        filled: true,
                        fillColor: Colors.blue
                    ),
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){
                    print('Forgot Click!');
                  }
                  , child:
                  const Text(AppStrings.forgotPassword,style: TextStyle(
                      color: Colors.white
                  ),)
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                  },style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black
                  ), child: const Text(AppStrings.login)
                    ,
                  ),
                ),

                const Text(AppStrings.orSignInWith,style: TextStyle(color: Colors.white),),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        )
                    ) , child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppIcon.icGoogle,width: 22, height: 22,),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(AppStrings.loginWithGoogle),
                      ],
                    ), ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black
                      )
                      ,child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppIcon.icFacebook,width: 22, height: 22,),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(AppStrings.loginWithFacebook)
                        ],
                      ) ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(AppStrings.dontHaveAccount),
                    TextButton(onPressed: (){}, child: const Text(AppStrings.signup))
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      )
    );
  }
}
