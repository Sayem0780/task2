import 'package:financial_app/view/expert/expert_page.dart';
import 'package:financial_app/view/home/home_page.dart';
import 'package:financial_app/view/offer/offer_for_you.dart';
import 'package:financial_app/view/profile/profile_page.dart';
import 'package:financial_app/view/shop/shop_page.dart';
import 'package:financial_app/view/support/support_page.dart';
import 'package:flutter/material.dart';

class ButtomNavigationPage extends StatefulWidget {
  const ButtomNavigationPage({Key? key}) : super(key: key);

  @override
  State<ButtomNavigationPage> createState() => _ButtomNavigationPageState();
}

class _ButtomNavigationPageState extends State<ButtomNavigationPage> {
  bool isTap1 = false;
  bool isTap2 = false;
  bool isTap3 = false;
  bool isTap4 = false;
  bool isTap5 = false;

  PageController pageController = PageController();

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          HomePage(),
          const SupportPage(),
          const Offer4YouPage(),
         ProfilePage(),
        ],
      ),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/home.png",
                height: 30,color: Colors.black54,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/support.png",
                height: 30,color: Colors.black54,
              ),
              label: "Support",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/offer.png",
                height: 30,color: Colors.black54,

              ),
              label: "Offer for you",
            ),

            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/profile.png",
                height: 30,color: Colors.black54,
              ),
              label: "Profile",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.jumpToPage(index);
          },
        ),
      ),
    );
  }
}
