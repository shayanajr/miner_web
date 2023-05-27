import 'package:get/get.dart';
import 'package:miner_web/Screens/authentication/login_username.dart';
import 'package:miner_web/Screens/home_screen/home_screen.dart';

class Routes {

  static List<GetPage> get pages =>[

    GetPage(name:'/home_screen', page:()=> HomePage()),
    GetPage(name:'/login_via_username', page:()=> LoginPage()),


  ];

}