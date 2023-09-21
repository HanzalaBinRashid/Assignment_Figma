import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:navigationbar/categories_pg2.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  ClipPath(
                    clipper: WaveClipper(),
                    child: Container(height: 300, color: Colors.white),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_back_ios_new_sharp),
                          Text(
                            'Fishes',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
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
                            widthFactor: 6,
                            child: Icon(
                              Icons.search, // Replace with the desired icon
                              size: 30, // Set the size of the icon
                              color: Colors.black,
                            ),
                          ),
                          Center(
                            //widthFactor: 4,
                            child: Icon(
                              Icons
                                  .card_giftcard_sharp, // Replace with the desired icon
                              size: 30, // Set the size of the icon
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 200),
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: DefaultTabController(
                      length: 4,
                      
                      child: TabBar(
                        
                        tabs: [
                          Tab(text: 'Vegetables'),
                          Tab(text: 'Fruit'),
                          Tab(text: 'Meats'),
                        ],
                        indicatorColor: Colors.green, // Change the indicator color
            labelColor: Colors.blue, // Change the selected tab text color
            unselectedLabelColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        
                        
                        SizedBox(height: 180),
                       //   Icon(Icons.add_circle),
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
                            
                           // padding: EdgeInsets.only(right: 15),
                            
                            child: Column(
                              children: [
                                GestureDetector(
                                      onTap: (){},
                                      child: Padding(
                                        padding: const EdgeInsets.only(top:80, right: 0, left: 70),
                                        child: Icon(Icons.add_circle),
                                      ),
                                    ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigate to the destination page when "Fishes" is pressed
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              categories_pg2()),
                                    );
                                  },
                                
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Center(
                                      child: Text('Fishes'),
                                      
                                    ),
                                    
                                  ),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      // Navigate to another page when "From Sea" is pressed
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                categories_pg2()),
                                      );
                                    },
                                    child: Text('From Sea')),
                                    
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
                          child: Column(
                            children: [
                              
                              Container(
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
                                      padding: const EdgeInsets.only(top: 90.0, left: 70),
                                      child: Center(
                                        child: Icon(Icons.add_circle),
                                      ),
                                    ),
                                    Text('Vegetables'),
                                    Text('Organic'),
                                    
                                    
                                  ],
                                ),
                              ),
                            ],
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
                                padding: const EdgeInsets.only(top: 90.0, left: 70),
                                      child: Center(
                                        child: Icon(Icons.add_circle),
                                      ),
                                    ),

                              //   padding: const EdgeInsets.only(top: 120.0),
                              //   child: Center(
                                   Text('Meats'),
                              //   ),
                              // ),
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
                        SizedBox(height: 180),
                        Container(
                          height: 160,
                          width: 160,
                          margin: EdgeInsets.symmetric(
                            horizontal: 17,
                          ),
                          //alignment: Alignment.center,
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
                                padding: const EdgeInsets.only(top: 90.0, left: 70),
                                      child: Center(
                                        child: Icon(Icons.add_circle),
                                      ),
                                    ),

                              //   padding: const EdgeInsets.only(top: 120.0),
                              //   child: Center(
                               Text('Vegetables'),
                              //   ),
                              // ),
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
                                  padding: const EdgeInsets.only(top: 90.0, left: 70),
                                      child: Center(
                                        child: Icon(Icons.add_circle),
                                      ),
                                    ),

                                //   padding: const EdgeInsets.only(top: 120.0),
                                //   child: Center(
                                Text('Meats'),
                                //   ),
                                // ),
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
                                  padding: const EdgeInsets.only(top: 90.0, left: 70),
                                      child: Center(
                                        child: Icon(Icons.add_circle),
                                      ),
                                    ),

                                //   padding: const EdgeInsets.only(top: 120.0),
                                //   child: Center(
                                Text('Fishes'),
                                //   ),
                                // ),
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
