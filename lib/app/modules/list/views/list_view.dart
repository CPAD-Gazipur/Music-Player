import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:music_player/app/routes/app_pages.dart';

import '../controllers/list_controller.dart';

class ListView extends GetView<ListController> {
  List<String> names = [
    'José.mp3',
    'Maria.mp3',
    'João.mp3',
    'Paulo.mp3',
    'Ana.mp3',
    'José.mp3',
    " Alone .mk3",
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
              for (int i = 0; i < names.length; i++)
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
                        onPressed: () {
                          Get.offAllNamed(Routes.HOME);
                        },
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
                        // "AaVzVwbK.mp3",
                        names[i],
                        style: TextStyle(fontWeight: FontWeight.bold),
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
