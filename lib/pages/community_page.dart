import 'package:flutter/material.dart';
import 'package:pau_sosyal/models/community.dart';
import 'package:pau_sosyal/pages/home_page.dart';

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  List<Community> community = [
    Community(
        name: "YÖNETİM BİLİŞİM TOPLULUĞU",
        baskanName: "FATMA ARICI",
        danismanName: "Doç. Dr. İBRAHİM AKSEL",
        kurulusTarihi: "12.03.2015",
        amac:
            "Yönetim bilişim alanında yenilikleri takip etmek ve aynı zamanda gelişimlere katkıda bulunmak.",
        imageUrl: "assets/images/ybt.jpg"),
    Community(
        name: "PAÜ GÜZEL SANATLAR TOPLULUĞU",
        baskanName: "TUĞBA BARIŞ",
        danismanName: "Doç. Dr. SERDAL YERLİ",
        kurulusTarihi: "2.10.2017",
        amac:
            "Öğrencilerin tek yönlü eğitim almayıp kültürel ve sanatsal yönden desteklemek.",
        imageUrl: "assets/images/gst.png"),
    Community(
        name: "PAÜ KORUMALI FUTBOL TOPLULUĞU",
        baskanName: "ULAŞ MERT AĞCA",
        danismanName: "Arş. Gör. HAMZA KAYA BEŞLER",
        kurulusTarihi: "9.12.2015",
        amac: "Amerikan Futbolunu öğrenciler arasında yaygın hale getirmek.",
        imageUrl: "assets/images/kft.jpg"),
    Community(
        name: "GENÇ KIZILAY TOPLULUĞU",
        baskanName: "ZAFER KAHA",
        danismanName: "Prof. Dr. BÜLENT TOPUZ",
        kurulusTarihi: "14.10.2015",
        amac:
            "Üniversite Öğrencilerini kan bağışı, aferez bağışı hakkında ve TÜRKKÖK projesi hakkında bilgilendirmek ve bağışlara teşvik etmek.",
        imageUrl: "assets/images/kt.jpeg"),
    Community(
        name: "SAHNE SANATLARI TOPLULUĞU",
        baskanName: "KAAN EMRE MUTLUTÜRK",
        danismanName: "Prof. Dr. UFUK YAĞCI",
        kurulusTarihi: "11.10.2013",
        amac:
            "Müzikal ve Operet türlerini Üniversite gençliğine ve topluma tanıtmak.",
        imageUrl: "assets/images/sst.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Size Uygun Topluluklar"),
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
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return HomePage();
                                  }));
                  },
                  child: Text("Atla",style: TextStyle(fontSize: 20,decoration: TextDecoration.underline,),)),
              ],
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                    itemCount: community.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          padding:
                              EdgeInsets.only(top: 25, left: 25, right: 25),
                          color: Colors.white,
                          width: double.infinity,
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            community[index].imageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        community[index].name,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Başkan Adı : " +
                                            community[index]
                                                .baskanName
                                                .toString(),
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(
                                      Icons.question_answer,
                                      size: 27,
                                      color: Colors.indigo,
                                    ),),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(
                                      Icons.add_circle_outline,
                                      size: 30,
                                      color: Colors.indigo,
                                    ),)
                                    
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: Colors.black,
                                height: 1,
                              ),
                            ],
                          ));
                    }))
          ],
        ),
      ),
      
    );
  }
}