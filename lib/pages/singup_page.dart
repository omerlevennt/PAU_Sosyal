import 'package:flutter/material.dart';
import 'package:pau_sosyal/pages/login_page.dart';

class SingupPage extends StatefulWidget {
  @override
  _SingupPageState createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  String valueChoose;
  List listItems=[
   "Bilgisayar Mühendisliği","Yönetim Bilişim Sistemleri","Siyaset Bilimi Ve Kamu Yönetimi","Tıp","İktisat","Mekatronik Mühendisliği"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar:  AppBar(
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
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Kayıt ol", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Text("Devam etmek için kayıt olunuz !",style: TextStyle(fontSize: 15,color: Colors.grey.shade700),)
                  ],
                ),
                Column(
                  children: <Widget>[
                    inputFile(label: "Ad Soyad"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Okuduğunuz Bölüm",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black87),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[400],width: 1),
                        borderRadius: BorderRadius.circular(3)
                      ),
                      child: DropdownButton(
                        dropdownColor: Colors.white,
                        hint: Text("Okuduğunuz Bölümü Seçiniz",style: TextStyle(color: Colors.black),),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36,
                        isExpanded: true,
                        underline: SizedBox(),
                        style: TextStyle(color: Colors.black,fontSize: 15),
                        value: valueChoose,
                        onChanged: (newValue){
                          setState(() {
                            valueChoose=newValue;
                          });
                        },
                        items: listItems.map((valueItem){
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 10,),
                    inputFile(label: "Okul Numaranız"),
                    inputFile(label: "Email"),
                    inputFile(label: "Parola",obscureText: true),

                  ],
                ),
                Container(
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginPage();
                      }));
                    },
                    color: Color(0xff356976),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Kayıt Ol",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Zaten kayıtlı mısın? "),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return LoginPage();
                          }));
                        },
                        child: Text("Giriş yap",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),)),
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
