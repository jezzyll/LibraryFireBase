import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildImageButton('Catalogue', 'assets/images/BookListView.png', () {
              // Add your action for Catalogue button
              print('Catalogue button pressed');
            }),
            SizedBox(height: 8.0),
            buildImageButton('Book Registration', 'assets/images/BookRegistration.png', () {
              // Add your action for Book Registration button
              print('Book Registration button pressed');
            }),
            SizedBox(height: 8.0),
            buildImageButton('Book Review', 'assets/images/BookReview.png', () {
              // Add your action for Book Review button
              print('Book Review button pressed');
            }),
            SizedBox(height: 8.0),
            buildImageButton('Favorites', 'assets/images/BookReview.png', () {
              // Add your action for Favorites button
              print('Favorites button pressed');
            }),
          ],
        ),
      ),
    );
  }

  Widget buildImageButton(String title, String imagePath, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        padding: EdgeInsets.all(16.0),
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 100.0,
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}