import 'package:anime_app/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jikan_api/jikan_api.dart';
import 'custom_widgets.dart';

var aniList = [31537, 43299, 31758, 39617, 34798, 38476];
List<Anime> aniWidgetList = <Anime>[];

class LoadingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingPageState();
  }
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    getAnimeData(aniList);
  }

  void getAnimeData(List<dynamic> aniList) async {
    for (var animeId in aniList) {
      var animeData = await Jikan().getAnimeInfo(animeId);
      //Expanded expanded = animeRow(animeData);
      aniWidgetList.add(animeData);
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return MainPage(
            aniWidgets: aniWidgetList,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
