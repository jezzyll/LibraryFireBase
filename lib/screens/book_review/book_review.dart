import 'package:flutter/material.dart';

class BookReviewPage extends StatefulWidget {
  @override
  _BookReviewPageState createState() => _BookReviewPageState();
}

class _BookReviewPageState extends State<BookReviewPage> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _authorController = TextEditingController();
  TextEditingController _reviewController = TextEditingController();
    TextEditingController _writtenByController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Review'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _writtenByController,
              decoration: InputDecoration(labelText: 'Written By'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Book Title'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _authorController,
              decoration: InputDecoration(labelText: 'Author'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _reviewController,
              maxLines: 5,
              decoration: InputDecoration(labelText: 'Review'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle the book review submission logic here
                String writtenby = _writtenByController.text;
                String title = _titleController.text;
                String author = _authorController.text;
                String review = _reviewController.text;

                // You can process and store the review data as needed
                print('Written By: $writtenby\nTitle: $title\nAuthor: $author\nReview: $review');
              },
              child: Text('Submit Review'),
              ),
            ],
          ),
        ),
      ),
     ),
    );
  }
 }