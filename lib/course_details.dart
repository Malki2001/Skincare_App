import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'payment.dart';

class CourseDetailsPage extends StatefulWidget {
  final String imagePath;
  final String title;
  final String price;
  final String certificate;
  final String level;
  final double rating;
  final int reviews;
  final String LecImage;
  final String LecName;
  final String LecPosition;
  final String details;

  CourseDetailsPage({
    required this.imagePath,
    required this.title,
    required this.price,
    required this.certificate,
    required this.level,
    required this.rating,
    required this.reviews,
    required this.LecImage,
    required this.LecName,
    required this.LecPosition,
    required this.details,
  });

  @override
  _CourseDetailsPageState createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // Image that takes up half of the screen height
                Image.asset(
                  widget.imagePath, // Use the imagePath passed as a parameter
                  width: double.infinity,
                  height: screenHeight * 0.5,
                  fit: BoxFit.cover,
                ),
                // AppBar with back button surrounded by a transparent circle
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.arrow_back, color: Colors.white),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // White container that overlaps the image by 1/4 of its height
            Transform.translate(
              offset: Offset(0, -screenHeight * 0.125),
              child: Container(
                width: double.infinity,
                height: screenHeight * 0.75,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.0),
                    Text(
                      widget.title,
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15.0,
                        ),
                        SizedBox(width: 5.0),
                        Text('${widget.rating}',
                            style: TextStyle(fontSize: 12)),
                        SizedBox(width: 10.0),
                        Text('${widget.reviews} ratings',
                            style:
                            TextStyle(fontSize: 12, color: Colors.black26)),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage(
                              widget.LecImage), // Path to your profile image
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.LecName),
                            Text(
                              widget.LecPosition,
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      widget.details,
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        buildCircleWithTextAndIcon(
                            FontAwesomeIcons.globe, () {}),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('100% Online Course',
                                style: TextStyle(fontSize: 10)),
                            Text('Start & learn at your own schedule',
                                style: TextStyle(
                                    fontSize: 8, color: Colors.black38)),
                          ],
                        ),
                        SizedBox(width: 10),
                        buildCircleWithTextAndIcon(Icons.access_time, () {}),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('6 Months to Complete',
                                style: TextStyle(fontSize: 10)),
                            Text('Suggested 4 hours/week',
                                style: TextStyle(
                                    fontSize: 8, color: Colors.black38)),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        buildCircleWithTextAndIcon(Icons.calendar_today, () {}),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Flexible Schedule',
                                style: TextStyle(fontSize: 10)),
                            Text('Set  &  maintain flexible schedules',
                                style: TextStyle(
                                    fontSize: 8, color: Colors.black38)),
                          ],
                        ),
                        SizedBox(width: 10),
                        buildCircleWithTextAndIcon(
                            FontAwesomeIcons.commentDots, () {}),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('English', style: TextStyle(fontSize: 10)),
                            Text('Subtitles: English & Sinhala',
                                style: TextStyle(
                                    fontSize: 8, color: Colors.black38)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentPage()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(120, 6, 84, 1)),
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            elevation: MaterialStateProperty.all<double>(
                                0), // Remove the shadow

                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Change border radius
                              ),
                            ),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(vertical: 16.0,horizontal: 28.0), // Increase vertical padding for a larger button
                            ),

                          ),
                          child: Text('Enroll for Free',
                          style: TextStyle(fontSize: 16),),
                        ),
                        SizedBox(height: 10.0),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Enroll to start your 7-day full access free trial.  Starts May 27, 2024',
                              style:
                              TextStyle(fontSize: 10, color: Colors.black26),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCircleWithTextAndIcon(IconData icon, VoidCallback onTap) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: onTap,
          borderRadius:
          BorderRadius.circular(25.0), // Optional, for ripple effect
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color:
              Color.fromRGBO(232, 193, 220,1), // You can change the color
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color:Color.fromRGBO(120, 6, 84, 1),
              size: 20,
            ), // Icon inside the circle
          ),
        ),
        SizedBox(height: 8.0),
      ],
    );
  }
}
