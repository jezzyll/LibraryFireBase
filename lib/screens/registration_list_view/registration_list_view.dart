import 'package:flutter/material.dart';

class BookList extends StatefulWidget {
  @override

  _BookListState createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  List<Map<String, String>> dataList = []; // List to store data items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book'),
      ),
      body: ListView(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              // Add a new data item
              setState(() {
                dataList.add({
                  'personName': 'John Doe',
                  'bookName': 'Flutter for Beginners',
                  'authorName': 'Jane Smith',
                  'date': '2024-02-06',
                  'time': '10:00 AM'
                });
              });
            },
            child: Text('Add Data Item'),
          ),
          SizedBox(height: 20),
          // Display data items
          Column(
            children: dataList.map((data) {
              return Card(
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Person Name: ${data['personName']}'),
                      Text('Book Name: ${data['bookName']}'),
                      Text('Author Name: ${data['authorName']}'),
                      Text('Date: ${data['date']}'),
                      Text('Time: ${data['time']}'),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}