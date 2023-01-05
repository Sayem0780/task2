import 'package:financial_app/utils/coustom_edittext.dart';
import 'package:financial_app/utils/routes.dart';
import 'package:financial_app/view/auth/registration.dart';
import 'package:financial_app/view/nav/buttom_navigation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  bool obscureText = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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

          body:  CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
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
                            "Email Login",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 100,
                              height: 1,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 30),

                          Container(
                            child: CustomTextfield(
                              readOnly: false,
                              obscureText: false,
                              title: "Your email address",
                              Controller: emailController,
                              color: const Color(0xffF7F7F7).withOpacity(0.4),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: CustomTextfield(
                              readOnly: false,
                              obscureText: obscureText,
                              title: "Password",
                              Controller: passwordController,
                              color: const Color(0xffF7F7F7).withOpacity(0.4),
                              icon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                  child: obscureText
                                      ? const Icon(
                                    Icons.visibility_off,
                                    color: Colors.black,
                                  )
                                      : const Icon(
                                    Icons.visibility,
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                          SizedBox(height: 60),
                          ElevatedButton(
                            child: Text('Login'),
                            onPressed: () {
                              newnextpage(ButtomNavigationPage(), context);
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                shape: StadiumBorder(),
                                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                                textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),


                          SizedBox(height: 24),
                          InkWell(
                            onTap: (){
                              newnextpage(RegistrationPage(), context);
                            },
                            child: Text(
                              "Don't have account? Registration",
                              style: TextStyle(
                                  color: Color(0xffEEEFED).withOpacity(0.7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(height: 50),
                        ],
                      ),
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
