import 'package:dummy_fb_basic/bottom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'string_extension.dart';



class HomeApp extends StatefulWidget {

  List listOf;
  HomeApp(this.listOf);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {

  var selected;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFee98fb),
      appBar: AppBar(
        title: Text(
          'Users'
        ),
        backgroundColor: Color(0xff0A0E21),
        actions: [
          IconButton(
              onPressed: (){
                print('search');
                Alert(context: context, title: "yet to be implemented").show();
                },
              icon: Icon(Icons.search) )
        ],
      ),
      body: Column(
        children: [

        Expanded(
          flex: 7,
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.all(10.0),
                child: ListView.builder(
                  itemCount: widget.listOf.length,
                  itemBuilder: (BuildContext abc, int index) {
                    return Card(
                      margin: EdgeInsets.all(8.0),
                      elevation: 10.0,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: CircleAvatar(
                              child: Image(
                                image: NetworkImage(widget.listOf[index]['picture']),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40.0,
                          ),
                          Container(
                            child: Text((widget.listOf[index]['title']).toString().capitalize() + " " +
                                widget.listOf[index]['firstName'] + " " +
                                widget.listOf[index]['lastName'],
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),),
                          ),
                          Expanded(

                            child: Row(

                              children: [
                                Container(
                                  child: Expanded(
                                    child: selected = Icon(Icons.star),
                                  ),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    );
                  },
                ),
              ),
            ],

          ),
        ),
          Expanded(
            flex: 1,
              child : BottomButton(myOnTap: () {}, buttonTitle: 'LIKED PROFILES'),
          ),
        ],
      ),
    );
  }
}
