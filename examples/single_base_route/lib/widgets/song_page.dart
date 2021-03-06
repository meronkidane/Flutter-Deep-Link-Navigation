import 'package:deep_link_navigation/deep_link_navigation.dart';
import 'package:flutter/material.dart';

import 'package:single_base_route/data.dart';
import 'package:single_base_route/deep_links.dart';
import 'package:single_base_route/model.dart';

class SongPage extends StatelessWidget {
  final Song song;

  const SongPage({Key key, this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          song.name,
          key: Key("title")
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.music_video,
              size: 200,
            ),
            RaisedButton(
              child: Text("Go to artist"),
              onPressed: () => DeepLinkNavigator.of(context).navigateTo([
                LibraryDL(),
                ArtistDL(Data.artists[song.artistId]),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
