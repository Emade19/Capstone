import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'package:flutter/src/widgets/image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  decideNavigation(){
    Timer(
        const Duration(seconds: 3),
            (){  Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const LoginScreen()));});
  }

  
  onInit() {
    super.initState();

    decideNavigation();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffff1f319d),
        body: Center(
          child: GestureDetector(
            onTap: (){  Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const LoginScreen()));},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  const [
                  Image(
                      image: AssetImage('assets/logo_white.svg')
                  ),
                  Text("REPAIR HOME",
                    style: TextStyle(
                    color: Colors.white,
                      fontWeight: FontWeight.bold,
                    fontSize: 45, fontFamily: 'goboldthin'
                  ),
                  ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
