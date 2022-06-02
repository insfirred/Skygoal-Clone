import 'package:flutter/material.dart';

import '../Widgets/BottomNavbar.dart';
import '../Widgets/TopBar.dart';
import './CollegeList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String desc1 =
      'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.';
  String desc2 =
      'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.';
  String desc3 =
      'Find an end to end information about the exams that are happening in India';

  Widget homeCards(
      String head, String desc, String imgPath, String number, String type) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
          context: context, builder: (context) => BottomSheet()),
      child: Stack(
        children: [
          Image(image: AssetImage('assets/images/$imgPath.png')),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 100, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      head,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(desc,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Container(
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('$number ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12)),
                          Text(type,
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  )))
        ],
      ),
    );
  }

  Widget MainBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          homeCards('Top Colleges', desc1, 'topCollege', '+126', 'Colleges'),
          homeCards('Top School', desc2, 'topSchool', '+106', 'Schools'),
          homeCards('Exams', desc3, 'exams', '+16', 'Exams'),
        ],
      )),
    );
  }

  bool isOn = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Color(0xff0E3C6E);
  }

  Widget Degree(String degree) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CollegeList(),)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.document_scanner_outlined),
          Container(padding: EdgeInsets.symmetric(vertical: 15) ,width: 280, child: Text(degree, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }

  Widget BottomSheet() {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sort By',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(Icons.cancel))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Degree('Bachelor of Technology'),
          Degree('Bachelor of Architecture'),
          Degree('Pharmacy'),
          Degree('Law'),
          Degree('Management'),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(flex: 400, child: TopBar()),
              Expanded(flex: 926, child: MainBox()),
              Expanded(flex: 100, child: BottomNavBar()),
            ],
          ),
        ),
      ),
    );
  }
}
