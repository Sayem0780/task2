import 'package:financial_app/utils/coustome_text.dart';
import 'package:flutter/material.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Legal Support",style: TextStyle(color: Colors.black),),

        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Row(
              children: [
                Expanded(
                    child: Card(
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/icons/support.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Support",
                                    size: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )

                ),
                Expanded(
                    child: Card(
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/icons/support.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Local Support",
                                    size: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )

                ),
              ],
            ),




          ],
        ),
      ),

    );
}
  }
