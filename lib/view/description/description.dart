import 'package:financial_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class DescriptionItem extends StatefulWidget {
  const DescriptionItem({Key? key}) : super(key: key);

  @override
  State<DescriptionItem> createState() => _DescriptionItemState();
}

class _DescriptionItemState extends State<DescriptionItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFfF7F7F7),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 1,
            expandedHeight: 260,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  PageView.builder(
                      itemCount: 5,
                      itemBuilder: ((context, index) {
                        return Image.network("https://yt3.ggpht.com/ytc/AMLnZu9Od_5QZXrfAQNFv3EqsXQ427o8ZfBJDhG8dbYk=s900-c-k-c0x00ffffff-no-rj");
                      })),
                  Positioned(
                    top: 40,
                    left: 24,
                    child: Container(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 24,
                    child: Container(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Positioned(
                    top: 89,
                    right: 24,
                    child: Container(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.photo_library_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 24,
                    top: 183,
                    child: Container(
                      height: 36,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(48)),
                      child: Text(
                        "Worker",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),

                ],
              ),
              centerTitle: false,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "30",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFF4B806)),
                      ),
                      Spacer(),
                      Container(
                        height: 48,
                        width: 48,
                        child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              "assets/icons/youtube.png",
                            )),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 48,
                        width: 48,
                        child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              "assets/icons/youtube_with.png",
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Better Work Bangladesh",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: 15,
                      ),
                      Text(
                        "Dhaka",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Dhaka Work is an online marketplace that connects Freelancers around the world with business owners. Businesses who need other people to help them to support",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9C9C9C)),
                  ),

                  Divider(),


                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 24, top: 32, right: 24),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Available Offers",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(
                              Icons.calendar_month,
                              size: 15,
                              color: Color(0xFFD0D0D0),
                            ),
                          ),
                          Text(
                            "20-12-2022",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF9C9C9C)),
                          )
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      // showModalBottomSheet(
                      //     isScrollControlled: true,
                      //     backgroundColor: Colors.transparent,
                      //     context: context,
                      //     builder: ((context) =>
                      //         AvailableofferButtomSheet()));
                    },
                    child: Container(
                      height: 35,
                      width: 82,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "More",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF9C9C9C)),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          // sliverlist()
          SliverToBoxAdapter(child: ItemList()),
          SliverToBoxAdapter(child: services()),
          SliverToBoxAdapter(child: latestreview()),
          SliverToBoxAdapter(child: map()),
          SliverToBoxAdapter(child: page())

        ],
      ),
    );
  }


  Widget ItemList(){
    return  ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: ((context, index) {
          // var hotelData = homeController.popularHotelList[index];
          return Container(
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
          );
        }));



  }
  Widget roomlist() {
    // final provider = Provider.of<Hotelprovider>(context);

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        // var data = provider.hotelRoom!.data![index];
        return resturentbox(null);
      },
    );
  }

  Widget resturentbox(data) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, bottom: 10),
      height: 144,
      width: 365,
      padding: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          // showModalBottomSheet(
          //     backgroundColor: Colors.transparent,
          //     isScrollControlled: true,
          //     context: context,
          //     builder: ((context) => GrabOffer()));
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 144,
                width: 105,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                  child: Image.network(
                    "https://img1.10bestmedia.com/Images/Photos/378649/Park-Hyatt-New-York-Manhattan-Sky-Suite-Master-Bedroom-low-res_54_990x660.jpg",
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
                      "Single Room",maxLines: 1,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 12),
                    Text("A luxurious 2 bed room. With amazing services and luxury... ",maxLines: 2,style: TextStyle(color: Colors.black38),),
                    SizedBox(height: 12),

                    Row(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,

                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text("2 Bed",style: TextStyle(color: Colors.black54),),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(

                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,

                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text("Night Stay",style: TextStyle(color: Colors.black54),),
                          ),
                        )

                      ],
                    ),
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
                          "assets/discount_badge.png",
                          scale: 1.1,
                        ),
                        Positioned(
                          top: 10,
                          right: 0,
                          child: Text(
                            "30%",
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
                        "1800"+" tk",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff08BA64)),
                      ),
                      Text(
                        "400"+" tk",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                            decoration:
                            TextDecoration.lineThrough,
                            color: Color(0xff08BA64)),
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

  Widget services() {
    return Container(
      margin: EdgeInsets.only(left: 24, top: 32, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Service",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
                size: 20,
              ),
              SizedBox(width: 10),
              Text("Laundry Service")
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
                size: 20,
              ),
              SizedBox(width: 10),
              Text("Laundry Service")
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
                size: 20,
              ),
              SizedBox(width: 10),
              Text("Laundry Service")
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
                size: 20,
              ),
              SizedBox(width: 10),
              Text("Laundry Service")
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
                size: 20,
              ),
              SizedBox(width: 10),
              Text("Laundry Service")
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
                size: 20,
              ),
              SizedBox(width: 10),
              Text("Laundry Service")
            ],
          ),
        ],
      ),
    );
  }

  Widget latestreview() {
    return Container(
      margin: EdgeInsets.only(left: 24, top: 32, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Latest Reviews",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text("Sohagh"),
                        SizedBox(height: 5),
                        Row(
                          children: List.generate(
                              5,
                                  (index) => Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              )),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget map() {
    return Container(
      margin: EdgeInsets.only(left: 24, top: 32, right: 24),
      height: 150,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network("https://www.techetron.com/wp-content/uploads/2015/01/dhakamaps.jpg",fit: BoxFit.cover,)
      ),
    );
  }
  Widget page() {
    return Container(
      margin: EdgeInsets.only(left: 24, top: 32, right: 24),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: ListTile(
              tileColor: Colors.white,
              leading: Image.asset("assets/icons/facebook.png",height: 30,),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.black26,),
              title: Text("Facebook Page",style: TextStyle(color: Colors.black54),),
            ),
          ),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: ListTile(
              tileColor: Colors.white,
              leading:  Image.asset("assets/icons/website.png",height: 30,),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.black26,),
              title: Text("Visit website",style: TextStyle(color: Colors.black54),),
            ),
          ),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: ListTile(
              tileColor: Colors.white,
              leading:  Image.asset("assets/icons/privacy.png",height: 30,),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.black26,),
              title: Text("Privacy Policy",style: TextStyle(color: Colors.black54),),
            ),
          ),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: ListTile(
              tileColor: Colors.white,
              leading:  Image.asset("assets/icons/help.png",height: 30,),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.black26,),
              title: Text("Help & Support",style: TextStyle(color: Colors.black54),),
            ),
          ),
          SizedBox(height: 30),

        ],
      ),
    );
  }

}