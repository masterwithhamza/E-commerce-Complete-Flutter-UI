import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'ForgottenPage.dart';
import 'HomePage.dart';
// import 'package:flutter_social_buttons_example/res/colors.dart';
//import 'package:flutter_social_buttons_example/res/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'another login.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);
  @override
  State<signup> createState() => _signupState();
}
class _signupState extends State<signup> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
     //   appBar: AppBar(title: const Text("My Profile"),backgroundColor: Colors.pink,),
        body: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child:  Image.asset("images/1024.png",width: 200,height: 200,),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
                  )),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              TextButton(
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => ResetPasswordPage()),
                 );
               },
                child: const Text('Forgot Password ?',style: TextStyle(color: Colors.red,),),
              ),
              Container(
                  height: 40,
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: ElevatedButton(
                    onPressed: () {

                      print(nameController.text);
                      print(passwordController.text);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    child: const Text('Login',style: TextStyle(fontStyle: FontStyle.italic),),
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Does not have account ?',style: TextStyle(color: Colors.black),),
                  TextButton(
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 16,color: Colors.red),
                    ),

                    onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                    //signup screen
                  },
                  )



                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Try another way : ',style: TextStyle(color: Colors.black),),
                  TextButton(
                    child: const Text(
                      '[ Click me ]',
                      style: TextStyle(fontSize: 17,color: Colors.red),
                    ),

                    onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => another()),
                    );
                    //signup screen
                  },
                  )

            ],
          )

        ]
          ),

      )
    );

  }
}
///////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:
        IconButton( onPressed: (){
          Navigator.pop(context);
        },
            icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)), systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text ("Sign up", style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 20,),
                        Text("Create an Account",style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),),
                        SizedBox(height: 40,)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40
                      ),
                      child: Column(
                        children: [
                          makeInput(label: "Enter Your Name"),
                          makeInput(label: "Enter Your Email"),
                          makeInput(label: "Enter Your Password",obsureText: true),
                          makeInput(label: "Enter Your Confirm Pasword",obsureText: true)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        padding: EdgeInsets.only(top: 3,left: 3),
                          child: ElevatedButton(

                            child: Text('Sign Up',style: TextStyle(fontStyle: FontStyle.italic),),
                            onPressed: () {

                              Navigator.pop(context);
                               Fluttertoast.showToast(
                          msg: "SignUp Successfull.Please Login to FlipMarket",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 5,
                          backgroundColor: Colors.orangeAccent,
                          textColor: Colors.white,
                          fontSize: 16,
                      );
                            },

                            // style: ElevatedButton.styleFrom({
                            //   Colors.redAccent
                            // }),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent,
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                                textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? "),
                        TextButton(
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 20,),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            //Login screen
                          },
                        )
                      ],
                    )
                  ],

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style:TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87
      ),),
      SizedBox(height: 5,),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pink)
          ),
        ),
      ),
      SizedBox(height: 30,)

    ],
  );
}
//////////////////////////////////////////////////////////////////////////////////////////////////
