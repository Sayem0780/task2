import 'package:financial_app/utils/colors.dart';
import 'package:flutter/material.dart';

class LaborDetailsPage extends StatefulWidget {
  const LaborDetailsPage({Key? key}) : super(key: key);

  @override
  State<LaborDetailsPage> createState() => _LaborDetailsPageState();
}

class _LaborDetailsPageState extends State<LaborDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading:   CircleAvatar(
          backgroundColor: mediumBlueColor,
          child: InkWell(
              onTap: (){Navigator.pop(context);},
              child: const Icon(Icons.arrow_back,color: iconColor,)),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        children: [
          const CircleAvatar(
            radius: 55,
            backgroundColor: iconColor,
            backgroundImage: AssetImage("assets/icons/labor.png"),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:   [
              Container(
                padding: EdgeInsets.only(top: 8,bottom: 8,left: 10,right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: hintTextColor.withOpacity(.5)
                ),
                child: const Text(
                  "Per Day :   750 Tk",
                  style: TextStyle(
                      color: kGoogleColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "MD. MAMUN ISLAM",
                style: TextStyle(
                    color: kGoogleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Position : Labour",
            style: TextStyle(fontSize: 16,color: darkBlueColor,fontWeight: FontWeight.bold),
          ),
          const Text(
            "Email : amarsopno678@gmail.com",
            style: TextStyle(fontSize: 16,color: darkBlueColor,fontWeight: FontWeight.bold),
          ),
          const Text(
            "Contact : 01761810531",
            style: TextStyle(fontSize: 16,color: darkBlueColor,fontWeight: FontWeight.bold),
          ),
          const Text(
            "Date of birth : 11 May 2001",
            style: TextStyle(fontSize: 16,color: darkBlueColor,fontWeight: FontWeight.bold),
          ),
          const Text(
            "Nationality : Bangladeshi",
            style: TextStyle(fontSize: 16,color: darkBlueColor,fontWeight: FontWeight.bold),
          ),
          const Text(
            "Marital Status : Unmarried",
            style: TextStyle(fontSize: 16,color: darkBlueColor,fontWeight: FontWeight.bold),
          ),
          const Text(
            "Height : 5\'6 ",
            style: TextStyle(fontSize: 16,color: darkBlueColor,fontWeight: FontWeight.bold),
          ),
          const Text(
            "Blood: O+",
            style: TextStyle(fontSize: 16,color: darkBlueColor,fontWeight: FontWeight.bold),
          ),
          const Text(
            "Address : Farmgate, Dhaka",
            style: TextStyle(fontSize: 16,color: darkBlueColor,fontWeight: FontWeight.bold),
          ),

          const SizedBox(
            height: 30,
          ),

          // Accept Button
          Card(
            color: kButtonColor,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: kButtonColor.withOpacity(.5), width: 5)),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(11.0),
                child: Text(
                  "Accept",
                  style: TextStyle(
                      color: kBackgroundColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
