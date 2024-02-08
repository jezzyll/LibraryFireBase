import 'package:flutter/material.dart';

class BookData {
  final String bookName;
  final String authorName;
  final String category;
  bool isFavorite;

  BookData({
    required this.bookName,
    required this.authorName,
    required this.category,
    this.isFavorite = false,
  });
}

class BookListView extends StatefulWidget {
  @override
  _BookListViewState createState() => _BookListViewState();
}

class _BookListViewState extends State<BookListView> {
  List<BookData> bookList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalogue'),
      ),
      body: ListView(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              // Add a new book data item
              setState(() {
                bookList.add(BookData(
                  bookName: 'Flutter for Beginners',
                  authorName: 'Jane Smith',
                  category: 'Programming',
                ));
              });
            },
            child: Text('Add Book'),
          ),
          SizedBox(height: 20),
          // Display book items in a table
          Expanded(
            child: DataTable(
              columns: [
                DataColumn(label: Text('Book Name')),
                DataColumn(label: Text('Author Name')),
                DataColumn(label: Text('Category')),
                DataColumn(label: Text('Actions')),
              ],
              rows: bookList.map((book) {
                return DataRow(cells: [
                  DataCell(Text(book.bookName)),
                  DataCell(Text(book.authorName)),
                  DataCell(Text(book.category)),
                  DataCell(
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            book.isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: book.isFavorite ? Colors.red : null,
                          ),
                          onPressed: () {
                            // Toggle favorite status
                            setState(() {
                              book.isFavorite = !book.isFavorite;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            // Remove book data item
                            setState(() {
                              bookList.remove(book);
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.rate_review),
                          onPressed: () {
                            // Navigate to review page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ReviewPage(book: book)),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ]);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewPage extends StatelessWidget {
  final BookData book;

  const ReviewPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Review'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Book Name: ${book.bookName}'),
            Text('Author Name: ${book.authorName}'),
            Text('Category: ${book.category}'),
            SizedBox(height: 20),
            // Here you can add a form or any UI for writing a review for the book
            Text('Write your review here...'),
          ],
        ),
      ),
    );
  }
}
