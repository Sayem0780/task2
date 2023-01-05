import 'package:financial_app/utils/coustome_text.dart';
import 'package:flutter/material.dart';

class ExpertPage extends StatefulWidget {
  const ExpertPage({Key? key}) : super(key: key);

  @override
  State<ExpertPage> createState() => _ExpertPageState();
}

class _ExpertPageState extends State<ExpertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Expert",style: TextStyle(color: Colors.black),),

        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
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
                                Image.asset("assets/icons/expert.png",height: 60,),
                                const SizedBox(height: 10,),
                                const coustomeText(
                                    text: "Architecture",
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
                                Image.asset("assets/icons/expert.png",height: 60,),
                                const SizedBox(height: 10,),
                                const coustomeText(
                                    text: "Civil",
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
                                Image.asset("assets/icons/expert.png",height: 60,),
                                const SizedBox(height: 10,),
                                const coustomeText(
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
                          child: Column(
                            children: [
                              Image.asset("assets/icons/expert.png",height: 60,),
                              const SizedBox(height: 10,),
                              const coustomeText(
                                  text: "Plumber",
                                  size: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500
                              )
                            ],
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
                          child: Column(
                            children: [
                              Image.asset("assets/icons/expert.png",height: 60,),
                              const SizedBox(height: 10,),
                              const coustomeText(
                                  text: "Architecture",
                                  size: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500
                              )
                            ],
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
                                Image.asset("assets/icons/expert.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Civil",
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
                                Image.asset("assets/icons/expert.png",height: 60,),
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
                                Image.asset("assets/icons/expert.png",height: 60,),
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
                                Image.asset("assets/icons/expert.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Architecture",
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
                                Image.asset("assets/icons/expert.png",height: 60,),
                                SizedBox(height: 10,),
                                coustomeText(
                                    text: "Civil",
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
                                Image.asset("assets/icons/expert.png",height: 60,),
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
                                Image.asset("assets/icons/expert.png",height: 60,),
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
