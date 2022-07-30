import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home.dart';
import 'package:quiz_app/screens/options_screen.dart';
import 'package:quiz_app/widgets/column_with_icon.dart';
import 'package:quiz_app/widgets/row_with_dots.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key, required this.photo}) : super(key: key);

  final String photo;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F3EE),
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * .6 + 70,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 70,
                      left: 0,
                      right: 0,
                      child: Container(
                        foregroundDecoration: const BoxDecoration(
                            gradient: LinearGradient(
                          colors: [Colors.transparent, Color(0xFF01172F)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(20),
                          ),
                          image: DecorationImage(
                              image: AssetImage(widget.photo),
                              fit: BoxFit.cover),
                        ),
                        width: constraints.maxWidth,
                        height: constraints.maxHeight * 0.6,
                      ),
                    ),
                    Positioned(
                      top: constraints.maxHeight * 0.5,
                      height: 100,
                      left: 10,
                      right: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Card(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFF4F3EE),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      RowWithDots(
                                          dotsColor: Colors.blue,
                                          textColor: Colors.blue,
                                          text: '100%',
                                          subtext: 'Complete'),
                                      RowWithDots(
                                          dotsColor: Colors.blue,
                                          textColor: Colors.blue,
                                          text: '20',
                                          subtext: 'Total Questions'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      RowWithDots(
                                          dotsColor: Colors.green,
                                          textColor: Colors.green,
                                          text: '13',
                                          subtext: 'Correct'),
                                      RowWithDots(
                                          dotsColor: Colors.red,
                                          textColor: Colors.red,
                                          text: '7',
                                          subtext: 'Wrong'),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (() => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OptionsScreen()))),
                    child: const ColumnWithIcon(
                        backgroundColor: Color(0xFFC3DFE0),
                        icon: Icon(Icons.restart_alt_outlined),
                        text: 'Play again'),
                  ),
                  GestureDetector(
                    onTap: (() => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()))),
                    child: const ColumnWithIcon(
                        backgroundColor: Color(0xFFC3DFE0),
                        icon: Icon(Icons.home),
                        text: 'Home'),
                  ),
                  const ColumnWithIcon(
                      backgroundColor: Color(0xFFC3DFE0),
                      icon: Icon(Icons.remove_red_eye),
                      text: 'Show answer'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
