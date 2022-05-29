import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pau_sosyal/models/checkBoxState.dart';
import 'package:pau_sosyal/pages/community_page.dart';

class SurveyPage extends StatefulWidget {
  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  final notifications=[
    CheckBoxState(title: "Spor"),
    CheckBoxState(title: "Kamp Yapmak"),
    CheckBoxState(title: "Yürüyüş"),
    CheckBoxState(title: "Müzik"),
    CheckBoxState(title: "Yüzmek"),
    CheckBoxState(title: "Oyun Oynamak"),
    CheckBoxState(title: "Bisiklet Sürmek"),
    CheckBoxState(title: "Balık Tutmak"),
  ];
  final notificationss=[
    CheckBoxState(title: "Yemek Yaparım"),
    CheckBoxState(title: "Kitap Okurum"),
    CheckBoxState(title: "Film İzlerim"),
    CheckBoxState(title: "Müzik Yaparım"),
    CheckBoxState(title: "Oyun Oynamak"),
  ];
  final notificationsss=[
    CheckBoxState(title: "Yeni Birileriyle Tanışmak"),
    CheckBoxState(title: "Vakit değerlendirme"),
    CheckBoxState(title: "Yetenek sergileme"),
    CheckBoxState(title: "Stres atma"),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.indigo,
          title: Text("Anket",style: TextStyle(fontSize: 24,color: Colors.white),),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: ListView(
              children: <Widget>[
                Text("Sizce insanları hobiye çeken temel etken nedir?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                SizedBox(height: 8,),
                Divider(color: Colors.black,height: 1,),
                SizedBox(height: 8,),
                ...notificationsss.map(buildSingleCheckbox).toList(),
                SizedBox(height: 20,),
                Text("Hobilerinizi seçiniz",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                SizedBox(height: 8,),
                Divider(color: Colors.black,height: 1,),
                SizedBox(height: 8,),
                ...notifications.map(buildSingleCheckbox).toList(),
                SizedBox(height: 20,),
                Text("Boş bir gününüzde ne yaparsınız seçiniz",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                SizedBox(height: 8,),
                Divider(color: Colors.black,height: 1,),
                SizedBox(height: 8,),
                ...notificationss.map(buildSingleCheckbox).toList(),
                SizedBox(height: 20,),
                MaterialButton(
                  height: 60,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return CommunityPage();
                    }));
                  },
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text("Kaydet ve devam et",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                ),
              ],
            )),
      );
  }

  buildSingleCheckbox(CheckBoxState checkbox) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Colors.indigo,
      value: checkbox.value,
      title: Text(checkbox.title,style: TextStyle(fontSize: 16),),
      onChanged: (value) {
        setState(() {
          checkbox.value=value;

        });
      },
    );
  }
}
