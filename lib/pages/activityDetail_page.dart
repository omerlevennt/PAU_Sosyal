import 'package:flutter/material.dart';
import 'package:pau_sosyal/models/activity.dart';
import 'package:pau_sosyal/pages/home_page.dart';

class ActivityDetailPage extends StatefulWidget {
  List<String> gelenVeriler;
  ActivityDetailPage({ this.gelenVeriler});
  @override
  _ActivityDetailPageState createState() => _ActivityDetailPageState();
}

class _ActivityDetailPageState extends State<ActivityDetailPage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.gelenVeriler[2]),
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
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              size: 25,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(widget.gelenVeriler[0]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Row(
                children: <Widget>[
                  Text(widget.gelenVeriler[1],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                ],
              ),
              Wrap(
                children: <Widget>[
                  Text(widget.gelenVeriler[5],
                    style: TextStyle(fontSize: 16,),),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(widget.gelenVeriler[4],style: TextStyle(fontSize: 16,),),
                  Row(
                    children: <Widget>[
                      Icon(Icons.add_location),
                      Text(widget.gelenVeriler[3],style: TextStyle(fontSize: 16,),),
                    ],
                  ),
                ],
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomePage();
                  }));
                },
                color: Colors.indigo,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Text("Etkinliğe Katıl",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
