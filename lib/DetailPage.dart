import 'package:flutter/material.dart';
import 'package:json_data/model/User.dart';

class DetailPage extends StatelessWidget {

final User user;


DetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name,)
      ),

    );
  }
}
