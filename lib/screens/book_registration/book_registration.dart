
import 'package:flutter/material.dart';

class BookRegistrationPage extends StatefulWidget {
  @override
  _BookRegistrationPageState createState() => _BookRegistrationPageState();
}

class _BookRegistrationPageState extends State<BookRegistrationPage> {
  TextEditingController _personNameController = TextEditingController();
  TextEditingController _bookNameController = TextEditingController();
  TextEditingController _authorNameController = TextEditingController();
  TextEditingController _bookNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Registration Form'),
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
                Text(
                  'Book Registration',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _personNameController,
                  decoration: InputDecoration(
                    labelText: 'Name of Person',
                    icon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _bookNameController,
                  decoration: InputDecoration(
                    labelText: 'Name of Book',
                    icon: Icon(Icons.book),
                  ),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _authorNameController,
                  decoration: InputDecoration(
                    labelText: 'Name of Author',
                    icon: Icon(Icons.person_outline),
                  ),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _bookNumberController,
                  decoration: InputDecoration(
                    labelText: 'Book Number',
                    icon: Icon(Icons.confirmation_number),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle book registration logic here
                    String personName = _personNameController.text;
                    String bookName = _bookNameController.text;
                    String authorName = _authorNameController.text;
                    String bookNumber = _bookNumberController.text;

                    // You can process and store the registration data as needed
                    print('Person Name: $personName\nBook Name: $bookName\nAuthor Name: $authorName\nBook Number: $bookNumber');
                  },
                  child: Text(
                    'Register Book',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  // style: ElevatedButton.styleFrom(
                  //   primary: Theme.of(context).primaryColor,
                  //   padding: EdgeInsets.symmetric(vertical: 16.0),
                  // ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}