import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  
  void player(int number) {
    final player = AudioCache();
    player.play('note$number.wave');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'Xylophone',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                    child: Text('do'),
                    color: Colors.red,
                    onPressed: () {
                      print('note');

                      player(1);
                    }),
              ),
              Expanded(
                child: FlatButton(
                  child: Text('ré'),
                  color: Colors.orange,
                  onPressed: () {
                    print('note2');
                    player(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Text('mi'),
                  color: Colors.yellow,
                  onPressed: () {
                    print('note3');
                    player(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Text('fa'),
                  color: Colors.green,
                  onPressed: () {
                    print('note4');
                    player(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Text('sol'),
                  color: Colors.green.shade900,
                  onPressed: () {
                    print('note5');
                    player(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Text('la'),
                  color: Colors.blue,
                  onPressed: () {
                    print('note6');
                    player(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Text('si'),
                  color: Colors.purple,
                  onPressed: () {
                    print('note7');
                    player(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
