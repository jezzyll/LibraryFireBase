import 'package:flutter/material.dart';
import 'package:majlis_library/screens/Add_Book/Add_Book.dart';
import 'package:majlis_library/screens/book_registration/book_registration.dart';
import 'package:majlis_library/screens/registration_list_view/registration_list.dart';
import 'package:majlis_library/screens/registration_list_view/registration_list_demo.dart';

class LibrarianControlPage extends StatelessWidget {
  const LibrarianControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back)),
        title: Text('Librarian'),
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
      body: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
          image: NetworkImage('https://imgs.search.brave.com/faD9AizMIawWSYaiJ5rM7p49X7QGlyzuBxvQz6KkZ5w/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTA2/MTQxNzIxNC9waG90/by9saWJyYXJ5Lmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz02/alhSVTREMDRRWGow/QjhMUDZ5ZXZYS29C/SlpNdFJXOG1FWlZX/ZmZEdEl3PQ'),
          fit: BoxFit.cover,
          ),
          ), 
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25,left: 30),
                  child: Container(
                       height: 180,
                       width: 160,
                       decoration: BoxDecoration(
                        color: Color(0xffFFECD6),
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage('assets/images/AddBook.jpg'),
                          fit: BoxFit.fill,)
                       ),   
                  ),
                ),
                
                  Padding(
                  padding: const EdgeInsets.only(top: 25,left: 30),
                  child: Container(
                       height: 180,
                       width: 160,
                       decoration: BoxDecoration(
                        color: Color(0xff4CB9E7),
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage('assets/images/BookRegistration.png'),
                          fit: BoxFit.fill,)
                       ),   
                  ),
                ),
        
              ],
            ),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 5,left: 50),
                 child: OutlinedButton(onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddBook()),);
                 }, child: Text('Add Book',style: TextStyle(fontWeight: FontWeight.bold),
                 ),
                 style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(115, 245, 234, 234),
                 ),
                 ),
                 ),
               ),
                            
                Padding(
                 padding: const EdgeInsets.only(top: 5,left: 58),
                   child: OutlinedButton(onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookRegistrationPage()),);
                   }, child: Text('Book Registration',style: TextStyle(fontWeight: FontWeight.bold),
                     ),
                   style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(115, 245, 234, 234),
                    ),
                   ),
                  ),
                 ),
               ],
             ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25,left: 30),
                  child: Container(
                       height: 180,
                       width: 160,
                       decoration: BoxDecoration(
                        color: Color(0xff3559E0),
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage('assets/images/RegisterList.png'),
                          fit: BoxFit.fill,)
                       ),   
                  ),
                ),
                
                  Padding(
                  padding: const EdgeInsets.only(top: 25,left: 30),
                  child: Container(
                       height: 180,
                       width: 160,
                       decoration: BoxDecoration(
                        color: Color(0xff0F2167),
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage('assets/images/ComingSoon.png'),
                          fit: BoxFit.fill,)
                       ),   
                  ),
                ),
        
              ],
            ),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 5,left: 30),
                 child: OutlinedButton(onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationListDemo()),);
                 }, child: Text('Registration List',style: TextStyle(fontWeight: FontWeight.bold),
                 ),
                 style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(115, 245, 234, 234),
                 ),
                 ),
                 ),
               ),
                            
                // Padding(
                //  padding: const EdgeInsets.only(top: 5,left: 65),
                //    child: OutlinedButton(onPressed: (){}, child: Text('Coming Soon',style: TextStyle(fontWeight: FontWeight.bold),
                //      ),
                //    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(115, 0, 0, 0),
                //     ),
                //    ),
                //   ),
                //  ),
               ],
             )
           ],
         ),
      ),
     );
   }
}