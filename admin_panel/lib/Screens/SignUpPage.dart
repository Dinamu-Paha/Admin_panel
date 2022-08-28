import 'dart:html';

import 'package:admin_panel/Screens/adminDashboardPage.dart';
import 'package:flutter/material.dart';

class SignUpAdmin extends StatefulWidget {
  const SignUpAdmin({Key? key}) : super(key: key);

  @override
  State<SignUpAdmin> createState() => _SignUpAdminState();
}

class _SignUpAdminState extends State<SignUpAdmin> {
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => AdminDashPage(),
                                  ));
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
