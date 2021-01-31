import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trader_sample/utils/FakeData.dart';
import 'package:trader_sample/widgets/qoutes.item.dart';

class Qoutes extends StatefulWidget {
  @override
  _QoutesState createState() => _QoutesState();
}

class _QoutesState extends State<Qoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qoutes'),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.plus),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.edit),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: qoutes.length,
        itemBuilder: (BuildContext context, int index) => QouteItem(
          qoute: qoutes[index],
        ),
      ),
    );
  }
}
