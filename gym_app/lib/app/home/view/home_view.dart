import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_app/core/values/theme.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          leadingWidth: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Dashboard',
            style: bigTitleStyle,
          ),
          actions: [
            Container(
                margin: EdgeInsets.only(right: size.width * .05),
                child: Icon(
                  Icons.person_outline_outlined,
                  color: Colors.black,
                  size: size.width * .08,
                )),
          ]),
      body: Column(children: [
        Container(
          height: size.height * .14,
          width: size.width,
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.grey[300]!, width: 1)),
        ),
      ]),
    );
  }
}
