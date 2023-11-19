
import 'package:flutter/material.dart';

import 'package:practice_ui/routes/app_routes.dart';

void main(){
  runApp( Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: MyAppRouter.router,
    );
  }
}