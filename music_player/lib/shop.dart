import 'package:flutter/material.dart';
import 'profile_screen.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop Music Player"),
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
      )
    );
  }
}
