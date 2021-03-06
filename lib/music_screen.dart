import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'profile_screen.dart';

class MusicScreen extends StatefulWidget {
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  Duration _duration = Duration();
  Duration _position = Duration();
  static AudioPlayer advancedPlayer = AudioPlayer();
  AudioCache audiocache = AudioCache(fixedPlayer: advancedPlayer);

  @override
  void initState() {
    advancedPlayer.stop();
    super.initState();
    audiocache.play('1.mp3');
    initPlayer();
  }

  void initPlayer() {
    // ignore: deprecated_member_use
    advancedPlayer.durationHandler = (d) => setState(() {
          _duration = d;
        });
    // ignore: deprecated_member_use
    advancedPlayer.positionHandler = (p) => setState(() {
          _position = p;
        });
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    advancedPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music Player"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => ProfileScreen()
                )
              );
            },
          ),
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return {'Logout', 'Settings'}.map(
                (String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                },
              ).toList();
            },
          )
        ],
      ),
      body: Container(
        //color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.yellow,
        child: Column(
          children: [
            SizedBox(height: 80,),
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 120,
                child: Image.asset('assets/images/1.jpg'),
              ),
            ),
            SizedBox(height: 60,),
            Text(
              "Save Your Tears",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "The Weeknd",
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            SizedBox(height: 20),
            Slider(
              value: _position.inSeconds.toDouble(),
              min: 0,
              max: _duration.inSeconds.toDouble(),
              onChanged: (double value) {
                setState(() {
                  seekToSecond(value.toInt());
                  value = value;
                });
              },
              activeColor: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${_position.inSeconds.toDouble()}",
                    style: TextStyle(color: Colors.white.withOpacity(0.5)),
                  ),
                  Text(
                    "${_duration.inSeconds.toDouble()}",
                    style: TextStyle(color: Colors.white.withOpacity(0.7)),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.skip_previous,
                  size: 35,
                ),
                Icon(Icons.loop, size: 35),
                IconButton(
                    icon: Icon(Icons.play_circle_filled, size: 35),
                    onPressed: () {
                      audiocache.play("1.mp3");
                    }
                ),
                IconButton(
                    icon: Icon(Icons.pause, size: 35),
                    onPressed: () {
                      advancedPlayer.pause();
                    }
                ),
                Icon(Icons.skip_next, size: 35),
              ],
            )
          ],
        ),
      ),
    );
  }
}