import 'package:flutter/material.dart';
import 'package:json_data/model/User.dart';

class DetailPage extends StatelessWidget {
  final User user;

  DetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.red,
              child: Center(child: Text("User Details")),
            ),
            Container(
              height: 50,
              child: Center(child: Text(user.name)),
            ),
            Container(
              height: 50,
              child: Center(child: Text(user.email)),
            ),
            Container(
              height: 50,
              child: Center(child: Text(user.about)),
            ),
          ],
        ),
      ),
    );
  }
}
