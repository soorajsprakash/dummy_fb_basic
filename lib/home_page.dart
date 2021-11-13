import 'dart:ui';

import 'package:dummy_fb_basic/bottom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'liked_profile_page.dart';
import 'string_extension.dart';
import 'reusable_card.dart';

class HomeApp extends StatefulWidget {

  List listOf;
  HomeApp(this.listOf);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4917b6),
      appBar: AppBar(
        title: Text(
          'Users', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0
        ),
        ),
        backgroundColor: Color(0xff0A0E21),
        actions: [
          IconButton(
              onPressed: (){
                Alert(context: context, title: "yet to implement").show();
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
                    return ReusableCard(
                      myOwnColor: Color(0xff7d5cb8),
                      cardChild: Row(
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
                                    child: Align(
                                        child: Icon(Icons.star),
                                      alignment: Alignment.centerRight,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      onPress: () {
                        print('pressed the card');
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
          Expanded(
            flex: 1,
              child : BottomButton(
                buttonTitle: 'LIKED PROFILES',
                myOnTap: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(
                  //     builder: (context){
                  //       return LikedProfilePage();
                  //     }
                  //       ), );
                  },
          ),
          ),
        ],
      ),
    );
  }
}
