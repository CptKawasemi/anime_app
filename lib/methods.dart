import 'package:flutter/material.dart';
import 'package:jikan_api/jikan_api.dart';

Future<Anime> getAnime(int animeId) async {
  var aniInfo = await Jikan().getAnimeInfo(animeId);
  print(aniInfo);
  return aniInfo;
}
