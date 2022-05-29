import 'package:flutter/material.dart';
import 'package:pau_sosyal/pages/home_page.dart';
import 'package:pau_sosyal/pages/login_page.dart';
import 'package:pau_sosyal/pages/managerHome_page.dart';

class ManagerLoginPage extends StatefulWidget {
  @override
  _ManagerLoginPageState createState() => _ManagerLoginPageState();
}

class _ManagerLoginPageState extends State<ManagerLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Yönetici Giriş",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Devam etmek için yönetici girişi yapınız !",style: TextStyle(fontSize: 15,color: Colors.grey.shade700),),
                          SizedBox(width: 5,),
                          GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return LoginPage();
                                }));
                              },
                              child: Row(
                                children: <Widget>[
                                  Text("Üye girişi.",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                  Icon(Icons.arrow_forward_ios,size: 20,)
                                ],
                              )),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        inputFile(label:"Email"),
                        inputFile(label: "Parola", obscureText: true),
                        SizedBox(height: 20,),
                        Container(
                          child:  MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return ManagerHomePage();
                              }));
                            },
                            color: Color(0xff356976),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Text("Giriş Yap",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),

                  Container(
                    padding: EdgeInsets.only(top: 100),
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/background.png"),
                          fit: BoxFit.fitHeight,
                        )
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


Widget inputFile({label,obscureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(label,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black87),),
      SizedBox(height: 5,),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey[400]
                )
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])
            )
        ),
      ),
      SizedBox(height: 10,)

    ],
  );
}
