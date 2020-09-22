import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:json_data/DetailPage.dart';
import 'package:json_data/model/User.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;


  @override
  _HomePageState createState() => _HomePageState();


}

class _HomePageState extends State<HomePage> {

  Future<List<User>> _getUsers() async
  {
    var data = await http.get("http://www.json-generator.com/api/json/get/bVFhlQdALC?indent=2");
    var jsonData = json.decode(data.body);

    List<User> users = [];

    for (Map<String,dynamic> u in jsonData){
      User user = User.fromJson(u);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            print(snapshot.data);
            if (snapshot.data == null) {
              return Container(child: Center(child: Text("Loading....")
              )
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(snapshot.data[index].picture),
                    ),
                    title: Text(snapshot.data[index].name),
                    subtitle: Text(snapshot.data[index].email),
                    onTap: () {
                     Navigator.push(context,new MaterialPageRoute(builder: (context)=>DetailPage(snapshot.data[index]))
                     );
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
