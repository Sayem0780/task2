import 'package:flutter/material.dart';

class Offer4YouPage extends StatefulWidget {
  const Offer4YouPage({Key? key}) : super(key: key);

  @override
  State<Offer4YouPage> createState() => _Offer4YouPageState();
}

class _Offer4YouPageState extends State<Offer4YouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Offer For You",style: TextStyle(color: Colors.black),),

        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
      ),

      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (_,index){
            return Container(
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "https://www.ishn.com/ext/resources/Issues/2019/07-July/ISHN0719_F4_pic.jpg?1562003164",
                    fit: BoxFit.cover,
                  )),
            );
          }

      )

    );
  }
}
