import 'package:anime_app/custom_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jikan_api/jikan_api.dart';

class MainPage extends StatefulWidget {
  MainPage({this.aniWidgets});
  final List<Anime> aniWidgets;
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ANI'),
        ),
        body: ListView.builder(
          itemCount: widget.aniWidgets.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return animeRow(widget.aniWidgets[index]);
          },
        ));
  }
}
// children: widget.aniWidgets
