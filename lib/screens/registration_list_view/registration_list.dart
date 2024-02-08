import 'package:flutter/material.dart';

class DataItem {
  final String personName;
  final String bookName;
  final String authorName;
  final String date;
  final String time;
  final String submitDate;

  DataItem({
    required this.personName,
    required this.bookName,
    required this.authorName,
    required this.date,
    required this.time,
    required this.submitDate,
  });
}

class RegistrationList extends StatefulWidget {
  @override
  _RegistrationListState createState() => _RegistrationListState();
}

class _RegistrationListState extends State<RegistrationList> {
  List<DataItem> dataList = [];
  bool showDate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration List'),
      ),
      body: ListView(
        children: <Widget>[
          showDate
              ? ElevatedButton(
                  onPressed: null,
                  child: Text(DateTime.now().toString()),
                )
              : ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showDate = true;
                    });
                  },
                  child: Text('Submit'),
                ),
          SizedBox(height: 20),
          // Display data items in a table
          DataTable(
            columns: [
              DataColumn(label: Text('Person Name')),
              DataColumn(label: Text('Book Name')),
              DataColumn(label: Text('Author Name')),
              DataColumn(label: Text('Date')),
              DataColumn(label: Text('Time')),
              DataColumn(label: Text('Submit Date')),
              DataColumn(label: Text('Actions')),
            ],
            rows: dataList.map((data) {
              return DataRow(cells: [
                DataCell(Text(data.personName)),
                DataCell(Text(data.bookName)),
                DataCell(Text(data.authorName)),
                DataCell(Text(data.date)),
                DataCell(Text(data.time)),
                DataCell(Text(data.submitDate)),
                DataCell(
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Remove data item
                      setState(() {
                        dataList.remove(data);
                      });
                    },
                  ),
                ),
              ]);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
