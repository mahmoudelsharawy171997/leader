// @dart=2.9
import 'package:flutter/material.dart';
import 'package:leader/routes/RouterImports.gr.dart';

void main() {

  // Utilities.tester.sort((a, b) => a.intiger.compareTo(b.intiger));
  // Utilities.tester.sort((a, b) => a.setring.compareTo(b.setring));
  // for(int i=0;i<Utilities.tester.length;i++)
  //   {
  //     print(Utilities.tester[i].intiger);
  //     print(Utilities.tester[i].setring);
  //   }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: Locale('ar', 'EG'),
      routerDelegate: _appRouter.delegate(
          initialRoutes: [SplashScreenRoute()]
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}


