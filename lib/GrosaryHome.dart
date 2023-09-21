import 'package:flutter/material.dart';
//import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:navigationbar/Categories.dart';

class GrosaryHome extends StatefulWidget {
  const GrosaryHome({
    Key? key,
  }) : super(key: key);

  @override
  _GrosaryHomeState createState() => _GrosaryHomeState();
}

class _GrosaryHomeState extends State<GrosaryHome> {
  @override
  int _currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      //  body: Center(
      //   child: GrosaryHome(_currentIndex), // Display the current page
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          IconButton(onPressed: () {
            // Navigate to the destination page when the icon is pressed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Categories()),
            );
          },
          
           icon: Icon(Icons.category, size: 30,),),
          
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
      body: Container(
        color: Colors.blueAccent,
        child: ListView(children: <Widget>[
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Text(
              'Hey,Halal',
              style: TextStyle(fontSize: 30),
            ),
            trailing: Icon(Icons.add_shopping_cart_outlined),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.blueAccent,
                  child: TextField(
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      hintText: "Search Products or Store",
                      hintStyle: TextStyle(color: Colors.black45),
                      prefixIconColor: Colors.black12,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      fillColor: Colors.cyanAccent,
                      filled: true,
                      // prefixIcon: Icons.search,
                    ),
                  ))
            ],
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
                width: 370,
                height: 25,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery To",
                        style: TextStyle(color: Colors.black),
                      ),
                    ]))
          ]),
          Container(
            width: 50,
            height: 20,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "   Green Way 3000,Sylhet",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )
              ],
            ),
          ),
          //SizedBox(height:10),
          Container(
              width: 1,
              height: 47,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "WITHIN      ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  // Text('.....',style: TextStyle(color: Colors.blueAccent),),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "1 HOUR",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        )
                      ]),
                ],
              )),
              
              Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                 // mainAxisSize: MainAxisSize.max,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.all(20),

                      leading: Image.asset(
                        'asset/images/Pic1_homescreen.png',
                        //  width: 100,
                        //   height: 400,
                        fit: BoxFit.fill,
                      ),
                      title: Text('Get'),
                      subtitle: Text('30% OFF',style: TextStyle(fontSize: 30),
                      
                      ),
                      
                      trailing: Column(
                        
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text('On Second order'),
                        
                      ],
                      ),
                    ),

                  ],
                  
                ),
                
              ),
              
  //children: [
    Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading: Image.asset(
              'asset/images/Pic1_homescreen.png',
              fit: BoxFit.fill,
            ),
            title: Text('Get'),
            subtitle: Text(
              '50% OFF',
              style: TextStyle(fontSize: 30),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('On First 03 order'),
              ],
            ),
          ),
        ],
      ),
    ),

      SizedBox(height: 10,),
      Text('  Recommended',style: TextStyle(fontSize: 30),),      
          

          
           Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Card(
                 clipBehavior: Clip.antiAlias,
                //elevation: 4,
                margin: EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                child: Column(
                 // mainAxisSize: MainAxisSize.max,
                  children: [
                    ListTile(
                  //    contentPadding: EdgeInsets.all(0),

                      leading: Image.asset(
                        'asset/images/Pic1_homescreen.png',
                          width: 100,
                           height: 400,
                    //    fit: BoxFit.fill,
                      ),
                      // title: Text('Fresh Lemon'),
                      // subtitle: Text('Organic'),
                      
                    ),
                     Padding(
                      padding: const EdgeInsets.only(bottom: 2,),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                               Text('Fresh Lemon'),
                               Text('Organic'),
                                Text(
                                  'Unit: 12 DOLLAR',
                                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                                ),
                                
                              ],
                            ),
                          
                          ),
                        ],
                      ),
                      
                    ),
                      IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              // Add product to cart logic here
                            },
                          ),
                  ],
                ),
          ),
          Card(
                 clipBehavior: Clip.antiAlias,
                //elevation: 4,
                margin: EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                child: Column(
                 // mainAxisSize: MainAxisSize.max,
                  children: [
                    ListTile(
                  //    contentPadding: EdgeInsets.all(0),

                      leading: Image.asset(
                        'asset/images/Pic1_homescreen.png',
                          width: 100,
                           height: 400,
                    //    fit: BoxFit.fill,
                      ),
                      // title: Text('Fresh Lemon'),
                      // subtitle: Text('Organic'),
                      
                    ),
                     Padding(
                      padding: const EdgeInsets.only(bottom: 2,),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                               Text('Fresh Lemon'),
                               Text('InOrganic'),
                                Text(
                                  'Unit: 20 DOLLAR',
                                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                                ),
                                
                              ],
                            ),
                          
                          ),
                        ],
                      ),
                      
                    ),
                      IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              // Add product to cart logic here
                            },
                          ),
                  ],
                ),
          ),
          
           
             ],
           ),
          SizedBox(height: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('   OFFERS', style: TextStyle(fontSize: 30, ),),
          ],
        ), 
           Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(horizontal: 120, vertical: 5),
                child: Column(
                 // mainAxisSize: MainAxisSize.max,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.all(20),

                      title: Text('346 USD',style: TextStyle(fontSize: 20),),
                      subtitle: Text('Your total Savings',style: TextStyle(fontSize: 15),
                      
                      ),
                    ),
                  ],
                ),
               ),
               
               Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(horizontal: 120, vertical: 5),
                child: Column(
                 // mainAxisSize: MainAxisSize.max,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.all(20),

                      title: Text('215 HRS',style: TextStyle(fontSize: 20),),
                      subtitle: Text('Your time saved',style: TextStyle(fontSize: 15),
                      
                      ),
                      
                    ),

                  ],
                  
                ),
                
               ),
               SizedBox(height: 10,),

              Text('   Deals on Fruits & Tea', style: TextStyle(fontSize: 30),),

               Card(
                 clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                child: Column(
                  children: [
                    ListTile(
                
                      leading: Image.asset(
                        'asset/images/Pic1_homescreen.png',
                          width: 100,
                           height: 400,
                      ),
                
                    ),
                     Padding(
                      padding: const EdgeInsets.only(bottom: 2,),
                      child: Column(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              //mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                               IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              // Add product to cart logic here
                            },
                          ),
                               Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text('325 DOLLAR'),
                                 ],
                               ),
                               Text('Orange Package 11'),
                                Text(
                                  '1 bundle',
                                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                                ),
                                
                              ],
                            ),
                          
                          ),
                        ],
                      ),
                      
                    ),
                      
                  ],
                ),
          ),
          Card(
                 clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                child: Column(
                  children: [
                    ListTile(
                
                      leading: Image.asset(
                        'asset/images/Pic1_homescreen.png',
                          width: 100,
                           height: 450,
                      ),
                
                    ),
                     Padding(
                      padding: const EdgeInsets.only(bottom: 2,),
                      child: Column(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              //mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                               IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              // Add product to cart logic here
                            },
                          ),
                               Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text('325 DOLLAR'),
                                 ],
                               ),
                               Text('Green Tea Package 2'),
                                Text(
                                  '11 bundle',
                                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                                ),
                                
                              ],
                            ),
                          
                          ),
                        ],
                      ),
                      
                    ),
                      
                  ],
                ),
          ),
        ]
        ),
      ),
    );
  }
}

