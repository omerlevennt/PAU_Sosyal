import 'package:flutter/material.dart';
import 'package:pau_sosyal/pages/alarm_page.dart';
import 'package:pau_sosyal/pages/chat_page.dart';
import 'package:pau_sosyal/pages/dashboard_page.dart';
import 'package:pau_sosyal/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    DashboardPage(),
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
                        currentScreen = ChatPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.chat,color: currentTab == 1 ? Colors.indigo: Colors.black,),
                      ],
                    ),
                  ),

                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = ProfilePage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.person,color: currentTab == 2 ? Colors.indigo : Colors.black,),
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
