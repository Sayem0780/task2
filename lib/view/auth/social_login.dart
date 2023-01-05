import 'package:financial_app/utils/Socail_login_button.dart';
import 'package:financial_app/utils/coustome_text.dart';
import 'package:financial_app/utils/routes.dart';
import 'package:financial_app/view/auth/login.dart';
import 'package:flutter/material.dart';

class SocialLogin extends StatefulWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  State<SocialLogin> createState() => _SocialLoginState();
}

class _SocialLoginState extends State<SocialLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bk.png"), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,

          body: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Container(
                    child: Column(

                      children: [

                        Expanded(
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              "assets/icons/applogo.png",

                            ),
                          ),
                        ),

                        Text(
                          "Sign in with social media",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 30),

                        Container(
                          height: 45,
                          width: 250,
                          child: SocialLogoButton(
                              onTap: () {},
                              title: "Continue With Google",
                              image: "assets/icons/google.png",
                              color: Colors.white30),
                        ),
                        SizedBox(height: 13),
                        SizedBox(
                          height: 45,
                          width: 250,
                          child: SocialLogoButton(
                              onTap: () {},
                              title: "Continue With Facebook",
                              image: "assets/icons/facebook.png",
                              color: Colors.white30),
                        ),
                        SizedBox(height: 13),
                        SizedBox(
                          height: 45,
                          width: 250,
                          child: SocialLogoButton(
                              onTap: () {},
                              title: "Continue With Apple",
                              image: "assets/icons/apple.png",
                              color: Colors.white30),
                        ),
                        SizedBox(height: 52),
                        SizedBox(
                          height: 45,
                          width: 250,
                          child: SocialLogoButton(
                              onTap: () {
                                newnextpage(LoginPage(), context);
                              },
                              title: "Continue With Email",
                              image: "assets/icons/email.png",
                              color: Colors.white30),
                        ),
                        SizedBox(height: 24),
                        InkWell(
                          onTap: (){},
                          child: Text(
                            "Skip for now",
                            style: TextStyle(
                                color: Color(0xffEEEFED).withOpacity(0.7),
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              )
            ],

          ),

        ),
      ),
    );
  }
}
