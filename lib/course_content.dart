import 'package:flutter/material.dart';
import 'package:self_care_new/my_learnings.dart';
import 'seventh_page.dart';

class CourseContentPage extends StatefulWidget {
  @override
  _CourseContentPageState createState() => _CourseContentPageState();
}

class _CourseContentPageState extends State<CourseContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
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
                          color:
                          Color.fromRGBO(120, 6, 84, 1).withOpacity(0.6),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyLearningsPage()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ultimate Skincare Guide: Choosing What Works for You',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage(
                            'assets/lecturer.jpg'), // Path to your profile image
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sara Zoozen',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            'Senior Skincare Specialist',
                            style:
                                TextStyle(color: Colors.black38, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(120, 6, 84, 1).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [

                    Expanded(
                      flex: 1,
                      child: Container(

                        height: 50.0, // Set the desired height
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white60.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text('01',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Expanded(
                      flex: 3,
                      child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text('Introduction to Skin Types',
                              style: TextStyle(color: Colors.white),),

                              Text('Video : 5min',
                              style: TextStyle(fontSize: 12,color: Colors.black38),)
                            ],
                          ),

                    ),

                    Expanded(
                      flex: 1,
                        child: Icon(
                      Icons.check_circle_sharp,  // You can also use Icons.check_circle for a circled tick mark
                      color:Color.fromRGBO(120, 6, 84, 1),  // Set the color to indicate correctness, typically green
                      size: 24.0,  // Set the desired size
                    ))
                  ],
                )),

            SizedBox(height: 10,
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(120, 6, 84, 1).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [

                    Expanded(
                      flex: 1,
                      child: Container(

                        height: 50.0, // Set the desired height
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white60.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text('02',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),

                    SizedBox(width: 10,),

                    Expanded(
                      flex: 3,
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Moisturizers: What Works for Each Skin Type',
                            style: TextStyle(color: Colors.white),),

                          Text('Video : 10min',
                            style: TextStyle(fontSize: 12,color: Colors.black38),)
                        ],
                      ),

                    ),

                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.check_circle_sharp,  // You can also use Icons.check_circle for a circled tick mark
                          color:Color.fromRGBO(120, 6, 84, 1),  // Set the color to indicate correctness, typically green
                          size: 24.0,  // Set the desired size
                        ))
                  ],
                )),

            SizedBox(height: 10,
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(120, 6, 84, 1).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [

                    Expanded(
                      flex: 1,
                      child: Container(

                        height: 50.0, // Set the desired height
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white60.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text('03',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),

                    SizedBox(width: 10,),

                    Expanded(
                      flex: 3,
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Dealing with Common Skin Concerns',
                            style: TextStyle(color: Colors.white),),

                          Text('Reading : 12min',
                            style: TextStyle(fontSize: 12,color: Colors.black38),)
                        ],
                      ),

                    ),

                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.check_circle_sharp,  // You can also use Icons.check_circle for a circled tick mark
                          color:Color.fromRGBO(120, 6, 84, 1),  // Set the color to indicate correctness, typically green
                          size: 24.0,  // Set the desired size
                        ))
                  ],
                )),

            SizedBox(height: 10,
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(120, 6, 84, 1).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [

                    Expanded(
                      flex: 1,
                      child: Container(

                        height: 50.0, // Set the desired height
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white60.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text('04',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),

                    SizedBox(width: 10,),

                    Expanded(
                      flex: 3,
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Ingredients to Look For and Avoid',
                            style: TextStyle(color: Colors.white),),

                          Text('Video : 8min',
                            style: TextStyle(fontSize: 12,color: Colors.black38),)
                        ],
                      ),

                    ),

                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.check_circle_sharp,  // You can also use Icons.check_circle for a circled tick mark
                          color:Color.fromRGBO(120, 6, 84, 1),  // Set the color to indicate correctness, typically green
                          size: 24.0,  // Set the desired size
                        ))
                  ],
                )),

            SizedBox(height: 10,
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(120, 6, 84, 1).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [

                    Expanded(
                      flex: 1,
                      child: Container(

                        height: 50.0, // Set the desired height
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white60.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text('05',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),

                    SizedBox(width: 10,),

                    Expanded(
                      flex: 3,
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Building a Complete Skincare Routine',
                            style: TextStyle(color: Colors.white),),

                          Text('Assignment',
                            style: TextStyle(fontSize: 12,color: Colors.black38),)
                        ],
                      ),

                    ),

                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.circle,  // You can also use Icons.check_circle for a circled tick mark
                          color:Colors.black26,  // Set the color to indicate correctness, typically green
                          size: 24.0,  // Set the desired size
                        ))
                  ],
                )),
            SizedBox(height: 10,
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(120, 6, 84, 1).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [

                    Expanded(
                      flex: 1,
                      child: Container(

                        height: 50.0, // Set the desired height
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white60.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text('06',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),

                    SizedBox(width: 10,),

                    Expanded(
                      flex: 3,
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Final Graded Quiz',
                            style: TextStyle(color: Colors.white),),

                          Text('Duration : 1h',
                            style: TextStyle(fontSize: 12,color: Colors.black38),)
                        ],
                      ),

                    ),

                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.circle,  // You can also use Icons.check_circle for a circled tick mark
                          color:Colors.black26,  // Set the color to indicate correctness, typically green
                          size: 24.0,  // Set the desired size
                        ))
                  ],
                )),

            SizedBox(height: 20,),

            ElevatedButton(
              onPressed: () {

              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(120, 6, 84, 1)),
                foregroundColor:
                MaterialStateProperty.all<Color>(Colors.white),

                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0), // Increase vertical padding for a larger button
                ),

                elevation: MaterialStateProperty.all<double>(
                    0), // Remove the shadow

                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Set your desired radius here
                  ),
                ),

              ),


              child: Text('Resume',
              style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    ));
  }
}
