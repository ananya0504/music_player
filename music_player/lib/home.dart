import 'package:flutter/material.dart';
import './profile_screen.dart';
import './music_screen.dart';
import './shop.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> _songImg = [
    "assets/images/1.jpg",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.png",
    "assets/images/9.png",
    "assets/images/10.png",
  ];

  final List<String> _songs = [
    "Save Your Tears",
    "Goosebumps",
    "Dakiti",
    "Bichota",
    "Heat Waves",
    "Lifestyle",
    "Streets",
    "Positions",
    "Holiday",
    "Anyone",
  ];
  
  final List<String> _singerNames = [
    "The Weeknd",
    "Travis Scott",
    "Bad Bunny",
    "Karol G",
    "Glass Animals",
    "Jason Derulo",
    "Doja CAT",
    "Ariana Grande",
    "Lil Nas X",
    "Justin Bieber",
  ];

  var i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music Player",),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle,),
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
                }
              ).toList();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
            mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  'Recently Played',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    height: 180.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal:5),
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) => Card(
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                RaisedButton(
                                  padding: EdgeInsets.all(5),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) => MusicScreen()
                                      )
                                    );
                                  },
                                  color: Colors.black,                      
                                  child: Container(
                                    height: 110,
                                    width: 130,
                                    child: Image.asset( _songImg[i]),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        _songs[i],
                                        style: TextStyle(
                                          fontWeight:FontWeight.bold 
                                      ),
                                      ),
                                      Text(
                                        _singerNames[i++],
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
                                    ] 
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                Text(
                  'Weekly Suggestions',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MusicScreen()));
                      },
                      title: Text('Motivation $int'),
                      subtitle: Text('This is a description of the motivation.')),
                ),
                Card(
                  child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MusicScreen()));
                      },
                      title: Text('Motivation $int'),
                      subtitle: Text('This is a description of the motivation.')),
                ),
                Card(
                  child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MusicScreen()));
                      },
                      title: Text('Motivation $int'),
                      subtitle: Text('This is a description of the motivation.')),
                ),
                Card(
                  child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MusicScreen()));
                      },
                      title: Text('Motivation $int'),
                      subtitle: Text('This is a description of the motivation.')),
                ),
                Card(
                  child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MusicScreen()));
                      },
                      title: Text('Motivation $int'),
                      subtitle: Text('This is a description of the motivation.')),
                ),
                SizedBox(height: 20),
                Text(
                  'Shop from App',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    height: 165.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal:5),
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) => Card(
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                RaisedButton(
                                  padding: EdgeInsets.all(5),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) => ShopScreen()
                                      )
                                    );
                                  },
                                  color: Colors.black,                      
                                  child: Container(
                                    height: 110,
                                    width: 130,
                                    child: Image.asset(
                                          "assets/images/shop.png",
                                          scale: 8,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text("Shop"),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ]
          ),
        ),
      ),
    );
  }
}