// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:majlis_library/screens/Librarian_Control_page/Librarian_Control_Page.dart';
import 'package:majlis_library/screens/Student_Control_Page/student_control_page.dart';

class ScreenAcconut extends StatelessWidget {
  const ScreenAcconut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/lib2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 330,
              height: 200,
              
              child: Center(
                child: Column(
      
                  children: [
                    Title(
                              color: Colors.black, 
                              child: const Text(
                                'Manage your account',
                                textAlign: TextAlign.start, 
                                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                    ),
                    ),
                  Divider(),
                  
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("USER"),
                    titleAlignment: ListTileTitleAlignment.center,
                    //contentPadding: EdgeInsets.all(8),
                    contentPadding: EdgeInsets.only(left: 105,bottom: 10),
                    hoverColor: Colors.black,
                    iconColor: Colors.blue,
                    focusColor: Colors.black ,
                    splashColor: Colors.deepOrange,
                    onTap: (){
                       Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentControlPage()),);
                    },
                  ),
                
                  Divider(),
      
                    ListTile(
                    leading: Icon(Icons.library_add_rounded),
                    title: Text("LIBRARIAN"),
                    titleAlignment: ListTileTitleAlignment.center,
                    //contentPadding: EdgeInsets.all(8),
                    contentPadding: EdgeInsets.only(left: 105,top: 10),
                    hoverColor: Colors.black,
                    iconColor: Colors.blue,
                    focusColor: Colors.black ,
                    splashColor: Colors.deepOrange,
                    onTap: (){
                       Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LibrarianControlPage()),);
                    },
                  ),
                 
                  //  ListView.separated(itemBuilder:
                  //  (ctx,index){
                  //    return ListTile(
                  //     title: Text('STUDENT'),
                  //     leading: CircleAvatar(
                  //       backgroundColor: Colors.green,
                  //     ),
                  //    );
                  //                  }, separatorBuilder: (ctx,index){
                  //    return Divider();
                  //                  },
                  //  itemCount: 2
                  //  ),
                 
                  ],
                ),
              ),
              
              
                   
                    
              decoration: BoxDecoration(
               border: Border.all(
                        color: const Color.fromARGB(255, 244, 247, 244),
                        width: 2,
                      ), //Border.all
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          //Offset
                          blurRadius: 1.0,
                          spreadRadius: 0.2,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ]
            ),
            
            
          
            ),
          
          
          ),
        ],
      ),
    );
  }
}