import 'package:flutter/material.dart';

class ProductDetail2 extends StatefulWidget {
  const ProductDetail2({super.key});

  @override
  State<ProductDetail2> createState() => _ProductDetail2State();
}

class _ProductDetail2State extends State<ProductDetail2> {
  bool isTextBoxVisible = false;
  bool isTextBoxVisible1 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 10,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
        Row(children: [
          Stack(children: [
            // Container(
            //   height: 40,
            //   width: MediaQuery.of(context).size.width,
            //   color: Colors.white,
            //   child: const Center(

            //     child: Text(
            //       'Orange',
            //       style: TextStyle(
            //         fontFamily: 'Manrope',
            //         fontSize: 15,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.black,
            //       ),
            //     ),

            //   ),
            // ),
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new_sharp),
                    Text(
                      'Orange',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            blurRadius: 20.0, // shadow blur
                            color: Colors.black, // shadow color
                            offset: Offset(
                                2.0, 2.0), // how much shadow will be shown
                          ),
                        ],
                      ),
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 220.0),
                        child: Icon(
                          Icons
                              .card_giftcard_sharp, // Replace with the desired icon
                          size: 30, // Set the size of the icon
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 10,
              right: 20,
              child: Image.asset('asset/images/Image_Icon.png'),
            ),
          ]),
        ]),
        const SizedBox(
          height: 1,
        ),
        Center(
          child: Container(
              height: 100,
              width: 100,
              child: Image.asset(
                'asset/images/Image_Icon.png',
                fit: BoxFit.contain,
              )),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 40.0),
            Container(
              width: 30,
              height: 7,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(
                    20.0), // Adjust the radius for rounded corners
              ),
            ),
            SizedBox(width: 15.0),
            Container(
              width: 30,
              height: 7,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(
                    20.0), // Adjust the radius for rounded corners
              ),
            ),
            SizedBox(width: 15.0),
            Container(
              width: 30,
              height: 7,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(
                    20.0), // Adjust the radius for rounded corners
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 104,
            width: 200,
            child: const Center(
              child: Text(
                'Thin Choise Top\nOrange',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 100,
              child: const Center(
                child: Text(
                  '\$34.70/KG', //'Thin Choise Top\nOrange',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            //SizedBox(width: 10.0),
            Container(
              alignment: Alignment.centerRight,
              height: 36,
              width: 132,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: const Center(
                child: Text(
                  '\$22.04 OFF',
                  style: TextStyle(
                    color: Color.fromARGB(255, 226, 223, 223), // Text color
                    fontSize: 12,
                    fontFamily: 'Manrope ',
                  ),
                ),
              ),
            ),
            //SizedBox(width: 10.0),
            Container(
              height: 50,
              width: 130,
              child: const Center(
                child: Text(
                  'Reg: \$56.70 USD', //'Thin Choise Top\nOrange',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Color.fromARGB(255, 197, 178, 6),
              size: 20, // Adjust the size of the star icon as needed
            ),
            Icon(
              Icons.star,
              color: Color.fromARGB(255, 197, 178, 6),
              size: 20, // Adjust the size of the star icon as needed
            ),
            Icon(
              Icons.star,
              color: Color.fromARGB(255, 243, 155, 23),
              size: 20, // Adjust the size of the star icon as needed
            ),
            Icon(
              Icons.star,
              color: Color.fromARGB(255, 197, 178, 6),
              size: 20, // Adjust the size of the star icon as needed
            ),
            Icon(
              Icons.star_half_sharp,
              color: Color.fromARGB(255, 197, 178, 6),
              size: 20, // Adjust the size of the star icon as needed
            ),
            Container(
              height: 50,
              width: 130,
              child: const Center(
                child: Text(
                  '110 Reviews', //'Thin Choise Top\nOrange',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 25,),
        const Text(
          'Details', //'Thin Choise Top\nOrange',
          style: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10,),
        Text(
          'Praesent commodo cursus magna, vel\nscelerisque nisl consectetur et. Nullam quis\nrisus eget urna mollis ornare vel eu leo.', //'Thin Choise Top\nOrange',
          style: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 18,
            // fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 30),
        InkWell(
          onTap: () {
            setState(() {
              isTextBoxVisible = !isTextBoxVisible;
            });
          },
          
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            
            child: Row(
              children: [
                Text(
                  'Nutritional facts',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 200),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),

        SizedBox(height: 20,),
        Visibility(
          visible: isTextBoxVisible,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: const Text(
              'Blank Text Box',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: () {
            setState(() {
              isTextBoxVisible1 = !isTextBoxVisible1;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              children: [
                Text(
                  'Reviews',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 250),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        Visibility(
          visible: isTextBoxVisible1,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: const Text(
              'Blank Text Box',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // Align the buttons with equal spacing
          children: [
            ElevatedButton(
              onPressed: () {
                // Handle the first button click
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.white, // Background color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      20), // Adjust the border radius as needed
                  side: BorderSide(color: Colors.blue), // Border color
                ),
              ),
              child: const Text(
                'Add To Cart',
                style: TextStyle(
                    fontFamily: 'Manrope', fontSize: 16, color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle the first button click
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
                backgroundColor: const Color.fromARGB(
                    255, 5, 67, 118), // Background color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      20), // Adjust the border radius as needed
                  side: const BorderSide(color: Colors.blue), // Border color
                ),
              ),
              child: const Text(
                'Buy Now',
                style: TextStyle(
                    fontFamily: 'Manrope', fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
