import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:majlis_library/screens/Add_Book/Add_Book.dart';
import 'package:majlis_library/screens/book_registration/book_registration.dart';
import 'package:majlis_library/screens/book_review/book_review.dart';

class StudentTrial extends StatefulWidget {
  const StudentTrial({super.key});

  @override
  State<StudentTrial> createState() => _StudentTrialState();
}



class _StudentTrialState extends State<StudentTrial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50)
              )
            ),
            child: Column(
              children: [
                const SizedBox(height: 50,),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  title: Text("Student", style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white
                  ),),
                  trailing:const CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 50,),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: GestureDetector(
              onTap: (){
                print('pressed');
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100)
                  )
                ),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                children: [
                 itemDashboard1('videos',CupertinoIcons.play_rectangle, Colors.deepOrange),
                 itemDashboard2('Add Book',CupertinoIcons.book_fill, Colors.deepPurple),
                 itemDashboard3('Book Registration',CupertinoIcons.doc_person_fill, Colors.indigo),
                 itemDashboard4('Book List View',CupertinoIcons.square_list, Colors.lightGreen),
                ],),
              ),
            ),
          )
        ],
      ),
    );
  }


  itemDashboard1(String title,IconData iconData, Color background) =>Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset:const Offset(0, 5),
          color: Theme.of(context).primaryColor.withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 5
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) =>  AddBook()
            )
            ));
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: background,
              shape: BoxShape.circle
            ),
            child: Icon(iconData , color: Colors.white,),
          ),
        ),
        const SizedBox(height: 8,),
        Text(title, style: Theme.of(context).textTheme.titleMedium,)
      ],
    ),
  );

   itemDashboard2(String title,IconData iconData, Color background) =>Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset:const Offset(0, 5),
          color: Theme.of(context).primaryColor.withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 5
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) =>  AddBook()
            )
            ));
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: background,
              shape: BoxShape.circle
            ),
            child: Icon(iconData , color: Colors.white,),
          ),
        ),
        const SizedBox(height: 8,),
        Text(title, style: Theme.of(context).textTheme.titleMedium,)
      ],
    ),
  );

   itemDashboard3(String title,IconData iconData, Color background) =>Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset:const Offset(0, 5),
          color: Theme.of(context).primaryColor.withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 5
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) =>  BookRegistrationPage()
            )
            ));
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: background,
              shape: BoxShape.circle
            ),
            child: Icon(iconData , color: Colors.white,),
          ),
        ),
        const SizedBox(height: 8,),
        Text(title, style: Theme.of(context).textTheme.titleMedium,)
      ],
    ),
  );

  itemDashboard4(String title,IconData iconData, Color background) =>Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset:const Offset(0, 5),
          color: Theme.of(context).primaryColor.withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 5
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) =>  BookReviewPage()
            )
            ));
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: background,
              shape: BoxShape.circle
            ),
            child: Icon(iconData , color: Colors.white,),
          ),
        ),
        const SizedBox(height: 8,),
        Text(title, style: Theme.of(context).textTheme.titleMedium,)
      ],
    ),
  );

}