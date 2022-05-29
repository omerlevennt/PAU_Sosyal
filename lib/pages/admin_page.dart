import 'package:flutter/material.dart';
import 'package:pau_sosyal/pages/home_page.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Etkinlik Onayı"),
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
                Column(
                  children: <Widget>[
                    Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/images/activity2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    buildListTile(time: "12 - 18 Ocak",title: "15. Finans Kongresi",name: "Merve Ece	Altıok "),
                  ],
                ),
                Divider(color: Colors.black,height: 1,),
                SizedBox(height: 10,),
                Column(
                  children: <Widget>[
                    Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/images/activity.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    buildListTile(time: "15 - 21 Ocak",title: "İstanbul Datathon & Data Hall",name: "Adem Çalışkan "),
                  ],
                ),
                Divider(color: Colors.black,height: 1,),
                SizedBox(height: 10,),
                Column(
                  children: <Widget>[
                    Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/images/activity3.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    buildListTile(time: "21 - 23 Ocak",title: "Kariyer ve Gelişim Zirvesi 2022",name: "Senem	Aksevim "),
                  ],
                ),
                Divider(color: Colors.black,height: 1,),
                SizedBox(height: 10,),
                Column(
                  children: <Widget>[
                    Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/images/activity1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    buildListTile(time: "10 - 12 Şubat",title: "Şölen - Vaka Analizi Yarışması",name: "Mehmetcan	Akay "),
                  ],
                ),
                Divider(color: Colors.black,height: 1,),
                SizedBox(height: 10,),
                Column(
                  children: <Widget>[
                    Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/images/activity4.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    buildListTile(time: "12 - 18 Şubat",title: "AIESEC ile Yurt Dışı Fırsatları",name: "Fatma Özlem	Acar  "),
                  ],
                ),
                Divider(color: Colors.black,height: 1,),
                SizedBox(height: 10,),
                Column(
                  children: <Widget>[
                    Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/images/activity5.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    buildListTile(time: "25 - 27 Şubat",title: "C Level Business",name: "Atahan Adanır "),
                  ],
                ),
                Divider(color: Colors.black,height: 1,),
                SizedBox(height: 10,),
                Column(
                  children: <Widget>[
                    Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/images/activity6.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    buildListTile(time: "3 - 5 Mart",title: "İş Dünyasına Genç Bakış",name: "Elif Tuğçe Altaş "),
                  ],
                ),
                Divider(color: Colors.black,height: 1,),
                SizedBox(height: 10,),
                Column(
                  children: <Widget>[
                    Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/images/activity7.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    buildListTile(time: "11 - 14 Mart",title: "DETECH'22",name: "Şükrü	Arap"),
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

Widget buildListTile({String time, String title, String name}){

  return ListTile(
    leading: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(time),
      ],
    ),
    title: Text(title),
    subtitle: Text("Oluşturan : $name "),
    trailing: Column(
      children: <Widget>[
        Icon(Icons.done,color: Colors.green,size: 25,),
        Icon(Icons.close,color: Colors.red,size: 25,),
      ],),
  );
}
