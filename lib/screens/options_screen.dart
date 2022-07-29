import 'package:flutter/material.dart';

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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Text('Choose difficulty'),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                    indicator: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    tabs: [
                      Tab(text: 'Easy'),
                      Tab(text: 'Mid'),
                      Tab(text: 'Hard'),
                      Tab(text: 'Pro')
                    ]),
              ),
            ),
            SizedBox(///////////////////////////////////////////////////////////////////////////
              height: 500,
            ),
            // TabBarView(children: [
            //   Text('Easy'),
            //   Text('Easy'),
            //   Text('Easy'),
            //   Text('Easy'),
            // ]),
          ],
        )),
      ),
    );
  }
}
