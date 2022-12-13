import 'package:flutter/material.dart';

import '../home/home_Page.dart';

class MyApp extends StatelessWidget {
const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      title: 'Piano',
      theme: ThemeData.dark(),
      home: const HomePage()
    );
  }
}