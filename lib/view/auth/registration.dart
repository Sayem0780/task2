import 'package:financial_app/utils/coustom_edittext.dart';
import 'package:financial_app/utils/routes.dart';
import 'package:financial_app/view/auth/login.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController dobdayController = TextEditingController();
  TextEditingController dobmonthController = TextEditingController();
  TextEditingController dobyearController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  var items = ["Male", "Female", "Other"];

  List<String> preferlist = [];

  bool istap = false;
  final formKey = GlobalKey<FormState>();
  bool obscureText = true;

  String imagepath = "";

  bool _switchValue = true;

  Future<void> _selectDateFromPicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year - 20),
        firstDate: DateTime(DateTime.now().year - 30),
        lastDate: DateTime(DateTime.now().year + 20));
    if (picked != null) {
      dobdayController.text = DateFormat('dd').format(picked);
      dobmonthController.text = DateFormat('MMM').format(picked);
     dobyearController.text = DateFormat('yyyy').format(picked);
    }
  }
  //image piker
  XFile? image;
  final ImagePicker picker = ImagePicker();

  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  int value = 0;
  bool visibilityTag = false;
  bool view = false;
  bool visibilityObs = false;
  bool _isVisible = false;
  void _changed(bool visibility, String field) {
    setState(() {
      // if (field == "tag"){
      //   visibilityTag = visibility;
      // }
      // if (field == "obs"){
      //   visibilityObs = visibility;
      // }

      if(value==1){

      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bk.png"), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,


          body:  CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Container(
                      child: Column(

                        children: [

                          Expanded(
                            child: Container(

                            ),
                          ),


                          Text(
                            "Registration",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 100,
                              height: 1,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            child: CustomTextfield(
                              readOnly: false,
                              obscureText: false,
                              title: "Full Name",
                              Controller: nameController,
                              color: const Color(0xffF7F7F7).withOpacity(0.4),
                            ),
                          ),
                          SizedBox(height: 15),



                          Container(
                            child: CustomTextfield(
                              readOnly: false,
                              obscureText: false,
                              title: "Your email address",
                              Controller: emailController,
                              color: const Color(0xffF7F7F7).withOpacity(0.4),
                            ),
                          ),
                          SizedBox(height: 15),

                          Container(
                                  height: 50,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.40),
                                      borderRadius: BorderRadius.circular(27)),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
                                      const Text(
                                        "+880",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 20,
                                        width: 2,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                      Flexible(
                                          child: textbox(
                                              hintext: "Phone",
                                              controller:
                                              phoneController)),
                                    ],
                                  ),
                                ),
                          SizedBox(height: 15),

                          //pass
                          Container(
                            child: CustomTextfield(
                              readOnly: false,
                              obscureText: obscureText,
                              title: "Password",
                              Controller: passwordController,
                              color: const Color(0xffF7F7F7).withOpacity(0.4),
                              icon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                  child: obscureText
                                      ? const Icon(
                                    Icons.visibility_off,
                                    color: Colors.black,
                                  )
                                      : const Icon(
                                    Icons.visibility,
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                          SizedBox(height: 15),

                          Container(
                                  height: 50,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.40),
                                      borderRadius: BorderRadius.circular(27)),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
                                      const Text(
                                        "Birthday",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(width: 10),
                                      Flexible(
                                        child: textbox(
                                          hintext: "day",
                                          controller: dobdayController,
                                          onTap: () {
                                            _selectDateFromPicker(context);
                                          },
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 2,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                      Flexible(
                                          child: textbox(
                                            hintext: "month",
                                            controller: dobmonthController,
                                            onTap: () {
                                              _selectDateFromPicker(context);
                                            },
                                          )),
                                      Container(
                                        height: 20,
                                        width: 2,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                      Flexible(
                                          child: textbox(
                                            hintext: "year",
                                            controller: dobyearController,
                                            onTap: () {
                                              _selectDateFromPicker(context);
                                            },
                                          )),
                                    ],
                                  ),
                                ),

                          //city
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 120,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.40),
                                    borderRadius: BorderRadius.circular(27)),
                                child: Theme(
                                  data: ThemeData(
                                    textTheme: const TextTheme(
                                        subtitle1:
                                        TextStyle(color: Colors.white)),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButtonFormField(
                                        hint: Text("Gender",
                                            style:
                                            TextStyle(color: Colors.white)),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10, 10, 10, 10),
                                          border: InputBorder.none,
                                          isDense: true,
                                        ),
                                        items: const [
                                          DropdownMenuItem(
                                              child: Text(
                                                "Male",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              value: 'Male'),
                                          DropdownMenuItem(
                                              child: Text(
                                                "Female",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              value: 'Female')
                                        ],
                                        onChanged: (value) {
                                          genderController.text =
                                              value.toString();
                                        }),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.40),
                                      borderRadius: BorderRadius.circular(27)),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
                                      const Text(
                                        "City",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 20,
                                        width: 2,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                      Flexible(
                                          child: textbox(
                                              hintext: "Dhaka",
                                              controller:
                                              cityController)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 25),
                          Text(
                                  "What do you prefer?",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                          SizedBox(height: 11),
                          categoryItem(),
                          SizedBox(height: 20),
                       if (_isVisible) ImageContener(),







                          SizedBox(height: 15),
                          ElevatedButton(
                            child: Text('Register'),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                shape: StadiumBorder(),
                                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                                textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),


                          SizedBox(height: 24),
                          InkWell(
                            onTap: (){
                              newnextpage(LoginPage(), context);
                            },
                            child: Text(
                              "I have an account? Login",
                              style: TextStyle(
                                  color: Color(0xffEEEFED).withOpacity(0.7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],

          ),






        ),
      ),
    );
  }



  Widget textbox(
      {String? hintext,
        TextEditingController? controller,
        final GestureTapCallback? onTap,
        bool? ispassword = false}) {
    return TextField(
      onTap: onTap,
      style: const TextStyle(color: Colors.white),
      controller: controller,
      obscureText: ispassword == true ? true : false,
      decoration: InputDecoration(
          border: InputBorder.none,
          isDense: true,
          hintText: hintext,
          hintStyle:
          TextStyle(color: const Color(0xFFD0D0D0).withOpacity(0.80)),
          contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10)),
    );
  }

  Widget categoryItem() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
         // CustomRadioButton("User", 1 ,),

          CustomRadioButton("Expert", 2,),
          const SizedBox(
            width: 10,
          ),
          CustomRadioButton("Finance", 3,),
          const SizedBox(
            width: 10,
          ),
          CustomRadioButton("Company", 4,),
          const SizedBox(
            width: 10,
          ),
          CustomRadioButton("Legal Support", 5,)
        ],
      ),
    );
  }

  Widget CustomRadioButton(String text, int index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white54,
          border: Border.all(
              color: (value == index && _isVisible) ? Colors.blue : Colors.transparent),
          borderRadius: BorderRadius.circular(30)),
      child: InkWell(
        onTap: () {

          setState(() {
            value = index;
            if(value==index){
              _isVisible = !_isVisible;
            }else {

            }

              // if (_isVisible) ImageContener(); // no dummy container/ternary needed
            // Text('This is another text'),
            // ElevatedButton(child: Text('show/hide'), onPressed: (){
            // setState(() {
            // _isVisible = !_isVisible;
            // });
            // },)

          });
        },
        child:   Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            text,
            style: TextStyle(
                color: (value == index && _isVisible) ? Colors.white : Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        )
      ),
    );
  }


  Widget ImageContener(){
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Text("Please upload your document",style: TextStyle(color: Colors.white),),
          const SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              myAlert();
            },
            style: ElevatedButton.styleFrom(shape: StadiumBorder(),  primary: Colors.white54, ),
            child:  Wrap(
              children: <Widget>[
                Icon(
                  Icons.upload,
                  color: Colors.white,
                  size: 16.0,
                ),
                SizedBox(
                  width:10,
                ),
                Text("Upload ID Card", textAlign: TextAlign.center, style:TextStyle(color: Colors.white),)
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //if image not null show the image
          //if image null show text
          image != null
              ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.file(
                //to show image, you type like this.
                File(image!.path),
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: 300,
              ),
            ),
          )
              : Text(
            "No Image",
            style: TextStyle(fontSize: 20,color: Colors.white),
          )
        ],
      ),
    );

  }


  //show popup dialog
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

}
