import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/dots.dart';
import 'package:quiz_app/widgets/row_with_dots.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.55,
                ),
                Positioned(
                  bottom: 0,
                  child: Card(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      height: 100,
                      width: MediaQuery.of(context).size.width - 80,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
