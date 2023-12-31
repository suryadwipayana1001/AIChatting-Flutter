import 'package:flutter/material.dart';

import '../../../features/landing/landing_page.dart';
import '../../core.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static const String routeName = '/splash';
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    int delay = 3;
    Future.delayed(
      Duration(seconds: delay),
      () => {Navigator.pushReplacementNamed(context, LandingPage.routeName)},
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepBluishPurple,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text("Hallo Dunia")],
          ),
        ),
      ),
    );
  }
}
