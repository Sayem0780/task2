import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/routes.dart';
import '../description/description.dart';
import 'labor_details_page.dart';

class LaborListPage extends StatefulWidget {
  const LaborListPage({Key? key}) : super(key: key);

  @override
  State<LaborListPage> createState() => _LaborListPageState();
}

class _LaborListPageState extends State<LaborListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Labour List",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      backgroundColor: Colors.white.withOpacity(.8),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, index) {
            return Padding(
                padding:
                    const EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
                child: ListTile(
                  minLeadingWidth: 50,
                  contentPadding: const EdgeInsets.only(
                      top: 4, left: 5, right: 5, bottom: 5),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white)),
                  tileColor: Colors.white,
                  leading: const CircleAvatar(
                    radius: 35,
                    backgroundColor: darkBlueColor,
                  ),
                  title: const Text("Mamun Islam Mim",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: darkBlueColor)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "BDT : 700 TK",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: redColor),
                      ),
                      Text(
                        "Age 22 , \nContact : 01761810531 ,\nAddress : Farmgate",
                      ),
                    ],
                  ),
                  trailing: InkWell(
                      onTap: () {
                        newnextpage(const LaborDetailsPage(), context);
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: iconColor,
                      )),
                ));
          }),
    );
  }
}
