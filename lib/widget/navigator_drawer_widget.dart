import 'package:flutter/material.dart';
import 'package:pau_sosyal/pages/favorite_page.dart';
import 'package:pau_sosyal/pages/people_page.dart';

class  NavigatorDrawerWidget extends StatelessWidget {
  final padding= EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name= "Ömer Levent";
    final email="olevent19@posta.pau.edu.tr";
    final image= "assets/images/person1.jpg";
    return Drawer(
      child: Material(
        color: Colors.indigo,
        child: ListView(
          padding: padding,
          children: <Widget>[

            buildHeader(
              name: name, email: email, urlImage: image,
            ),
            buildMenuItem(
              text:"Topluluklar", icon: Icons.people,onClicked: () => selectedItem(context,0),
            ),
            SizedBox(height: 16,),
            buildMenuItem(
              text:"Favoriler", icon: Icons.favorite_border,onClicked: () => selectedItem(context,1),
            ),
            SizedBox(height: 16,),
            buildMenuItem(
              text:"Katıldığım Etkinlikler", icon: Icons.local_activity,onClicked: () => selectedItem(context,2),
            ),
            SizedBox(height: 16,),

            Divider(color: Colors.white70,),

            SizedBox(height: 16,),
            buildMenuItem(
              text:"Ayarlar", icon: Icons.settings,onClicked: () => selectedItem(context,3),
            ),
          ],
        ),
      ),
    );
  }
}
Widget buildHeader({String urlImage, String name, String email}){
  return InkWell(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: <Widget>[
          CircleAvatar(radius: 20,backgroundColor: Colors.white,
            child:  Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              image: DecorationImage(
                image: AssetImage("assets/images/avatar8.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name,style:TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(height: 4,),
              Text(email,style:TextStyle(fontSize: 14,color: Colors.white),),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget buildMenuItem({String text ,IconData icon,VoidCallback onClicked}){
  final color= Colors.white;

  return ListTile(
    leading: Icon(icon,color: color,),
    title: Text(text,style: TextStyle(color: color)),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context , int index){
  Navigator.of(context).pop();
  switch(index){
    case 0:
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PeoplePage(),));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => FavoritePage(),));
      break;


  }
}

