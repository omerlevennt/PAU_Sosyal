import 'package:flutter/material.dart';



class Message {
  String gonderenName;
  String mesaj;
  String mesajTime;

  Message({String gonderenName,String mesaj,String mesajTime}){
    this.gonderenName=gonderenName;
    this.mesaj=mesaj;
    this.mesajTime=mesajTime;
  }

}
class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Message> message= [
    Message(gonderenName: "Mustafa Kurt",mesaj: "Etkinlikte öncelikle topluluk başkanımız Fatma Arıcı'ya ardından konuşmacı Abdullah Oğuz olmak üzere emeği geçen herkese teşekkür ederim.",mesajTime: "15:18 12.01.2022"),
    Message(gonderenName: "Adem Çalışkan",mesaj: "Harikaydı...",mesajTime: "13:16 12.01.2022"),
    Message(gonderenName: "Emel Deniz",mesaj: "Etkinlikte yer almaktan onur duydum.",mesajTime: "11:18 12.01.2022"),
    Message(gonderenName: "Furkan Ender",mesaj: "Etkinlikte yerindeyim buluşalım mı ?.",mesajTime: "10:18 12.01.2022"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        automaticallyImplyLeading: false,
      ),
      body:  Column(
        children: <Widget>[

          Expanded(
            flex: 3,
            child: ListView.builder(itemCount: message.length,itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(message[index].gonderenName,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(height: 15,),
                    Wrap(
                      children: <Widget>[
                        Text(message[index].mesaj,style: TextStyle(fontSize: 16,color: Colors.black,),),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.favorite_border),
                        Icon(Icons.message,color: Colors.black,),
                        Text(message[index].mesajTime),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Divider(color: Colors.black,height: 1,),
                    SizedBox(height: 8,),
                  ],
                ),
              );
            }),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          MaterialButton(
                            minWidth: 40,
                            height: 20,
                            onPressed: (){},
                            color: Colors.indigo,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Text("Gönder",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                          ),
                        ],
                      ),
                    ),
                    Form(
                      child: TextField(
                        maxLines: 3,
                        decoration: InputDecoration(
                            hintText: "Yorum Yaz",
                            hintStyle: TextStyle(
                              fontSize: 16,
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
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
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
