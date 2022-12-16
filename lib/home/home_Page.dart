import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sabak15/components/karaButton.dart';

import '../components/akbutton.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Piano'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Expanded(
              flex: 1,
              child: Center(
                child: Text('do re mi '),
              )),
          Expanded(
            flex: 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: ((context, index) {
                return Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        PianoWhiteButton(
                          notesName: 'note1',
                        ),
                        //PianoBlackButton(notesName: '',),
                        //PianoBlackButton(),
                        PianoWhiteButton(
                          notesName: 'note2',
                        ),
                        //PianoBlackButton(),
                        PianoWhiteButton(
                          notesName: 'note3',
                        ),

                        PianoWhiteButton(
                          notesName: 'note4',
                        ),
                        //PianoBlackButton(),
                        PianoWhiteButton(
                          notesName: 'note5',
                        ),
                        //PianoBlackButton(),
                        PianoWhiteButton(
                          notesName: 'note6',
                        ),
                        //PianoBlackButton(),
                        PianoWhiteButton(
                          notesName: 'note7',
                        ),
                      ],
                    ),
                    Positioned(
                      left: 44,
                      right: 0,
                      top: 0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          PianoBlackButton(
                            notesName: 'note1',
                          ),
                          PianoBlackButton(
                            notesName: 'note1',
                          ),
                          PianoBlackButton(
                            visible: false,
                            notesName: 'note1',
                          ),
                          PianoBlackButton(
                            notesName: 'note1',
                          ),
                          PianoBlackButton(
                            notesName: 'note1',
                          ),
                          PianoBlackButton(
                            notesName: 'note1',
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class PianoBlackButton extends StatelessWidget {
//   const PianoBlackButton({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(2.0),
//       child: SizedBox( 
//         height: 250,
//         width: 80,
//         child: ElevatedButton(
//           style: ButtonStyle( 
//             backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white), 
//             overlayColor: MaterialStateProperty.resolveWith(
//               (states) { 
//                 return states.contains(
//                   MaterialState.pressed)
//                 ? Colors.black38 : null;

//             }),
//           ),
//           onPressed: () { },
//           child: Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 bottom: 10),
//               child: Text('f3',
//               style: TextStyle(  
//                 color: Colors.white
//               ),),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
