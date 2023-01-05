import 'package:financial_app/utils/coustome_text.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop",style: TextStyle(color: Colors.black),),

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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Iron",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Cement",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Iron",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Cement",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Iron",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Cement",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Iron",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Cement",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Iron",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Cement",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Iron",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Cement",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Iron",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Cement",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Iron",
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
                                Image.asset("assets/icons/shop.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Cement",
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
