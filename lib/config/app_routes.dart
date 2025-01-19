import 'package:learnfromyt/pages/login.dart';

import '../pages/edit_profile.dart';
import '../pages/home_page.dart';
import '../pages/main_page.dart';

class AppRoutes{

  static final pages = {
    '/' : (context)=> const Login(),
    '/home' :(context)=> const HomePage(),
    '/main' : (context)=>const MainPage(),
    '/edit_profile' : (context)=> const EditProfile()
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const user = '/user';
}