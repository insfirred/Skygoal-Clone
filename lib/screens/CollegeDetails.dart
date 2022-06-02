import 'package:flutter/material.dart';

import '../Widgets/TabsWidgets/AboutCollege.dart';
import '../Widgets/TabsWidgets/Hostel.dart';
import '../Widgets/TabsWidgets/QnA.dart';
import '../Widgets/TabsWidgets/Events.dart';

class CollegeDetails extends StatefulWidget {
  const CollegeDetails({Key? key}) : super(key: key);

  @override
  State<CollegeDetails> createState() => _CollegeDetailsState();
}

class _CollegeDetailsState extends State<CollegeDetails>
    with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    var phoneWidth = MediaQuery.of(context).size.width;

    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 40, 15, 0),
            height: 113,
            color: const Color(0xff0E3C6E),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(Icons.arrow_back)
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white),
                  child: const Icon(Icons.bookmark_outline),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/images/collegeDetail.png')),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 150,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          width: 270,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'GHJK Engineering college',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          height: 74,
                          width: 52,
                          decoration: BoxDecoration(
                              color: Color(0xff27C200),
                              borderRadius: BorderRadius.circular(6)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '4.3',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Icon(Icons.star, color: Colors.white, size: 30),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),




                  Material(
                    elevation: 4,
                    child: Container(
                      width: double.maxFinite,
                      color: Color.fromRGBO(248, 248, 248, 1),
                      child: TabBar(
                        indicatorColor: Color.fromRGBO(14, 60, 110, 1),
                        labelPadding: EdgeInsets.symmetric(horizontal: 10),
                        labelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                        labelColor: Colors.black,
                        unselectedLabelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                        unselectedLabelColor: Colors.grey,
                        controller: tabController,
                        tabs: const [
                          Tab(text: 'About College'),
                          Tab(text: 'Hostel'),
                          Tab(text: 'QnA'),
                          Tab(text: 'Events'),
                        ],
                      ),
                    ),
                  ),




                  SizedBox(
                    height: 630,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        AboutCollege(),
                        Hostel(),
                        QnA(),
                        Events(),
                      ],
                    ),
                  ),
                
                ],
              ),
            ),
          ),
        ],
      ),
      Positioned(
        left: (phoneWidth/2) - 175,
        bottom: 20,
        child: Container(
          height: 50,
          width: 350,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(14, 60, 110, 1)
            ),
            onPressed: (){}, 
            child: Text('Apply Now')
            ),
        ),
      )
        ],
      )
    );
  }
}
