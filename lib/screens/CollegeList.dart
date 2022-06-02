import 'package:flutter/material.dart';

import '../Widgets/BottomNavbar.dart';
import '../Widgets/TopBarWithoutHeading.dart';
import './CollegeDetails.dart';

class CollegeList extends StatefulWidget {
  const CollegeList({Key? key}) : super(key: key);

  @override
  State<CollegeList> createState() => _CollegeListState();
}

class _CollegeListState extends State<CollegeList> {
  Widget FilterBox() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Container(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(8)),
        child: Text(
          'MVSH Engineering College',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
        ),
      ),
    );
  }

  Widget CollegeCard(String imgPath, String collegeName) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CollegeDetails())),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.125,0.25),
                blurRadius: 6,
              )
            ],
            borderRadius: BorderRadius.circular(20)
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Image(image: AssetImage('assets/images/$imgPath')),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              width: 230,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    child: Text(
                                      collegeName,
                                      style: TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
                                    style: TextStyle(fontSize: 9, color: Colors.grey, fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff27C200),
                                          borderRadius: BorderRadius.circular(6)),
                                      width: 52,
                                      height: 22,
                                      child: Align(
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: const [
                                                  Text(
                                                    '4.3',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 13),
                                                    textAlign: TextAlign.center
                                                  ),
                                                  Icon(Icons.star, size: 15,color: Colors.white,)
                                                ],
                                              )
                                              ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Color(0xff0E3C6E),
                                    ),
                                    width: 79,
                                    height: 22,
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text('Apply Now',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 10))),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(thickness: 1,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0,0,8.0,0),
                                  child: Icon(Icons.badge,size: 20, color: Colors.grey),
                                ),
                                Text('More than 1000+ students have been placed',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9,color: Colors.grey))
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0,0,5,0),
                                  child: Icon(Icons.remove_red_eye,size: 20,color: Colors.grey),
                                ),
                                Text('468+',style: TextStyle(fontSize: 9,color: Colors.grey,fontWeight: FontWeight.bold))
                          ],
                        )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.share)
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.bookmark_outline)
                  ),
                ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget MainBox() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                    child: FilterBox(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: FilterBox(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: FilterBox(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: FilterBox(),
                  ),
                ],
              ),
            ),
            CollegeCard('college1.png', 'GHJK Engineering College'),
            CollegeCard('college2.png', 'Bachelors of Technology'),
            CollegeCard('college1.png', 'GHJK Engineering College'),
          ],
        ),
      ),
    );
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
              Expanded(flex: 250, child: TopBarWithoutHeading()),
              Expanded(flex: 926, child: MainBox()),
              Expanded(flex: 100, child: BottomNavBar()),
            ],
          ),
        ),
      ),
    );
  }
}
