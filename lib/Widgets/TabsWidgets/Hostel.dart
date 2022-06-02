import 'package:flutter/material.dart';

Widget Hostel(){

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [



              Container(
                width: 69,
                height: 31,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(14, 60, 110, 1),
                  border: Border.all(color: Color.fromRGBO(14, 60, 110, 1), width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.bed, color: Colors.white,),
                    Text('4',style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 16),),
                  ],
                ),
              ),



              Container(
                width: 69,
                height: 31,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(14, 60, 110, 1), width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.bed),
                    Text('3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  ],
                ),
              ),



              Container(
                width: 69,
                height: 31,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(14, 60, 110, 1), width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.bed),
                    Text('2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  ],
                ),
              ),



              Container(
                width: 69,
                height: 31,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(14, 60, 110, 1), width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.bed),
                    Text('1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  ],
                ),
              ),

            ],
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              Padding(
                
                padding: EdgeInsets.fromLTRB(0,0,15,0),
                child: Image(image: AssetImage('assets/images/hostel1.png')),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0,0,15,0),
                child: Image(image: AssetImage('assets/images/hostel2.png')),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0,0,15,0),
                child: Image(image: AssetImage('assets/images/hostel1.png')),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0,0,15,0),
                child: Image(image: AssetImage('assets/images/hostel2.png')),
              ),
            ],
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0,25,0,10),
                  child: Text('GHJK Engineering Hostel',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                ),
                Row(
                  children: const [
                    Icon(Icons.location_pin,size: 18,color: Color.fromRGBO(74, 74, 74, 1),),
                    Text('Lorem ipsum dolor sit amet, consectetur ',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(74, 74, 74, 1),fontSize: 12),),
                  ],
                )
              ],
            ),
            Container(
              width: 52,
              height: 22,
              color: const Color.fromRGBO(39, 194, 0, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('4.3',style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),),
                  Icon(Icons.star, color: Colors.white,size: 18)
                ],
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0,8,0,8),
          child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',style: TextStyle(fontSize: 14,color: Colors.grey),),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0,25,0,10),
          child: Text('Facilities',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,8),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0,0,10,0),
                child: Image(image: AssetImage('assets/images/icon1.png')),
              ),
              Text('College in 400 mtrs',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(74, 74, 74, 1)))
            ],
          ),
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0,0,10,0),
              child: Image(image: AssetImage('assets/images/icon2.png')),
            ),
            Text('Bathroom: 2',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(74, 74, 74, 1)))
          ],
        )
      ],
    )
  );
}