import 'package:flutter/material.dart';
import 'package:instagram_clone/home/ui/home_page.dart';
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
        initialRoute: AuthorizationPage.routeName,
        routes: {
          AuthorizationPage.routeName: (_) => const AuthorizationPage(),
          HomePage.routeName: (_) => const HomePage(),
        },
      ),
    );
  }
}
