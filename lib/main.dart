import 'package:dummy_fb_basic/liked_profile_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

final apiKey = '618e6353356899d81fbef7c6';
// List<Users> userList = [];
// List<String> nameList = [];
// List picUrlList = [];

void main() async {

  List myList = await getAllData();
  runApp(
      DataFromApi(myList),
  );
}

class DataFromApi extends StatelessWidget {
  List myList;
  DataFromApi(this.myList);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeApp(myList),
      // initialRoute: '/',
      // routes: {
      //   '/second' : (context) => LikedProfilePage(),
      //   '/first' : (context) => HomeApp(myList),
      // },
    );
  }
}
//
// class Users {
//   final String title, firstName, lastName;
//   Users(this.title, this.firstName, this.lastName);
// }

Future<List> getAllData() async{
  var url = Uri.https('dummyapi.io', 'data/v1/user');
  var response = await http.get(
    url,
    headers: {'app-id' : apiKey},
  );
  var jsonData = jsonDecode(response.body)['data'];
  for (var i=0; i<20; i++) {
    var fullName = jsonData[i];
    // print(fullName);
    // Users user = Users(fullName['title'], fullName['firstName'], fullName['lastName']);
    // userList.add(user);

    // nameList.add(fullName['title'] + ' ' +fullName['firstName'] + ' ' + fullName['lastName']);
    // picUrlList.add(fullName['picture']);
    // print(userList[i].firstName);
  }
  return jsonData;

}