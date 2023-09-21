import 'package:flutter/material.dart';
import 'package:navigationbar/GrosaryHome.dart';
//import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 7, 22, 160),
        body: PageView(
          children: [
            //SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Your holiday shopping delivered to Screen one",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'asset/images/Emoji.png',
                    ),
                  ],
                ),
                Text(
                    'There something for everyone to enjoy with Sweet Shop Favourites Screen 1',
                    style:
                        TextStyle(fontSize: 25, color: Colors.lightBlueAccent)),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    currentIndex == 0
                        ? Icon(Icons.circle, size: 20, color: Colors.white)
                        : Icon(Icons.circle_outlined,
                            size: 20, color: Colors.white),
                    Icon(Icons.circle_outlined, size: 20, color: Colors.white),
                  ],
                ),
                Image.asset(
                  'asset/images/Image_Icon.png',
                  height: 350,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => GrosaryHome(), // Use the NewPage widget
            ));// Define what should happen when the button is pressed.
                        },
                        style: ElevatedButton.styleFrom(
                            // Add any button styling here.
                            ),
                        icon: Icon(
                          Icons
                              .arrow_forward, // Replace with the icon you want to use.
                          color:
                              Colors.white, // Optionally, set the icon color.
                        ),
                        label: Text(
                          'Get Started', // Replace with your button text.
                          style: TextStyle(
                            fontSize: 16.0, // Optionally, set the text style.
                            fontWeight: FontWeight
                                .bold, // Optionally, set the text weight.
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Your holiday shopping delivered to Screen two",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'asset/images/Emoji.png',
                    ),
                  ],
                ),
                Text(
                    'There something for everyone to enjoy with Sweet Shop Favourites Screen 2',
                    style:
                        TextStyle(fontSize: 25, color: Colors.lightBlueAccent)),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle_outlined, size: 20, color: Colors.white),
                    // Icon(Icons.circle_outlined, size: 20, color: Colors.white),
                    currentIndex == 1
                        ? Icon(Icons.circle, size: 20, color: Colors.white)
                        : Icon(Icons.circle_outlined,
                            size: 20, color: Colors.white),
                  ],
                ),
                Image.asset(
                  'asset/images/Image_Icon.png',
                  height: 350,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => GrosaryHome(), // Use the NewPage widget
            )); // Define what should happen when the button is pressed.
                        },
                        style: ElevatedButton.styleFrom(
                            // Add any button styling here.
                            ),
                        icon: Icon(
                          Icons
                              .arrow_forward, // Replace with the icon you want to use.
                          color:
                              Colors.white, // Optionally, set the icon color.
                        ),
                        label: Text(
                          'Get Started', // Replace with your button text.
                          style: TextStyle(
                            fontSize: 16.0, // Optionally, set the text style.
                            fontWeight: FontWeight
                                .bold, // Optionally, set the text weight.
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ],
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }
}
