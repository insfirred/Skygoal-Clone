import 'package:flutter/material.dart';

Widget AboutCollege() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: Text('Description',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 25),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Text('Location',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Image(
              image: AssetImage('assets/images/Background.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
            child: Text('Student Reviews',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Image(image: AssetImage('assets/images/student1.png')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Image(image: AssetImage('assets/images/student2.png')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Image(image: AssetImage('assets/images/student3.png')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Image(image: AssetImage('assets/images/student4.png')),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(231, 230, 230, 1),
                      borderRadius: BorderRadius.circular(10)),
                  width: 50,
                  height: 50,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '+12',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(14, 60, 110, 1)),
                      )),
                )
              ],
            ),
          )
        ],
      ));
}
