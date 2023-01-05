import 'dart:async';

import 'package:financial_app/utils/coustome_text.dart';
import 'package:financial_app/utils/routes.dart';
 import 'package:financial_app/view/auth/social_login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      newpage(SocialLogin(), context);

    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bk.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body:  Column(
            children: [
              Expanded(
                child: Center(
                  child: Padding(
                      padding: const EdgeInsets.all(80),
                      child: coustomeText(
                        text: "Welcome\nTo\nOur Service",
                        size: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.center,
                      )
                  ),
                ),
              ),

              TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0.0, end: 1),
                duration: const Duration(milliseconds: 2700),
                builder: (context, value, _) => CircularProgressIndicator(value: value),
              ),

              SizedBox(height: 20,),
              coustomeText(
                text: "Financial Application",
                size: 14,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              coustomeText(
                text: "2023",
                size: 12,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 15,)
            ],
          )

      ),
    );


  }
}
