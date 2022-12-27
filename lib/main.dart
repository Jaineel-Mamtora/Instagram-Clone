import 'package:flutter/material.dart';
import '../auth/ui/authorization.dart';

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
        initialRoute: Authorization.routeName,
        routes: {
          Authorization.routeName: (_) => const Authorization(),
        },
      ),
    );
  }
}
