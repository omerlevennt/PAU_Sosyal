import 'package:flutter/material.dart';
import 'package:pau_sosyal/pages/home_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final name= "Ömer Levent";
  final email="olevent19@posta.pau.edu.tr";
  final image= "assets/images/avatar8.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 12,),

              Text(name,style:TextStyle(fontSize: 20,color: Colors.black),),
              SizedBox(height: 4,),
              Text(email,style:TextStyle(fontSize: 14,color: Colors.black),),
              SizedBox(height: 10,),
              Column(
                children: <Widget>[
                  buildProfileItems("Profil Ayarları",Icons.person,Colors.indigo),
                  buildProfileItems("Topluluk Ayarları",Icons.people,Colors.indigo),
                  buildProfileItems("Mesaj Ayarları",Icons.near_me,Colors.indigo),
                  buildProfileItems("Oturumu Kapat",Icons.close,Colors.red),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfileItems(text,icon,color) {
    return Container(
      child:
       Container(
         margin: EdgeInsets.only(top: 12),
         width: 370,
         height: 65,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(60),
           color: color
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             SizedBox(width: 5,),
             Icon(icon,color: Colors.white,),
             Text(text,style: TextStyle(color: Colors.white,fontSize: 14),),
             SizedBox(width: 50,),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: <Widget>[
                 Icon(Icons.arrow_forward_ios,color: Colors.white,),
               ],
             ),
             SizedBox(height: 20,)
           ],
         ),
       ),
    );
  }
}
