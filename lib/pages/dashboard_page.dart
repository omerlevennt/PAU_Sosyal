import 'package:flutter/material.dart';
//import 'package:pau_sosyal/models/activity.dart';
import 'package:pau_sosyal/pages/activityAdd_page.dart';
import 'package:pau_sosyal/pages/activityDetail_page.dart';
//import 'package:pau_sosyal/pages/login_page.dart';
import 'package:pau_sosyal/widget/navigator_drawer_widget.dart';

class DashboardPage extends StatefulWidget {
  String tarih,isim,konum,mekan;
  DashboardPage({ this.tarih,this.isim,this.konum,this.mekan});
  

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  
  
  /*List<String> activity = [
    Activity(imageUrl: "assets/images/img_8.jpg",timeData:"9 - 15 Ocak 2022",title: "17. Opera Gösterisi",location: " İstanbul - Türkiye",locationDetail: "İstanbul Kongre Merkezi",pageUrl: ActivityDetailPage(),),
    Activity(imageUrl: "assets/images/img_5.jpg",timeData:"22 - 24 Ocak 2022",title: "Fotoğraf Gösterimi",location: "Denizli - Türkiye",locationDetail: "Denizli Kongre Merkezi",pageUrl: ActivityDetailPage(), ),
    Activity(imageUrl: "assets/images/img_6.jpg",timeData:"3 - 5 Şubat 2022",title: "Sanat Etkinliği",location: "Denizli - Türkiye",locationDetail: "Denizli Kongre Merkezi",pageUrl: ActivityDetailPage(), ),
    Activity(imageUrl:"assets/images/img_7.jpg",timeData:"9 - 12 Şubat 2022",title: "2022 Fidan Dikim Şenliği",location: "Denizli - Türkiye",locationDetail: "Denizli Çamlık Ormanı",pageUrl: ActivityDetailPage() ),
    Activity(imageUrl:"assets/images/img_4.jpg",timeData:"15 - 19 Şubat 2022",title: "Sanat Şenliği",location: "Denizli - Türkiye",locationDetail: "Denizli Çamlık Ormanı",pageUrl: ActivityDetailPage(), ),
  ];*/
  List<List<String>> activite = [
    [
      "assets/images/img_8.jpg",
      "9 - 15 Ocak 2022",
      "17. Opera Gösterisi",
      "İstanbul - Türkiye",
      "İstanbul Kongre Merkezi",
      "İstanbul Devlet Opera ve Balesi olarak sanatseverlerimizle buluşacağımız atölye buluşmalarında çalgı dünyasında ve insan doğasında elde edilmiş olan pes sesler, ara sesler ve tiz seslerin örneklerini göreceğiz. 15 Ocak Pazartesi günü “Tiz Sesler”de koloratur soprano, soprano, flüt, keman ile tanışıyor olacağız. "
    ],
    [
      "assets/images/img_5.jpg",
      "22 - 24 Ocak 2022",
      "Fotoğraf Gösterimi",
      "Denizli - Türkiye",
      "Denizli Kongre Merkezi",
      "Fotoğraf gösterileriyle, bölgemizin, ülkemizin seçkin sanatçılarının, birbirinden güzel ve etkili gösteri ve söyleşilerini, öğrencilerimiz ve üyelerimizle paylaşıyor. Değerli fotoğraf sanatçılarını konuk ediyor.Fotoğraf sergileriyle, öğrenci ve üyelerimizin katılımı ile bireysel ve karma fotoğraf sergileri düzenlemektedir."
    ],
    [
      "assets/images/img_6.jpg",
      "3 - 5 Şubat 2022",
      "Sanat Etkinliği",
      "Denizli - Türkiye",
      "Denizli Kongre Merkezi",
      "Farklı disiplinlerden öğretmenler rehber eşliğinde yapılan çevrimiçi sergi turundan sonra, sergiye yönelik yaratıcı yazma ve kağıttan mozaik atölyeleri gerçekleştiriyor. Öğretmenler, Pera Müzesi sergilerine yönelik müfredata uygun hazırlanan Öğretmen Rehber Kitapçıkları’nı derslerinde nasıl kullanabileceklerini, öğrencilerine sergileri nasıl gezdirebileceklerini ve farklı yaş gruplarına yönelik etkinlikleri keşfediyor."
    ],
    [
      "assets/images/img_7.jpg",
      "9 - 12 Şubat 2022",
      "2022 Fidan Dikim Şenliği",
      "Denizli - Türkiye",
      "Denizli Çamlık Ormanı",
      "Çevre bilinci, doğal yaşama saygı ve doğa sevgisi kazanımlarıyla, insanlık ve çevre adına atılan bu güzel adımda bir pay sahibi olmanın verdiği iç huzurla okullarına dönen öğrenciler çeşitli etkinliklerle kazanımlarını aileleriyle ve arkadaşlarıyla paylaştılar."
    ],
    [
      "assets/images/img_4.jpg",
      "15 - 19 Şubat 2022",
      "Sanat Şenliği",
      "Denizli - Türkiye",
      "Denizli Sanat Merkezi",
      "Öğrencilerin tek yönlü eğitim almayıp kültürel ve sanatsal yönden desteklemek."
    ],
  ];
  int sayi = 0;
  @override
  
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.tarih!=null&&widget.isim!=null&&widget.konum!=null&&widget.mekan!=null){
      
      activite.add(["assets/images/activite.jpg",widget.tarih,widget.isim,widget.konum,widget.mekan,"Bu Bir Açıklamadır."]);
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.indigo,
          title: Text(
            "Etkinlikler",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  itemCount: activite.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ActivityDetailPage(
                                    gelenVeriler: activite[index],
                                  )),
                        );
                      },
                      child: Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: double.infinity,
                                height: 170,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage(activite[index][0].toString()),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, bottom: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    activite[index][1].toString(),
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    activite[index][2].toString(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        activite[index][4].toString(),
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.add_location),
                                          Text(
                                            activite[index][3].toString(),
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
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
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
        drawer: NavigatorDrawerWidget(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ActivityAddPage();
            }));
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
