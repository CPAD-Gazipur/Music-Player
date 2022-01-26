import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_controller.dart';

class ListView extends GetView<ListController> {
  List<String> names = [
    "Marshmello - Alone (Official Music Video).mkv",
    "LOVLY song.mp3",
    "Marss -long (Official Music Video).mkv",
    "Mars - Alone (Official Music Video).mkv",
    "Mars - Alone (Official Music Video).mkv",
    "Mars - Alone (Official Music Video).mkv",
    "Mars - Alone (Official Music Video).mkv",
    "hmello - Alone (Official Music Video).mkv",
    "Marshmello - Alone (Official Music Video).mkv",
    "Marshmello - Alone (Official Music Video).mkv",
    "Marshmello - Alone (Official Music Video).mkv",
    "Marshmello - Alone (Official Music Video).mkv",
    "Marshmello - Alone (Official Music Video).mkv",
    "Marshmello - Alone (Official Music Video).mkv",
    "Marshmello - Alone (Official Music Video).mkv",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff90caf9),
      appBar: AppBar(
        title: Text('Playlist'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        color: Color(0xffadb5bd),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              for (int i = 0; i < names.length; i)
                Container(
                  margin: EdgeInsets.all(5),
                  color: Color(0xfffefae0),
                  height: 50,
                  width: 500,
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(10),
                          shape: CircleBorder(),
                        ),
                        onPressed: () {},
                        child: Wrap(
                          children: <Widget>[
                            Row(
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.cyanAccent,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 90.990,
                      ),
                      Text(
                        names[i],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
