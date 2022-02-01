import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bornomala Childs Garden School'),
        backgroundColor: Colors.lightGreen,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Hazrat Ali'), accountEmail: Text('m3h.tex15121996@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2017/08/02/23/58/people-2574170_960_720.jpg'),
                )
            ),
            ListTile(
              title: Text('message'),
              trailing: Icon(Icons.message),
            ),
            ListTile(
              title: Text('inbox'),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              title: Text('mail'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              tileColor: Colors.purple,
              title: Text('Arrow'),
              trailing: Icon(Icons.eleven_mp),
            ),
          ],
        ),
      ),
    );
  }
}
