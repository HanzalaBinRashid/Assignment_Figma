import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:navigationbar/categories_pg2.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //    title: Text("Home"),
      //  ),
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

      //  body: Container(
      //   color: Colors.blueAccent,
      //   child: ListView(children: <Widget>[
      //     SizedBox(
      //       height: 30,
      //     ),
      //     ListTile(
      //       leading: Text(
      //         'Hey,Halal',
      //         style: TextStyle(fontSize: 30),
      //       ),
      //       trailing: Icon(Icons.add_shopping_cart_outlined),
      //     ),
      //     SizedBox(
      //       height: 20,
      //     ),
      //     Column(
      //       // crossAxisAlignment: CrossAxisAlignment.center,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Container(
      //             width: double.infinity,
      //             height: 100,
      //             color: Colors.blueAccent,
      //             child: TextField(
      //               style: TextStyle(color: Colors.black, fontSize: 20),
      //               decoration: InputDecoration(
      //                 hintText: "Search Products or Store",
      //                 hintStyle: TextStyle(color: Colors.black45),
      //                 prefixIconColor: Colors.black12,
      //                 border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(100),
      //                 ),
      //                 fillColor: Colors.cyanAccent,
      //                 filled: true,
      //                 // prefixIcon: Icons.search,
      //               ),
      //             ))
      //       ],
      //     ),

      //   ),

      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  ClipPath(
                    clipper: WaveClipper(),
                    child: Container(height: 300, color: Colors.blue),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
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
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      "Shop",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 90),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 150),
                        GestureDetector(
                          child: Container(
                            height: 160,
                            width: 160,
                            margin: EdgeInsets.symmetric(
                              horizontal: 17,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("asset/images/Image_Icon.png"),
                                  fit: BoxFit.none),
                              color: Colors.greenAccent[100],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.black,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: Column(
                              children: [
                                GestureDetector(
              onTap: () {
                // Navigate to the destination page when "Fishes" is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => categories_pg2()),
                );
              },
                                child:Padding(
                                  padding: const EdgeInsets.only(top: 120.0),
                                  child: Center(child: Text('Fishes'),),
                                ),
                                ),
                                 GestureDetector(
                                      onTap: () {
                // Navigate to another page when "From Sea" is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => categories_pg2()),
                );
              },

                                  child: Text('From Sea')
                                 )
                                 
                              ],
                            ),
                            
                          ),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     // MaterialPageRoute(
                            //     builder: (context) => Mouthscanner()));
                            // Implement logic to send contact form data
                          },
                        ),
                        SizedBox(height: 25),
                        GestureDetector(
                          child: Container(
                            height: 160,
                            width: 160,
                            margin: EdgeInsets.symmetric(
                              horizontal: 17,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("asset/images/Image_Icon.png"),
                                  fit: BoxFit.none),
                              color: Colors.greenAccent[100],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.black,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 120.0),
                                  child: Center(child: Text('Vegetables'),),
                                  
                                ),
                                Text('Organic')
                              ],
                            ),
                            
                          ),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     // MaterialPageRoute(
                            //     builder: (context) => Mouthscanner()));
                            // Implement logic to send contact form data
                          },
                        ),
                        
                        SizedBox(height: 25),
                        Container(
                          height: 160,
                          width: 160,
                          margin: EdgeInsets.symmetric(
                            horizontal: 17,
                          ),
                          //alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("asset/images/Image_Icon.png"),
                                fit: BoxFit.none),
                            color: Colors.greenAccent[100],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 120.0),
                                  child: Center(child: Text('Meats'),),
                                  
                                ),
                                Text('Fresh & Organic')
                              ],
                            ),
                            
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 160,
                      color: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 150),
                        Container(
                          height: 160,
                          width: 160,
                          margin: EdgeInsets.symmetric(
                            horizontal: 17,
                          ),
                          //alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("asset/images/Image_Icon.png"),
                                fit: BoxFit.none),
                            color: Colors.greenAccent[100],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 120.0),
                                  child: Center(child: Text('Vegetables'),),
                                  
                                ),
                                Text('Organic')
                              ],
                            ),
                            
                        ),
                        SizedBox(height: 25),
                        GestureDetector(
                          child: Container(
                            height: 160,
                            width: 160,
                            margin: EdgeInsets.symmetric(
                              horizontal: 17,
                            ),
                            //alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("asset/images/Image_Icon.png"),
                                  fit: BoxFit.none),
                              color: Colors.greenAccent[100],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.black,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 120.0),
                                  child: Center(child: Text('Meats'),),
                                  
                                ),
                                Text('Organic')
                              ],
                            ),
                            
                          ),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => dentaltips()));
                            // // Implement logic to send contact form data
                          },
                        ),
                        SizedBox(height: 25),
                        GestureDetector(
                          child: Container(
                            height: 160,
                            width: 160,
                            margin: EdgeInsets.symmetric(
                              horizontal: 17,
                            ),
                            //alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("asset/images/Image_Icon.png"),
                                  fit: BoxFit.none),
                              color: Colors.greenAccent[100],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.black,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 120.0),
                                  child: Center(child: Text('Fishes'),),
                                  
                                ),
                                Text('From Sea')
                              ],
                            ),
                            
                          ),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => recommendeddoc()));
                            // // Implement logic to send contact form data
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 220);
    path.quadraticBezierTo(size.width / 4, 160, size.width / 2, 175);
    path.quadraticBezierTo(3 / 4 * size.width, 190, size.width, 130);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
