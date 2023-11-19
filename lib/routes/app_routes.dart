
import 'package:go_router/go_router.dart';
import 'package:practice_ui/dashboard_counter.dart';
import 'package:practice_ui/dashboard_kitchen.dart';
import 'package:practice_ui/login_page.dart';
import 'package:practice_ui/qr_menu_page.dart';
import 'package:practice_ui/welcome_screen.dart';

class MyAppRouter{
 
  static final  GoRouter router =GoRouter(
    routes:[
     GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) {
        return const  LoginPage();
      },
    ),
    GoRoute(
      name: 'Dashboard_Kitchen',
      
      path: '/gokitchen',
      builder: (context, state) {
        return   DashBoardKitchen();
      },
      ),
      GoRoute(
      name: 'Dashboard_Counter',
      
      path: '/gocounter',
      builder: (context, state) {
        return   DashboardCounter();
      },
      ),

    ]
  );

}