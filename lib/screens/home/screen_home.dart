import 'package:flutter/material.dart';
import 'package:majlis_library/screens/account/screen_account.dart';
import 'package:majlis_library/screens/home/widgets/bottom_navigation.dart';
import 'package:majlis_library/screens/sub_home/screen_subhome.dart';

import '../sub_home/screen_sub.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages = const[
    ScreenSub(),
    ScreenAcconut()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MAJLIS LIBRARY'),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
      ),
      bottomNavigationBar:const LibraryManagerBottomNavigation(),
      body: SafeArea(child:ValueListenableBuilder(valueListenable: selectedIndexNotifier,
       builder: (BuildContext ctx,int UpdatedIndex, Widget? _){
        return _pages[UpdatedIndex];
      })
      ),
      );
  }
}