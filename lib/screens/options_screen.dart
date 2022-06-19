import 'package:flutter/material.dart';
import 'package:toggle_bar/toggle_bar.dart';

class OptionsScreen extends StatefulWidget {
  OptionsScreen({Key? key}) : super(key: key);

  @override
  State<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  List<String> labels = ['Easy', 'Medium', 'Expert', 'Pro'];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Text('Choose difficulty'),
          ToggleBar(
            labels: labels,
          textColor: Colors.white,
          
          ),
        ],
      )),
    );
  }
}
