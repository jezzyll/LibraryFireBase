// import 'package:flutter/material.dart';

// class ScreenSubHome extends StatefulWidget {
//   const ScreenSubHome ({super.key});

//   @override
//   State<ScreenSubHome> createState() => _ScreenSubHomeState();
// }

// class _ScreenSubHomeState extends State<ScreenSubHome> {

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       ScreenSubHome: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/lib2.jpg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: null,
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class ScreenSubHome extends StatefulWidget {
//   const ScreenSubHome({Key? key}) : super(key: key);

//   @override
//   State<ScreenSubHome> createState() => _ScreenSubHomeState();
// }

// class _ScreenSubHomeState extends State<ScreenSubHome> {
//   final List<Book> books = [
//     Book(
//       title: 'The Great Gatsby',
//       author: 'F. Scott Fitzgerald',
//       coverImage: 'assets/images/lasthope.jpg',
//     ),
//     Book(
//       title: 'To Kill a Mockingbird',
//       author: 'Harper Lee',
//       coverImage: 'assets/images/atomiclove.jpg',
//     ),
//     // Add more books as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       ScreenSubHome: Container(
//         // decoration: BoxDecoration(
//         //   image: DecorationImage(
//         //     image: AssetImage("assets/images/lib2.jpg"),
//         //     fit: BoxFit.cover,
//         //   ),
//         // ),
//         child: Column(
//           children: [
//             BookSlider(books: books),
//             // Add other widgets below the BookSlider as needed
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Book {
//   final String title;
//   final String author;
//   final String coverImage;

//   Book({required this.title, required this.author, required this.coverImage});
// }

// class BookSlider extends StatelessWidget {
//   final List<Book> books;

//   BookSlider({required this.books});

//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider.builder(
//       itemCount: books.length,
//       itemBuilder: (context, index, realIndex) {
//         return BookSlide(book: books[index]);
//       },
//       options: CarouselOptions(
//         autoPlay: true,
//         aspectRatio: 16 / 9,
//         enlargeCenterPage: true,
//         enableInfiniteScroll: true,
//         viewportFraction: 0.8,
//       ),
//     );
//   }
// }

// class BookSlide extends StatelessWidget {
//   final Book book;

//   BookSlide({required this.book});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(8.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8.0),
//         image: DecorationImage(
//           image: AssetImage(book.coverImage),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Stack(
//         children: [
//           Positioned(
//             bottom: 1.0,
//             left: 16.0,
//             child: Text(
//               book.title,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 1.0,
//             left: 16.0,
//             child: Text(
//               'by ${book.author}',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 16.0,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';



// void main()=> runApp(finearts());

// class finearts extends StatelessWidget {
//   const finearts({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "finearts",
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.teal,
//           title: Center(child: Text("Finearts"))
//           ),
//           body: SingleChildScrollView(child: ScreenSubHome()),
//         ));
//   }
// }

class ScreenSubHome extends StatefulWidget {
  const ScreenSubHome({super.key});

  @override
  State<ScreenSubHome> createState() => _bodyState();
}

class _bodyState extends State<ScreenSubHome> {
  List<String> Items=[
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo20QkY52ddgxjDarLye47ThDXPKY8TzhXMKrSTjD4sQFgtRaQPYM7PwQrnfgMZjanyts&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmHuU83xiv36ytgMLKjXl1kM5dImllD9-z9w&usqp=CAU',
    'https://m.media-amazon.com/images/I/71uI6tO1oDL._UX250_.jpg',
    'https://godigitalzone.in/wp-content/uploads/2021/09/Rich-Dad-and-Poor-Dad-PDF.jpg',
  ];
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
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("LIBRARY",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    )),
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            child: 
            CarouselSlider(items: Items.map((e) => ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(e,
                  height: 200,
                  width: 100,
                  fit: BoxFit.contain,
                  ),
                ],
              ),
            )).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              height: 150
            )
            ),
          ),
      ]
      ),
    );
  }
}