import 'package:flutter/material.dart';
import 'package:pau_sosyal/pages/login_page.dart';
import 'package:pau_sosyal/pages/singup_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("HOŞGELDİN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  SizedBox(height: 20,),
                  Text("Devam etmek için giriş yapınız yada kayıt olunuz.",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey[700],fontSize: 15),),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/welcome.png")
                  )
                ),
              ),

              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginPage();
                      }));
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Giriş Yap",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                  ),
                  SizedBox(height: 20,),

                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SingupPage();
                      }));
                    },
                    color: Color(0xff356976),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Kayıt Ol",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
