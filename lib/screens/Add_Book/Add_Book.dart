import 'package:flutter/material.dart';

class AddBook extends StatefulWidget {
  const AddBook({super.key});

  @override
  State<AddBook> createState() => _AddBookState();
}



class _AddBookState extends State<AddBook> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 131, 191, 240),
//        leading: Builder(
//     builder: (BuildContext context) {
//       return IconButton(
//         icon: const Icon(Icons.arrow_back),
//         onPressed: () { int count = 0;
// Navigator.of(context).popUntil((_) => count++ >= 2); },
        
//       );
//     },
//   ),
  title: Text('Add Book'),
  actions: [
                 
                 PopupMenuButton(
                  
                   // add icon, by default "3 dot" icon
                   // icon: Icon(Icons.book)
                   itemBuilder: (context){
                     return [
                            PopupMenuItem<int>(
                                value: 0,
                                child: Text("Refresh"),
                                onTap: (){},
                                height: BorderSide.strokeAlignCenter,
                            ),

                            // PopupMenuItem<int>(
                            //     value: 1,
                            //     child: Text("Settings"),
                            // ),

                            // PopupMenuItem<int>(
                            //     value: 2,
                            //     child: Text("Logout"),
                            // ),
                        ];
                   },
                   onSelected:(value){
                      if(value == 0){
                         print("My account menu is selected.");
                      }else if(value == 1){
                         print("Settings menu is selected.");
                      }else if(value == 2){
                         print("Logout menu is selected.");
                      }
                   }
                  ),

                   
            ],
),
      backgroundColor: Colors.white,
      body:
      Container(
          decoration: BoxDecoration(
          image: DecorationImage(
          image: NetworkImage('https://imgs.search.brave.com/faD9AizMIawWSYaiJ5rM7p49X7QGlyzuBxvQz6KkZ5w/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTA2/MTQxNzIxNC9waG90/by9saWJyYXJ5Lmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz02/alhSVTREMDRRWGow/QjhMUDZ5ZXZYS29C/SlpNdFJXOG1FWlZX/ZmZEdEl3PQ'),
          fit: BoxFit.cover,
          )
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Container(
          margin: const EdgeInsets.all(40.0),
          height: 400.0,
          width: double.infinity,
          decoration:  const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffDDDDDD),
            blurRadius: 1.0,
            spreadRadius: 0.5,
            offset: Offset(0.0, 0.0),
          )
        ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Title(color: Colors.blue, child: Text('ADD BOOK', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25,right: 10,left: 10,bottom: 10),
                child: TextFormField(textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Book Name"), //hint text
                                hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), //hint text style
                                hintMaxLines: 2, //hint text maximum lines
                                hintTextDirection: TextDirection.ltr //hint text direction, current is RTL
                        ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.start,
                    decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Author Name"), //hint text
                                hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), //hint text style
                                hintMaxLines: 2, //hint text maximum lines
                                hintTextDirection: TextDirection.ltr //hint text direction, current is RTL
                        ),
                                // validator: (value) {
                                //  if (value == null || value.isEmpty) {
                                //  return 'Please enter some text';
                                //  }
                                //  return null;
                                //  }
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Category"), //hint text
                                hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), //hint text style
                                hintMaxLines: 2, //hint text maximum lines
                                hintTextDirection: TextDirection.ltr //hint text direction, current is RTL
                        ),
                                //  validator: (value) {
                                //    if (value == null || value.isEmpty) {
                                //    return 'Please enter some text';
                                //    }
                                //    return null;
                                //    }
                ),
              ),

              SizedBox(
                height: 60,
                width: 120,
                child: Padding(
                padding: const EdgeInsets.only(top: 23),
                child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                  style: ButtonStyle(
                   overlayColor: MaterialStateProperty.resolveWith<Color?>(
                   (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                     return Colors.blueAccent; //<-- SEE HERE
                      return null; // Defer to the widget's default.
                        },
                     ),
                   ),
                child: const Text('Submit',style: TextStyle(fontSize: 20),),
                ),
              ),
              )

              //               Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: TextFormField(
              //     textAlign: TextAlign.start,
              //                   decoration: InputDecoration(
              //                   hintText: ("Category"), //hint text
              //                   hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), //hint text style
              //                   hintMaxLines: 2, //hint text maximum lines
              //                   hintTextDirection: TextDirection.ltr //hint text direction, current is RTL
              //           ),
              //   ),
              // ),
            
            ],
          ),
        ),
          ],
        ),
      ),
    );
}
}