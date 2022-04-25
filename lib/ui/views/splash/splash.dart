import 'dart:async';

import 'package:flutter/material.dart';
import 'package:niot_app/constants/colors.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashView createState() => _SplashView();
}

class _SplashView extends State<SplashView> {
  Timer? _delaySplash;

  @override
  void initState() {
    super.initState();
    _delaySplash = Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed("/home");
    });
  }

  @override
  void dispose() {
    super.dispose();
    _delaySplash!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Container(
               width: MediaQuery.of(context).size.width*0.5,
               height: MediaQuery.of(context).size.width*0.5,
              child:  Image(image: AssetImage('assets/images/logo_blanco.png')),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "APP NIOT",
              style: TextStyle(
                  fontSize: 32,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
