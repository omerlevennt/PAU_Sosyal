import 'package:flutter/material.dart';
import 'package:pau_sosyal/pages/home_page.dart';

class AdminMemberPage extends StatefulWidget {
  @override
  _AdminMemberPageState createState() => _AdminMemberPageState();
}

class _AdminMemberPageState extends State<AdminMemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Topluluk Üye Onayı"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Column(
              children: <Widget>[
                buildListTile(image: "assets/images/avatar7.png",name: "Adem Çalışkan ",title: "Yönetim Bilişim Sistemleri",),
                SizedBox(height: 10,),
                buildListTile(image: "assets/images/avatar4.jpg",name: "Fatma Özlem	Acar ",title: "Yazılım Mühendisliği",),
                SizedBox(height: 10,),
                buildListTile(image: "assets/images/avatar3.jpg",name: "Atahan Adanır",title: "Hukuk",),
                SizedBox(height: 10,),
                buildListTile(image: "assets/images/avatar2.png",name: "Mehmetcan	Akay ",title: "Uluslararası İlişkiler",),
                SizedBox(height: 10,),
                buildListTile(image: "assets/images/avatar5.jpeg",name: "Ecem Akova ",title: "Tıp",),
                SizedBox(height: 10,),
                buildListTile(image: "assets/images/avatar.png",name: "Ahmet Polat Aklar ",title: "Elektrik - Elektronik Mühendisliği",),
                SizedBox(height: 10,),
                buildListTile(image: "assets/images/avatar6.jpg",name: "Senem	Aksevim ",title: "Bilgisayar Mühendisliği",),
                SizedBox(height: 10,),
                buildListTile(image: "assets/images/avatar7.png",name: "Burak Altıntaş ",title: "Mekatronik Mühendisliği",),
                SizedBox(height: 10,),
                buildListTile(image: "assets/images/avatar4.jpg",name: "Elif Tuğçe Altaş ",title: " Diş Hekimliği",),
                SizedBox(height: 10,),
                buildListTile(image: "assets/images/avatar5.jpeg",name: "Merve Ece	Altıok ",title: "Moleküler Biyoloji ve Genetik",),
                SizedBox(height: 10,),
                buildListTile(image: "assets/images/avatar3.jpg",name: "Şükrü	Arap ",title: "Eczacılık",),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
Widget buildListTile({String image, String title, String name}){

  return ListTile(
    leading: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
    title: Text(name),
    subtitle: Text("Bölümü : $title "),
    trailing: Column(
      children: <Widget>[
        Icon(Icons.done,color: Colors.green,size: 25,),
        Icon(Icons.close,color: Colors.red,size: 25,),
      ],),
  );
}
