import 'package:financial_app/utils/routes.dart';
import 'package:financial_app/view/description/description.dart';
import 'package:financial_app/view/expert/expert_page.dart';
import 'package:financial_app/view/finance/finance_page.dart';
import 'package:financial_app/view/labor/labor_page.dart';
import 'package:financial_app/view/offer/offer_for_you.dart';
import 'package:financial_app/view/search/search_page.dart';
import 'package:financial_app/view/shop/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.w3schools.com/howto/img_avatar.png"),
                      radius: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Sohagh",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.grey,
                            size: 15,
                          ),
                          Text(
                            "Dhaka",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.circular(13)),
                    child: Image.asset(
                      "assets/icons/youtube_with.png",
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(

                    child: Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.circular(13)),
                        child: const Icon(
                            Icons.notifications_outlined)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 290,
                      height: 48,
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                          EdgeInsets.all(10),
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: InkWell(
                            onTap: () {
                             //
                              newnextpage(SearchPage(), context);
                            },
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                              size: 20,
                            ),
                          ),
                          labelStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          hintText: "Search Here",
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                            BorderRadius.circular(16),
                          ),
                          disabledBorder: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                            BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                     // Get.to(EmergencyPage());
                    },
                    child: Container(
                      width: 64,
                      height: 48,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                          BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 20,
                              height: 17,
                              child: Image.asset(
                                  "assets/icons/emergency.png")),
                          Text(
                            "Emergency",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            category(),
            SizedBox(
              height: 20,
            ),
            slider(),

            const SizedBox(
              height: 10,
            ),

            hotels(),
            // arroundworld(),
          ],
        ),
      )
    );
  }

  Widget category() {
   // HomeController homeController = Get.find();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {

                  newnextpage(LaborPage(), context);

                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          height: 65,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Image.asset("assets/icons/labor.png",color: Colors.black54,)),
                      SizedBox(height: 5),
                      Text(
                        "Labor",
                        style: TextStyle(
                            color: const Color(0xFf9C9C9C),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: InkWell(
                  onTap: () {
                    newnextpage(ExpertPage(), context);
                  },
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          height: 65,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Image.asset("assets/icons/expert.png",color: Colors.black54,)),
                      SizedBox(height: 5),
                      Text(
                        "Expert",
                        style: TextStyle(
                            color: const Color(0xFf9C9C9C),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: InkWell(
                  onTap: () {
                    newnextpage(ShopPage(), context);
                  },
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          height: 65,
                          width: 80,
                          decoration: BoxDecoration(

                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Image.asset("assets/icons/shop.png",color: Colors.black54,)),
                      SizedBox(height: 5),
                      Text(
                        "Shop",
                        style: TextStyle(
                            color: const Color(0xFf9C9C9C),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: InkWell(
                  onTap: () {
                    newnextpage(FinancePage(), context);
                  },
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          height: 65,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Image.asset("assets/icons/finance.png",color: Colors.black54,)),
                      SizedBox(height: 5),
                      Text(
                        "Finance",
                        style: TextStyle(
                            color: const Color(0xFf9C9C9C),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),

            ],
          )),
    );
  }

  Widget slider() {
    // final provider = Provider.of<Hotelprovider>(context);
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Offers for you",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: 50,
                        height: 1,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {
                      newnextpage(Offer4YouPage(), context);
                    },
                    child: Row(
                      children: [

                        Text("See all"),
                        Icon(
                          Icons.arrow_forward,
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: PageView.builder(
                itemCount: 4,
                itemBuilder: ((context, index) {
                  // var data = provider.offerbanner!.data[index];
                  return Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://www.ishn.com/ext/resources/Issues/2019/07-July/ISHN0719_F4_pic.jpg?1562003164",
                          fit: BoxFit.cover,
                        )),
                  );
                })),
          )
        ],
      ),
    );
  }

  Widget hotels() {
   // HomeController homeController = Get.put(HomeController());
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Popular Deals",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 50,
                      height: 1,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              InkWell(
                  onTap: () {
                    newnextpage(SearchPage(), context);
                  },
                  child: Row(
                    children: [

                      Text("See all"),
                       Icon(
                        Icons.arrow_forward,
                      ),
                    ],
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: ((context, index) {
             // var hotelData = homeController.popularHotelList[index];
              return ItemList();
            })),
      ],
    );
  }

  Widget ItemList(){
    return InkWell(
      onTap: () {
        newnextpage(const DescriptionItem(), context);
      },
      child: Container(

        height: 144,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 25,vertical: 4),
        padding: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 144,
                width: 105,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  child: Image.network(
                    "https://yt3.ggpht.com/ytc/AMLnZu9Od_5QZXrfAQNFv3EqsXQ427o8ZfBJDhG8dbYk=s900-c-k-c0x00ffffff-no-rj",
                    // data.hotelImages!,
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Title Here",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.location_on, size: 15),
                        SizedBox(
                          width: Get.width * 0.3,
                          child: Text(
                            "Dhaka",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: const BorderRadius.all(
                                Radius.circular(20)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8),
                            child: Text(
                              "Worker",
                              style: TextStyle(
                                  color: Colors.black54),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),

                      ],
                    ),
                    SizedBox(height: 10),
                    RatingBar.builder(
                      itemSize: 16,
                      initialRating:
                      double.parse("3"),
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(
                          horizontal: 1.0),
                      itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          size: 5,
                          color: Colors.orangeAccent),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Text(
                      "10",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 36,
                    width: 28,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          "assets/icons/discount_badge.png",color: Colors.blue,
                          scale: 1.1,
                        ),
                        Positioned(
                          top: 10,
                          right: 0,
                          child: Text(
                            "20%",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              // fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "available offer",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          // fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "2000 tk",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue),
                      ),
                      Text(
                        "100 tk",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                            decoration:
                            TextDecoration.lineThrough,
                            color:  Colors.blue),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
