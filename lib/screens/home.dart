import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/category.dart';
import 'package:quiz_app/screens/options_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC3DFE0),
      body: GridView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) => _buildList(index),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 4,
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5),
      ),
    );
  }

  Widget _buildList(int index) {
    Category category = categories[index];
    return GestureDetector(
      onTap: (() => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => ResultScreen(
                    photo: category.categoryImage,
                  )))),
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Container(
              foregroundDecoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.transparent, Color(0xFF01172F)],
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
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8, left: 8),
                child: Text(
                  categories[index].name,
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
