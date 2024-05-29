import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:self_care_new/Profile.dart';
import 'package:self_care_new/main.dart';
import 'package:self_care_new/my_learnings.dart';
import 'package:self_care_new/notifications.dart';
import 'tutorials.dart';
import 'courses.dart';
import 'hairstyles.dart';
import 'facials.dart';

class SeventhPage extends StatefulWidget {
  @override
  _SeventhPageState createState() => _SeventhPageState();
}

class _SeventhPageState extends State<SeventhPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0.0,
        backgroundColor:Color.fromRGBO(120, 6, 84, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> MyApp()));
          },
        ),
        title: Row(
          children: [


            Text(
              'TrendTutor',
              style: TextStyle(color: Colors.white),// Customize as needed
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.notifications,color: Colors.white,),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> NotificationsPage()),);

              },

            ),
            SizedBox(width: 8.0),

            IconButton(onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>ProfilePage()),);
            },
              icon:
            CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/profile.jpg'), // Path to your profile image
            ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity, // Make the container take up the full width
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  ),

                  style: TextStyle(color: Colors.black),
                  onSubmitted: (query) {
                    // Handle search action
                  },
                ),
              ),

              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 146, 205, 1),
                  borderRadius: BorderRadius.circular(20.0), // Add border radius here
                ),

                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("30% OFF",
                          style: TextStyle(color:Colors.white, fontSize: 25.0),),

                        Text("Today's Special",
                          style: TextStyle(color:Colors.white),),

                        SizedBox(height: 10),

                        Text("Get 30% for every registered course",
                          style: TextStyle(color:Colors.white , fontSize: 10.0),),

                        SizedBox(height: 10),

                        ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(120, 6, 84, 1)), // Set background color to purple
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0), // Change border radius
                                side: BorderSide(color:Color.fromRGBO(120, 6, 84, 1)), // Change border color
                              ),
                            ),
                          ),
                          child: Text(
                            'Get offer now',
                            style: TextStyle(color: Colors.white), // Set text color to white for better contrast
                          ),
                        )

                      ],
                    ),

                    SizedBox(width: 25.0),

                    Image.asset('assets/img_3.png',
                      width: 130,
                      height: 130,),

                  ],
                ),
              ),

              SizedBox(height: 15.0),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
              child:
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  buildCircleWithTextAndIcon(FontAwesomeIcons.book, 'My Learnings', () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> MyLearningsPage()),);


                  }),

                  SizedBox(width: 40.0),

                  buildCircleWithTextAndIcon(FontAwesomeIcons.graduationCap, 'Courses', () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> CoursesPage()),);

                  }),

                  SizedBox(width: 40.0),

                  buildCircleWithTextAndIcon(Icons.video_settings_rounded, 'Tutorials', () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> TutorialsPage()),);

                  }),

                  SizedBox(width: 40.0),

                  buildCircleWithTextAndIcon(FontAwesomeIcons.cut, 'Hair Styles', () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>HairstylesPage()),);


                  }),

                  // SizedBox(width: 20.0),
                  //
                  // buildCircleWithTextAndIcon(FontAwesomeIcons.mask, 'Facials', () {
                  //   Navigator.push(context,
                  //     MaterialPageRoute(builder: (context)=> FacialsPage()),);
                  //
                  //
                  // }),

                ],
              ),
        ),

              SizedBox(height: 15.0),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Text("Trending Tutorials",
                        style: TextStyle(fontSize: 16.0),),

                      SizedBox(width: 180.0),

                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> TutorialsPage()),);
                        },
                        child:   Text("See All",
                          style: TextStyle(fontSize: 10.0,color: Colors.black26),),
                      )



                    ],
                  ),


                  SizedBox(height: 15.0),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200, // Set the height of the container
                          padding: EdgeInsets.all(8.0),

                          decoration: BoxDecoration(
                            color: Colors.white, // Set background color to white
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2), // Set shadow color
                                blurRadius: 3.0, // Set blur radius
                                offset: Offset(0, 3), // Set offset
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 5, // 3/4 of the space
                                child:  Image.asset(
                                  'assets/skincare.jpg',
                                  width: 160.0,

                                  fit: BoxFit.cover, // Adjust the fit as needed
                                ),
                              ),

                              SizedBox(height: 5.0),

                              Expanded(
                                flex: 1, // 1/4 of the space
                                child: Text(
                                  'Top 10 Night Routine Products for All Skin Types',
                                  style: TextStyle(fontSize: 10.0,color: Colors.black87),// Add your text here
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),

                      Expanded(
                        child: Container(
                          height: 200, // Set the height of the container

                          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            color: Colors.white, // Set background color to white
                            borderRadius: BorderRadius.circular(8.0), // Optional: Add border radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2), // Set shadow color
                                blurRadius: 3.0,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 5, // 3/4 of the space
                                child:  Image.asset(
                                  'assets/course_2.jpg',
                                  width: 160.0,
                                  fit: BoxFit.cover, // Adjust the fit as needed
                                ),
                              ),
                              SizedBox(height: 5.0),

                              Expanded(
                                flex: 1, // 1/4 of the space
                                child: Text(
                                  'How to Use Sheet Masks for Acne: A Step-by-Step Guide',
                                  style: TextStyle(fontSize: 10.0,color: Colors.black87),// Add your text here
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),

              SizedBox(height: 20.0),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Text("Trending Courses",
                        style: TextStyle(fontSize: 16.0),),

                      SizedBox(width: 180.0),

                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> CoursesPage()),);

                        },
                        child: Text("See All",
                          style: TextStyle(fontSize: 10.0,color: Colors.black26),),
                      )


                    ],
                  ),


                  SizedBox(height: 15.0),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200, // Set the height of the container
                          padding: EdgeInsets.all(8.0),

                          decoration: BoxDecoration(
                            color: Colors.white, // Set background color to white
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2), // Set shadow color
                                blurRadius: 3.0, // Set blur radius
                                offset: Offset(0, 3), // Set offset
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 5, // 3/4 of the space
                                child:  Image.asset(
                                  'assets/course_1.jpg',
                                  width: 160.0,

                                  fit: BoxFit.cover, // Adjust the fit as needed
                                ),
                              ),

                              SizedBox(height: 5.0),

                              Expanded(
                                flex: 1, // 1/4 of the space
                                child: Text(
                                  'Basic Hair Cutting Techniques for Beginners',
                                  style: TextStyle(fontSize: 10.0,color: Colors.black87),// Add your text here
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),

                      Expanded(
                        child: Container(
                          height: 200, // Set the height of the container

                          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            color: Colors.white, // Set background color to white
                            borderRadius: BorderRadius.circular(8.0), // Optional: Add border radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2), // Set shadow color
                                blurRadius: 3.0,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 5, // 3/4 of the space
                                child:  Image.asset(
                                  'assets/course_4.jpg',
                                  width: 160.0,
                                  fit: BoxFit.cover, // Adjust the fit as needed
                                ),
                              ),
                              SizedBox(height: 5.0),

                              Expanded(
                                flex: 1, // 1/4 of the space
                                child: Text(
                                  'Foundation and Concealer: Creating a Flawless Base',
                                  style: TextStyle(fontSize: 10.0,color: Colors.black87),// Add your text here
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}




Widget buildCircleWithTextAndIcon(IconData icon, String text, VoidCallback onTap) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(25.0), // Optional, for ripple effect
        child: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Color.fromRGBO(232, 193, 220,1), // You can change the color
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color:Color.fromRGBO(120, 6, 84, 1)), // Icon inside the circle
        ),
      ),
      SizedBox(height: 8.0),

      Text(text, style: TextStyle(fontSize: 10.0)),
    ],
  );
}
