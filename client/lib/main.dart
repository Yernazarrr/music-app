import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/auth/view/pages/sign_up_page.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const SignUpPage(),
    );
  }
}
