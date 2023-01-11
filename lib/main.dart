import 'package:flutter/material.dart';

import 'home/ui/home.dart';
import 'auth/ui/authorization_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Instagram Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Figtree'),
        initialRoute: AuthorizationPage.routeName,
        routes: {
          AuthorizationPage.routeName: (_) => const AuthorizationPage(),
          Home.routeName: (_) => const Home(),
        },
      ),
    );
  }
}
