import 'package:flutter/material.dart';
import 'package:securityapp/pages/addsecmenu.dart';
import 'package:securityapp/pages/viewsecmenu.dart';

class menus extends StatefulWidget {
  const menus({super.key});

  @override
  State<menus> createState() => _menusState();
}
int currentIndex=0;
class _menusState extends State<menus> {
  final List<Widget> pages=[
addsecmenu(),
    secviewmenu(),
    addsecmenu()

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),

        body:pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar
          (
          onTap: (index){
            print(index);
            setState(() {
              currentIndex=index;
            });
          },
          items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.add),
          label:"ADD SEC"
          ),
        BottomNavigationBarItem(icon: Icon(Icons.view_agenda),
        label: "VIEW SEC"),
        BottomNavigationBarItem(icon: Icon(Icons.view_array_sharp),
        label: "VIEW VISITORS")
        ],),

      ),
    );
  }
}
