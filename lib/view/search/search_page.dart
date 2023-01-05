import 'package:financial_app/utils/routes.dart';
import 'package:financial_app/view/description/description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60.0,
        elevation: 1,
        title: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              hintText: " Search...",
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                color: Colors.blue,
                onPressed: () {},
              )),
          style: TextStyle(color: Colors.black, fontSize: 15.0),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: ItemList() ,
    );
  }
}


Widget ItemList(){
  return  ListView.builder(
      shrinkWrap: true,

      itemCount: 15,
      itemBuilder: ((context, index) {
        // var hotelData = homeController.popularHotelList[index];
        return InkWell(
          onTap: (){
            newnextpage(DescriptionItem(), context);
          },
          child: Container(
            height: 144,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
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
                            "4000 tk",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue),
                          ),
                          Text(
                            "1000 tk",
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
      }));



}