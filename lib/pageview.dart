import 'package:flutter/material.dart';
//import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({
    Key? key,
  }) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.blueAccent,
        child: Container(
          color: Colors.white,
          child: ListView(children: <Widget>[
            ListTile(
                leading: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding(),));
                },
                child: Icon(Icons.arrow_back),
            ),
        
                //
                //trailing: Icon(Icons.notifications),
                ),
            Container(
              color: Colors.blueAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'This is how we work',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.white54),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Image.network(
                    'https://cdn3d.iconscout.com/3d/premium/thumb/dental-check-up-5597316-4684491.png',
                    alignment: Alignment.center,
                    width: 200,
                    height: 200,
                  ),
                  // SizedBox(
                  //   height: 2,
                  // ),
                  Text(
                    'Enhance your smile with quality care',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                        
                  ),
                  Image.network(
                    'https://cdni.iconscout.com/illustration/premium/thumb/dentist-checking-kids-dental-problem-2681149-2233476.png',
                    alignment: Alignment.center,
                    width: 300,
                    height: 200,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                        ),
                        Text(
                          'Comfortable restorative care using Nitrous Oxide',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.network(
                    'https://cdn2.iconfinder.com/data/icons/dental-glyph/64/30_dental-dentistry-medical-implant-tooth-512.png',
                    alignment: Alignment.center,
                    width: 200,
                    height: 200,
                    //color: Colors.blueAccent,
                  ),
                  Text(
                    'Book your Appointment online or call (312) 609-1300',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.network(
                    'https://jdc-vanguarddentalgroup.com/wp-content/uploads/2020/11/iconfinder_Dental_-_Tooth_-_Dentist_-_Dentistry_47_2185047-1.png',
                    alignment: Alignment.center,
                    width: 200,
                    height: 250,
                  ),
                  Text(
                    'Network of excellence specialists to refer to as needed',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colors.blueGrey, // Change this to the color you want
                      // You can also customize other button properties here
                      padding: EdgeInsets.all(16.0),
                      textStyle: TextStyle(fontSize: 16),
                      elevation: 5,
                    ),
                    child: Text(
                      'LEARN MORE ABOUT OUR SERVICES',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:navigationbar/pageview.dart';

// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
    
//       body: Container(
//         color: Colors.blueAccent,
//         child: ListView(children: <Widget>[
         
//           ListTile(
 
//             // leading: GestureDetector(
//             //   onTap: (){
//             //     Navigator.push(context,
//             //     MaterialPageRoute(builder: (context) => Onboarding(),
//             //     ));
//             //   },
//             //  child: Icon(Icons.remove_red_eye_sharp),
//             // ),
            
            
//             //trailing: Icon(Icons.notifications),
          
//           ),
//           Container(
           
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   'Tips',
//                   style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
//                 ),
               
//               ],
//             ),
//           ),

//           Card(
//             margin: const EdgeInsets.all(30),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: <Widget>[
//                 //Size(),
//                 ListTile(
//                   contentPadding: EdgeInsets.all(10),
//                   leading: Image.network(
//                     'https://pluspng.com/img-png/dentist-png-hd-dentist-treating-a-patient-960.png',
//                     width: 100,
//                     height: 200,
//                     fit: BoxFit.cover,
//                   ),
//                   title: const Text('Doctors Tips'),
//                   subtitle: const Text(
//                       'Whatsever you are a new parent or an experienced caregiver, your childs oral heal'),
                      
//                 ),
//                 Align(
//                 alignment: Alignment.bottomRight,
//                 child:Padding(padding: const EdgeInsets.all(0),
               
//                   child:
//                     ElevatedButton(
//                       onPressed: () {
//                         // Handle button press
//                       },
//                       child: Text('Read more'),
//                     ),
                  
//                 ),
                
//               ),
              
//               ],),
//         ),
        
//             Card(
//             margin: const EdgeInsets.only(top: 1, right: 30, left: 30),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: <Widget>[
//                 //Size(),
//                 ListTile(
//                   contentPadding: EdgeInsets.all(10),
//                   leading: Image.network(
//                     'https://clipground.com/images/dental-images-png-7.png',
//                     width: 100,
//                     height: 400,
//                     fit: BoxFit.cover,
//                   ),
//                   title: const Text('Dental Tips For Women'),
//                   subtitle: const Text(
//                       'Achieving healthy teeth takes a lifetime of care. Even if yoou.ve been told that ...'),
                      
//                 ),
//                 Align(
//                 alignment: Alignment.bottomRight,
//                 child:Padding(padding: const EdgeInsets.all(0),
               
//                   child:
//                     ElevatedButton(
//                       onPressed: () {
//                         // Handle button press
//                       },
//                       child: Text('Read more'),
//                     ),
                  
//                 ),
                
//               ),
//             ],),),

//               Card(
//             margin: const EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 10),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: <Widget>[
//                 //Size(),
//                 ListTile(
//                   contentPadding: EdgeInsets.all(10),
//                   leading: Image.network(
//                     'https://webstockreview.net/images/dentist-clipart-boy-12.png',
//                     width: 100,
//                     height: 400,
//                     fit: BoxFit.cover,
//                   ),
//                   title: const Text('Dental Tips For Adults'),
//                   subtitle: const Text(
//                       'Achieving healthy teeth takes a lifetime of care. Even if yoou.ve been told that ...'),
                      
//                 ),
//                 Align(
//                 alignment: Alignment.bottomRight,
//                 child:Padding(padding: const EdgeInsets.all(0),
               
//                   child:
//                     ElevatedButton(
//                       onPressed: () {
//                         // Handle button press
//                       },
//                       child: Text('Read more'),
//                     ),
                  
//                 ),
                
//               ),
//             ],),),
//             Card(
//             margin: const EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 10),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: <Widget>[
//                 //Size(),
//                 ListTile(
//                   contentPadding: EdgeInsets.all(10),
//                   leading: Image.network(
//                     'https://cdn.pixabay.com/photo/2017/07/18/15/39/dental-care-2516133_640.png',
//                     width: 100,
//                     height: 400,
//                     fit: BoxFit.cover,
//                   ),
//                   title: const Text('Dental Tips For Children'),
//                   subtitle: const Text(
//                       'Achieving healthy teeth takes a lifetime of care. Even if yoou.ve been told that ...'),
                      
//                 ),
//                 Align(
//                 alignment: Alignment.bottomRight,
//                 child:Padding(padding: const EdgeInsets.all(0),
               
//                   child:
//                     ElevatedButton(
//                       onPressed: () {
//                         // Handle button press
//                       },
//                       child: Text('Read more'),
//                     ),
                  
//                 ),
                
//               ),
//             ],),),
//             ],
//             ),            
//           )
//         );
//   }
// }
