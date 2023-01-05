import 'package:financial_app/utils/coustome_text.dart';
import 'package:flutter/material.dart';

class FinancePage extends StatefulWidget {
  const FinancePage({Key? key}) : super(key: key);

  @override
  State<FinancePage> createState() => _FinancePageState();
}

class _FinancePageState extends State<FinancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finance",style: TextStyle(color: Colors.black),),

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
                        onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/icons/finance.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Finance",
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
                                Image.asset("assets/icons/finance.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Bank",
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
                        onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/icons/finance.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Labour",
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
                                Image.asset("assets/icons/finance.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Plumber",
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
