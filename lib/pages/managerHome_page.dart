import 'package:flutter/material.dart';
import 'package:pau_sosyal/pages/adminMember_page.dart';
import 'package:pau_sosyal/pages/admin_page.dart';
import 'package:pau_sosyal/pages/alarm_page.dart';
import 'package:pau_sosyal/pages/chat_page.dart';
import 'package:pau_sosyal/pages/dashboard_page.dart';
import 'package:pau_sosyal/pages/profile_page.dart';

class ManagerHomePage extends StatefulWidget {
  @override
  _ManagerHomePageState createState() => _ManagerHomePageState();
}

class _ManagerHomePageState extends State<ManagerHomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    DashboardPage(),
    AdminPage(),
    AdminMemberPage(),
    ChatPage(),
    ProfilePage(),
  ];

  final PageStorageBucket bucket=PageStorageBucket();
  Widget currentScreen = DashboardPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin:10,
        child: Container(
          height: 60,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MaterialButton(
                minWidth: 40,
                onPressed: (){
                  setState(() {
                    currentScreen = DashboardPage();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.dashboard,color: currentTab == 0 ? Colors.indigo : Colors.black,),
                  ],
                ),
              ),

              MaterialButton(
                minWidth: 40,
                onPressed: (){
                  setState(() {
                    currentScreen = AdminPage();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.calendar_today,color: currentTab == 1 ? Colors.indigo : Colors.black,),
                  ],
                ),
              ),

              MaterialButton(
                minWidth: 40,
                onPressed: (){
                  setState(() {
                    currentScreen = AdminMemberPage();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.people,color: currentTab == 2 ? Colors.indigo : Colors.black,),
                  ],
                ),
              ),


              MaterialButton(
                minWidth: 40,
                onPressed: (){
                  setState(() {
                    currentScreen = ChatPage();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.chat,color: currentTab == 3 ? Colors.indigo: Colors.black,),
                  ],
                ),
              ),

              MaterialButton(
                minWidth: 40,
                onPressed: (){
                  setState(() {
                    currentScreen = ProfilePage();
                    currentTab = 4;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.person,color: currentTab == 4 ? Colors.indigo : Colors.black,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
