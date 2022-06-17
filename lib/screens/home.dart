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
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      ),
    );
  }

  Widget _buildList(int index) {
    Category category = categories[index];
    return  Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(children: [
          Image.asset(categories[index].categoryImage, fit: BoxFit.fill),
          Text(categories[index].name)
        ]),
      
    );
  }
}
