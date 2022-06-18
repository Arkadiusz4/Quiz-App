import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/models/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) => _buildList(index),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
      ),
    );
  }

  Widget _buildList(int index) {
    Category category = categories[index];
    return Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(children: [
          Container(
            foregroundDecoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(categories[index].categoryImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: -1,
            child: Text(
                categories[index].name,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
          ),
        ]));
  }
}
