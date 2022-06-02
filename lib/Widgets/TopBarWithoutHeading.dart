import 'package:flutter/material.dart';

Widget TopBarWithoutHeading() {
  return Container(
    decoration: BoxDecoration(
        color: Color(0xff0E3C6E),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25))),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(25, 65, 25, 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search for colleges, schools, exams'),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                width: 56,
                height: 56,
                child: const Icon(Icons.mic, color: Color(0xff0E3C6E)),
              )
            ],
          )
        ],
      ),
    ),
  );
}
