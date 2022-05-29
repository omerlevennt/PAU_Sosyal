import 'package:flutter/material.dart';
import 'package:pau_sosyal/pages/dashboard_page.dart';
import 'package:pau_sosyal/pages/home_page.dart';

class ActivityAddPage extends StatefulWidget {
  @override
  _ActivityAddPageState createState() => _ActivityAddPageState();
}

class _ActivityAddPageState extends State<ActivityAddPage> {
  final t1 = TextEditingController();
  final t2 = TextEditingController();
  final t3 = TextEditingController();
  final t4 = TextEditingController();
  bool deger = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Etkinlik Ekle"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
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
                      Text(
                        "Etkinlik Oluştur",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Etkinlik oluşturmak için gerekli alanları doldurunuz!",
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey.shade700),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        inputFile(
                            label: "Etkinlik tarihi ",
                            hint: "15 - 17 Ocak",
                            inputDegisken: t1),
                        inputFile(
                            label: "Etkinlik adı ",
                            hint: "Sanat Fuarı",
                            inputDegisken: t2),
                        inputFile(
                            label: "Etkinlik yapılacağı il ",
                            hint: "İstanbul Türkiye",
                            inputDegisken: t3),
                        inputFile(
                            label: "Etkinlik yapılacağı yer",
                            hint: "İstanbul Kongre Merkezi",
                            inputDegisken: t4),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DashboardPage(
                                          konum: t3.text,
                                          mekan: t4.text,
                                          tarih: t1.text,
                                          isim: t2.text,
                                        )),
                              );
                            },
                            color: Colors.indigo,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "Etkinliği Kaydet",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget inputFile({label, hint, TextEditingController inputDegisken}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: inputDegisken,
          decoration: InputDecoration(
              hintText: hint,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400])),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400]))),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
