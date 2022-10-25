import 'dart:html';

import 'package:admin_panel/Screens/dashboard.dart';
import 'package:admin_panel/Screens/lessons.dart';
import 'package:admin_panel/Screens/questions.dart';
import 'package:flutter/material.dart';
import 'addAdmin.dart';
import 'addQuestions.dart';


import '../Components/colors.dart';
import 'create_quiz.dart';

var _page = 'Dashboard';

class AdminDashPage extends StatefulWidget {
  // const AdminDashPage({Key? key}) : super(key: key);

  @override
  State<AdminDashPage> createState() => _AdminDashPageState();
}

class _AdminDashPageState extends State<AdminDashPage> {

  @override

  var _dashFont, _dashCov, _adminFont, _adminCov, _questionFont, _questionCov, _quizeFont,
      _quizeCov, _pastPaperFont, _pastPaperCov, _lessonFont, _lessonCov;

  LoadPage() {
    if (_page == 'Dashboard') {
      return AdminDash();
    }
    else if (_page == 'Add Admin') {
      return AddAdmin();
    }
    else if (_page == 'Questions'){
      return Questions();
    }
    else if (_page == 'Quizzers'){
      return Create_Quiz();
    }
    else if (_page == 'Lessons'){
      return Lessons();
    }
    
    else {
      return Container();
    }
    // } else if (_page == 'Add Admin') {
    //   return OrderPage();
    // } else if (_page == 'InOrder') {
    //   return InOrderPage();
    // } else if (_page == 'Questions') {
    //   return CleanPage();
    // } else if (_page == 'Quizzers') {
    //   return ServicePage();
    // } else if (_page == 'Past Papers') {
    //   return ProfilePage();
    // }


  }

  EditPage(var _npage) {
    if (_npage == 'Dashboard') {
      setState(() {
        _page = _npage;
      });
    } else if (_npage == 'Add Admin') {
      setState(() {
        _page = 'Add Admin';
      });
    } else if (_npage == 'InOrder') {
      setState(() {
        _page = 'InOrder';
      });
    } else if (_npage == 'Questions') {
      setState(() {
        _page = 'Questions';
      });
    } else if (_npage == 'Quizzers') {
      setState(() {
        _page = 'Quizzers';
      });
    } else if (_npage == 'Past Papers') {
      setState(() {
        _page = 'Past Papers';
      });
    } else if (_npage == 'Lessons') {
      setState(() {
        _page = 'Lessons';
      });
    }
  }

  AddColors(_col) {
    if (_col == 'Dashboard') {
      _dashFont = AppColor.whiteFont;
      _dashCov = AppColor.mainColor;
      _adminFont = AppColor.blackFont;
      _adminCov = AppColor.whiteFont;
      _questionFont = AppColor.blackFont;
      _questionCov = AppColor.whiteFont;
      _quizeFont = AppColor.blackFont;
      _quizeCov = AppColor.whiteFont;
      _pastPaperFont = AppColor.blackFont;
      _pastPaperCov = AppColor.whiteFont;
      _lessonFont = AppColor.blackFont;
      _lessonCov = AppColor.whiteFont;
    } else if (_col == 'Add Admin') {
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _adminFont = AppColor.whiteFont;
      _adminCov = AppColor.mainColor;
      _questionFont = AppColor.blackFont;
      _questionCov = AppColor.whiteFont;
      _quizeFont = AppColor.blackFont;
      _quizeCov = AppColor.whiteFont;
      _pastPaperFont = AppColor.blackFont;
      _pastPaperCov = AppColor.whiteFont;
      _lessonFont = AppColor.blackFont;
      _lessonCov = AppColor.whiteFont;

    } else if (_col == 'Questions') {
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _adminFont = AppColor.blackFont;
      _adminCov = AppColor.whiteFont;
      _questionFont = AppColor.whiteFont;
      _questionCov = AppColor.mainColor;
      _quizeFont = AppColor.blackFont;
      _quizeCov = AppColor.whiteFont;
      _pastPaperFont = AppColor.blackFont;
      _pastPaperCov = AppColor.whiteFont;
      _lessonFont = AppColor.blackFont;
      _lessonCov = AppColor.whiteFont;
    } else if (_col == 'Quizzers') {
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _adminFont = AppColor.blackFont;
      _adminCov = AppColor.whiteFont;
      _questionFont = AppColor.blackFont;
      _questionCov = AppColor.whiteFont;
      _quizeFont = AppColor.whiteFont;
      _quizeCov = AppColor.mainColor;
      _pastPaperFont = AppColor.blackFont;
      _pastPaperCov = AppColor.whiteFont;
      _lessonFont = AppColor.blackFont;
      _lessonCov = AppColor.whiteFont;
    } else if (_col == 'Past Papers') {
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _adminFont = AppColor.blackFont;
      _adminCov = AppColor.whiteFont;
      _questionFont = AppColor.blackFont;
      _questionCov = AppColor.whiteFont;
      _quizeFont = AppColor.blackFont;
      _quizeCov = AppColor.whiteFont;
      _pastPaperFont = AppColor.whiteFont;
      _pastPaperCov = AppColor.mainColor;
      _lessonFont = AppColor.blackFont;
      _lessonCov = AppColor.whiteFont;
    } else if (_col == 'Lessons') {
      _dashFont = AppColor.blackFont;
      _dashCov = AppColor.whiteFont;
      _adminFont = AppColor.blackFont;
      _adminCov = AppColor.whiteFont;
      _questionFont = AppColor.blackFont;
      _questionCov = AppColor.whiteFont;
      _quizeFont = AppColor.blackFont;
      _quizeCov = AppColor.whiteFont;
      _pastPaperFont = AppColor.blackFont;
      _pastPaperCov = AppColor.whiteFont;
      _lessonFont = AppColor.whiteFont;
      _lessonCov = AppColor.mainColor;
    }
  }

  // final items = ['Admin'];
  String? selectedItem = 'Admin';

  Widget build(BuildContext context) {
    AddColors(_page);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Drawer(
              child: Container(
                color: Colors.white,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      child: Text(
                        'Side menu',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      decoration: BoxDecoration(
                        // color: Colors.green,
                          image: DecorationImage(
                            // fit: BoxFit.fill,
                              image: AssetImage('images/img_3.png'))),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 0, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: _dashCov,
                                borderRadius: BorderRadius.circular(20)),
                            width: 250,
                            height: 60,
                            child: ListTile(
                              // hoverColor: Colors.orange,
                              leading: Icon(
                                Icons.home_filled,
                                color: _dashFont,
                              ),
                              title: Text('Dashboard',
                                  style: TextStyle(
                                      fontSize: 18, color: _dashFont)),
                              onTap: () {
                                EditPage('Dashboard');
                              },
                              contentPadding:
                              EdgeInsets.only(left: 30, top: 8, bottom: 20),
                              style: ListTileStyle.drawer,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 0, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: _adminCov,
                                borderRadius: BorderRadius.circular(20)),
                            width: 250,
                            height: 60,
                            child: ListTile(
                              // hoverColor: Colors.orange,
                              leading: Icon(
                                Icons.list_alt_rounded,
                                color: _adminFont,
                              ),
                              title: Text('Add Admin',
                                  style: TextStyle(
                                      fontSize: 18, color: _adminFont)),
                              onTap: () {
                                EditPage('Add Admin');
                              },
                              contentPadding:
                              EdgeInsets.only(left: 30, top: 8, bottom: 20),

                              style: ListTileStyle.drawer,

                              tileColor: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 0, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: _questionCov,
                                borderRadius: BorderRadius.circular(20)),
                            width: 250,
                            height: 60,
                            child: ListTile(
                              // hoverColor: Colors.orange,
                              leading: Icon(
                                Icons.people,
                                color: _questionFont,
                              ),
                              title: Text('Questions',
                                  style: TextStyle(
                                      fontSize: 18, color: _questionFont)),
                              onTap: () {
                                EditPage('Questions');
                              },
                              contentPadding:
                              EdgeInsets.only(left: 30, top: 8, bottom: 20),
                              style: ListTileStyle.drawer,

                              tileColor: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 0, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: _quizeCov,
                                borderRadius: BorderRadius.circular(20)),
                            width: 250,
                            height: 60,
                            child: ListTile(
                              // hoverColor: Colors.orange,
                              leading: Icon(
                                Icons.cleaning_services,
                                color: _quizeFont,
                              ),
                              title: Text('Quizzers',
                                  style: TextStyle(
                                      fontSize: 18, color: _quizeFont)),
                              onTap: () {
                                EditPage('Quizzers');
                              },
                              contentPadding:
                              EdgeInsets.only(left: 30, top: 8, bottom: 20),
                              style: ListTileStyle.drawer,

                              tileColor: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 0, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: _pastPaperCov,
                                borderRadius: BorderRadius.circular(20)),
                            width: 250,
                            height: 60,
                            child: ListTile(
                              // hoverColor: Colors.orange,
                              leading: Icon(
                                Icons.account_circle_rounded,
                                color: _pastPaperFont,
                              ),
                              title: Text('Past Papers',
                                  style: TextStyle(
                                      fontSize: 18, color: _pastPaperFont)),
                              onTap: () {
                                EditPage('Past Papers');
                              },
                              contentPadding:
                              EdgeInsets.only(left: 30, top: 8, bottom: 20),
                              style: ListTileStyle.drawer,

                              tileColor: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 0, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: _lessonCov,
                                borderRadius: BorderRadius.circular(20)),
                            width: 250,
                            height: 60,
                            child: ListTile(
                              // hoverColor: Colors.orange,
                              leading: Icon(
                                Icons.account_circle_rounded,
                                color: _lessonFont,
                              ),
                              title: Text('Lessons',
                                  style: TextStyle(
                                      fontSize: 18, color: _lessonFont)),
                              onTap: () {
                                EditPage('Lessons');
                              },
                              contentPadding:
                              EdgeInsets.only(left: 30, top: 8, bottom: 20),
                              style: ListTileStyle.drawer,

                              tileColor: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //Header

            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width - 350,
                    // color: Color(0xffE5E5E5),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(
                            child: Container(
                                width: 200,
                                child: Topic(_page)
                            )
                        ),

                        Row(
                          children: [
                            // Icon(Icons.notifications_none),
                            SizedBox(
                              width: 20,
                            ),
                            PopupMenu(
                              menuList: [
                                PopupMenuItem(
                                    child: ListTile(
                                      title: Text('Profile'),
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (BuildContext context) =>
                                        //           LoginPage(),
                                        //     ));
                                      },
                                    ),
                                ),
                                PopupMenuItem(
                                  child: ListTile(
                                    title: Text('Sign Out'),
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (BuildContext context) =>
                                      //           LoginPage(),
                                      //     ));
                                    },
                                  ),
                                )
                              ],
                              icon: Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/img_4.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                              
                            ),
                            
                          ],
                        ),
                      ],
                    ),
                  ),
                  LoadPage(),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}

class PopupMenu extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopupMenu({Key? key, required this.menuList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}

Topic(var _topic) {
  return Container(
      child: Text(
        _topic,
        style: TextStyle(color: AppColor.textDark, fontSize: 30),
      ));
}



  


