import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:navigationbar/Products.dart';

class categories_pg2 extends StatefulWidget {
  const categories_pg2({super.key});

  @override
  _categories_pg2State createState() => _categories_pg2State();
}

class _categories_pg2State extends State<categories_pg2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: 60.0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(
              Icons.category,
              size: 30,
            ),
            // Text('Categories'),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.more, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
        ),
        body:
            CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  ClipPath(
                    //clipper: WaveClipper(),
                    child: Container(height: 200, color: Colors.blue),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'Hey, Halal',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  blurRadius: 20.0, // shadow blur
                                  color: Colors.black, // shadow color
                                  offset: Offset(2.0,
                                      2.0), // how much shadow will be shown
                                ),
                              ],
                            ),
                          ),
                          Center(
                            widthFactor: 7,
                            child: Icon(
                              Icons.search, // Replace with the desired icon
                              size: 30, // Set the size of the icon
                              color: Colors.white,
                            ),
                          ),
                          Center(
                            //widthFactor: 4,
                            child: Icon(
                              Icons
                                  .card_giftcard_sharp, // Replace with the desired icon
                              size: 30, // Set the size of the icon
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // SizedBox(height: 150),
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Text(
                      "Shop",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 110),
                    child: Text(
                      "By Category",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 200),
                            DefaultTabController(
                                length: 4,
                                child: TabBar(
                                  tabs: [
                                    Tab(text: 'Vegetables'),
                                    Tab(text: 'Fruit'),
                                    Tab(text: 'Meats'),
                                  ],
                                  indicatorColor: Colors
                                      .green, // Change the indicator color
                                  labelColor: Colors.blue, //
                                )),
                            Card(
                              margin: const EdgeInsets.all(30),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  //Size(),
                                  ListTile(
                                    contentPadding: EdgeInsets.all(10),
                                    leading: Image.network(
                                      'https://pluspng.com/img-png/dentist-png-hd-dentist-treating-a-patient-960.png',
                                      width: 100,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                    title: const Text('Dental Tips'),
                                    subtitle: const Text(
                                        'Whatsever you are a new parent or an experienced caregiver, your childs oral heal'),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Products()),
                                          ); // Handle button press
                                        },
                                        child: Text('Read more'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              margin: const EdgeInsets.only(
                                  top: 1, right: 30, left: 30),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  //Size(),
                                  ListTile(
                                    contentPadding: EdgeInsets.all(10),
                                    leading: Image.network(
                                      'https://clipground.com/images/dental-images-png-7.png',
                                      width: 100,
                                      height: 400,
                                      fit: BoxFit.cover,
                                    ),
                                    title: const Text('Dental Tips For Adults'),
                                    subtitle: const Text(
                                        'Achieving healthy teeth takes a lifetime of care. Even if yoou.ve been told that ...'),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Products()),
                                          );// Handle button press
                                        },
                                        child: Text('Read more'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              margin: const EdgeInsets.only(
                                  top: 30, right: 30, left: 30, bottom: 10),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  //Size(),
                                  ListTile(
                                    contentPadding: EdgeInsets.all(10),
                                    leading: Image.network(
                                      'https://webstockreview.net/images/dentist-clipart-boy-12.png',
                                      width: 100,
                                      height: 400,
                                      fit: BoxFit.cover,
                                    ),
                                    title: const Text('Dental Tips For Adults'),
                                    subtitle: const Text(
                                        'Achieving healthy teeth takes a lifetime of care. Even if yoou.ve been told that ...'),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Products()),
                                          );// Handle button press
                                        },
                                        child: Text('Read more'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              margin: const EdgeInsets.only(
                                  top: 1, right: 30, left: 30),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  //Size(),
                                  ListTile(
                                    contentPadding: EdgeInsets.all(10),
                                    leading: Image.network(
                                      'https://clipground.com/images/dental-images-png-7.png',
                                      width: 100,
                                      height: 400,
                                      fit: BoxFit.cover,
                                    ),
                                    title: const Text('Dental Tips For Adults'),
                                    subtitle: const Text(
                                        'Achieving healthy teeth takes a lifetime of care. Even if yoou.ve been told that ...'),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Products()),
                                          );// Handle button press
                                        },
                                        child: Text('Read more'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]))
                ],
              ),
            ]),
          )
        ]));
  }
}
