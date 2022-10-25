import 'dart:convert';
import 'dart:html';

import 'package:admin_panel/Screens/adminDashboardPage.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class SignUpAdmin extends StatefulWidget {
  const SignUpAdmin({Key? key}) : super(key: key);

  @override
  State<SignUpAdmin> createState() => _SignUpAdminState();
}

class _SignUpAdminState extends State<SignUpAdmin> {
  //password show

  String email = "";
  String password = "";

  // final storage = new FlutterSecureStorage();

  bool? check;
  bool? checkRole;


  UserSelect(bool x) {
    if (x == true) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SignUpAdmin(),
          ));
    }
    else if (x == false) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => AdminDashPage(),
          ));
    }
  }

  //login request
  Future save() async {
    final res = await http.post(
        Uri.parse('http://ec2-54-215-42-250.us-west-1.compute.amazonaws.com:8080/user/login'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': email, 'password': password})

    );
    // print(jsonDecode(res.body)['email']);
    print(jsonDecode(res.body));

    if (jsonDecode(res.body)['role'] == true) {
      checkRole = true;
    }
    if (jsonDecode(res.body)['role'] == false) {
      checkRole = false;
    }

    if (jsonDecode(res.body)['email'] == "") {
      check = false;
    }
    else {
      check = true;
    }
    LoginValidator(check!);
    // print(check);
    // await storage.write(key:'jwt', value: jsonDecode(res.body)['token']);
    // String? jwt = await storage.read(key: 'jwt');
    // print(jwt);
  }
  //login request end

  //Login function call from sign in
  LoginValidator(bool x) {
    print(check);
    if (x == true) {
      print(checkRole);
      UserSelect(checkRole!);
    }
    else if (x == false) {
      openDialog();
    }
  }

  //Error popup
  Future<void> openDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(backgroundColor: Colors.red.shade50,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Container(

            child: Container(
                height: 100,
                child: Center(
                  child: Text(
                    "Incorrect Email or Password.",
                    style: TextStyle(
                      color: Colors.red, fontSize: 22,
                    ),),
                )),
          ),
        );
      },
    );
  }


//password show
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 900,
                height: 600,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0.2,0.2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Text('WELCOME BACK',style: TextStyle(fontSize: 37, fontWeight: FontWeight.w900),),
                          SizedBox(
                            height: 30,
                          ),
                          Text('LOGIN TO GET IN TOUCH',style: TextStyle(fontSize: 20, color: Colors.black54),),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: 300,
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width-60,
                              child: TextField(
                                controller: TextEditingController(text: email),
                                style: TextStyle(
                                  fontSize: 18
                                ),
                                onChanged: (val){
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  hintText: 'EMAIL',
                                  // icon: Icon(Icons.alternate_email_outlined,size: 20,),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: 300,
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width-60,
                              child: TextField(
                                controller: TextEditingController(text: password),
                                style: TextStyle(
                                    fontSize: 18
                                ),
                                onChanged: (val){

                                },
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: _obscureText
                                        ? Icon(
                                      Icons.visibility_off,
                                      // color: AppColor.appBColor,
                                    )
                                        : Icon(
                                      Icons.visibility,
                                      // color: AppColor.blckColor,
                                    ),
                                    onPressed: () {
                                      setState(() => _obscureText = !_obscureText);
                                    },
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  hintText: 'PASSWORD',
                                  // icon: Icon(Icons.alternate_email_outlined,size: 20,),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: (){
                              save();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0XFF000000),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              height: 50,
                              width: 200,
                              child: Center(
                                  child: Text("Sign In",style: TextStyle(fontSize: 20,color: Colors.white),)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage("assets/images/bg.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

      ),
    );
  }
}
