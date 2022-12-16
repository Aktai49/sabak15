// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton({
    Key? key,
    this.visible = true,
    required this.notesName,
  }) : super(key: key);

  final bool visible;
  final String notesName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: SizedBox(
        width: 63,
        height: 170,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            onPressed: () {
              AudioPlayer().play(
                AssetSource('notes/$notesName.wav'));
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
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text('f3'),
                )),
          ),
        ),
      ),
    );
  }
}
