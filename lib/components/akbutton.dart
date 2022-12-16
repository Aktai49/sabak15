import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PianoWhiteButton extends StatelessWidget {
  const PianoWhiteButton({
    Key? key, 
    required this.notesName,
  }) : super(key: key);

  final String notesName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
        width: 80,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith(
                  (states) => Colors.white),
            overlayColor: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.pressed)
                  ? Colors.black26
                  : null;
            }),
          ),
          onPressed: () {
            AudioPlayer().play(
              AssetSource(
                'notes/$notesName.wav')
              );
          },
          onLongPress: (() {
            AudioPlayer().play(
              AssetSource(
                'notes/$notesName.wav')
              );
          }) ,
          child: const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'f3',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
