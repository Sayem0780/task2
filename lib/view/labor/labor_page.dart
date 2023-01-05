import 'package:financial_app/utils/coustome_text.dart';
import 'package:flutter/material.dart';

import '../../utils/routes.dart';
import 'labor_list_page.dart';

class LaborPage extends StatefulWidget {
  const LaborPage({Key? key}) : super(key: key);

  @override
  State<LaborPage> createState() => _LaborPageState();
}

class _LaborPageState extends State<LaborPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Labor",style: TextStyle(color: Colors.black),),

        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Card(
                      child: InkWell(
                        onTap: (){
                          newnextpage(LaborListPage(),context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/icons/labor.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Labor",
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
                        onTap: (){
                          newnextpage(LaborListPage(),context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/icons/labor.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Labor 2",
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
            Row(
              children: [
                Expanded(
                    child: Card(
                      child: InkWell(
                        onTap: (){newnextpage(LaborListPage(),context);},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/icons/labor.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Labour3",
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
                        onTap: (){newnextpage(LaborListPage(),context);},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/icons/labor.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "labor4",
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
            Row(
              children: [
                Expanded(
                    child: Card(
                      child: InkWell(
                        onTap: (){newnextpage(LaborListPage(),context);},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/icons/labor.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Labor",
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
                        onTap: (){newnextpage(LaborListPage(),context);},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/icons/labor.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Labor 2",
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
            Row(
              children: [
                Expanded(
                    child: Card(
                      child: InkWell(
                        onTap: (){newnextpage(LaborListPage(),context);},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/icons/labor.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Labour3",
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
                        onTap: (){newnextpage(LaborListPage(),context);},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/icons/labor.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "labor4",
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
