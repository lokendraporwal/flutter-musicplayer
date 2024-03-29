import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flute_music_player/flute_music_player.dart';

Widget blurWidget(Song song){
  var f=song.albumArt == null ? null : new File.fromUri(Uri.parse(song.albumArt));
  return new Hero(
      tag: song.artist, child: new Container(
    child: f!=null?
      new Image.file(
        f,
        fit: BoxFit.cover,
        color: Colors.black54,
        colorBlendMode: BlendMode.darken,
      )
        :new Image(
      image: new AssetImage("assets/lady.jpg"),
      color: Colors.black54,
      fit: BoxFit.cover,
      colorBlendMode: BlendMode.darken,
      )
  )
  );
}