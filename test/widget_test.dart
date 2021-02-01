// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:jikan_api/jikan_api.dart';

void main() async {
  var jikan = Jikan();
  var top = await jikan.getTop(TopType.anime, subtype: TopSubtype.airing);
  print(top);
}
