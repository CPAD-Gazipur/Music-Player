import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:music_player/app/modules/list_sound.dart';
import 'package:music_player/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  get child => null;

  List<String> sounds = SoundManager.sounds;
  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff023e8a),
      appBar: AppBar(
        backgroundColor: Color(0xff0d47a1),
        title: Text('Music Player'),
        shadowColor: Color(0xff90caf9),
        actions: [
          IconButton(
            icon: Icon(
              Icons.list,
              color: Colors.white,
            ),
            onPressed: () {
              Get.toNamed(Routes.LIST);
            },
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 37,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKtB_q9MkG1DjB0RJJNyhOlAOa8mdVzboUtQ&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                  gradient: LinearGradient(
                    colors: const [
                      Colors.redAccent,
                      Colors.blueAccent,
                    ],
                  ),
                ),
                width: 470,
                height: 420,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 100,
                width: 440,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: const [
                        Colors.redAccent,
                        Colors.blueAccent,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          shape: CircleBorder(),
                        ),
                        onPressed: () {
                          player.pause();
                        },
                        child: Wrap(
                          children: <Widget>[
                            Icon(
                              Icons.stop_circle_outlined,
                              color: Colors.white,
                              size: 27.0,
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(30),
                          shape: CircleBorder(),
                        ),
                        onPressed: () {
                          player.play(
                            "assets/sounds/AaVzVwbK.mp3",
                            isLocal: true,
                          );
                        },
                        child: Wrap(
                          children: <Widget>[
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          shape: CircleBorder(),
                        ),
                        onPressed: () {
                          player.resume();
                        },
                        child: Wrap(
                          children: <Widget>[
                            Icon(
                              Icons.pause_outlined,
                              color: Colors.white,
                              size: 27.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
