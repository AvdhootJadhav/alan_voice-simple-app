import 'package:alan_voice/alan_voice.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple[800],
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState(){
    super.initState();
    setupAlan();
  }

  setupAlan(){
    AlanVoice.addButton("dac1a05c26500179715e15bb41fc1aa42e956eca572e1d8b807a3e2338fdd0dc/stage"
    , buttonAlign: AlanVoice.BUTTON_ALIGN_RIGHT,
    );
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Alan Voice"),
      ),
    );
  }
}