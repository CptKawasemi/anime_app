import 'package:flutter/material.dart';
import 'package:jikan_api/jikan_api.dart';

Column animeRow(Anime snapshot) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(color: Colors.grey),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 150.0,
              width: 100.0,
              child: Image(
                image: NetworkImage(snapshot.imageUrl),
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
            Expanded(
              child: Container(
                height: 150.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      snapshot.titleJapanese,
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    Text(snapshot.title,
                        style: TextStyle(color: Colors.black87, fontSize: 15)),
                    // Text(snapshot.premiered),
                    Text(snapshot.type),
                    Text(snapshot.status),
                    Text('Episodes : ${snapshot.episodes.toString()}',
                        style: TextStyle(color: Colors.black87, fontSize: 15))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Divider(
        height: 0.5,
      ),
    ],
  );
}
