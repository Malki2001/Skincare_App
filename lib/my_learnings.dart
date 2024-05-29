import 'package:flutter/material.dart';
import 'package:self_care_new/course_content.dart';
import 'package:self_care_new/seventh_page.dart';
import 'course_details.dart';

class MyLearningsPage extends StatefulWidget {
  @override
  _MyLearningsPageState createState() => _MyLearningsPageState();
}

class _MyLearningsPageState extends State<MyLearningsPage> {
  String _selectedCategory = 'in_progress';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(120, 6, 84, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=> SeventhPage()));
          },
        ),
        title: Text(
          'My Learnings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Column(
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
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  style: TextStyle(color: Colors.black),
                  onSubmitted: (query) {
                    // Handle search action
                  },
                ),
              ),
              SizedBox(height: 10.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildCategoryButton('In Progress', 'in_progress'),
                    SizedBox(width: 8.0),
                    _buildCategoryButton('Completed', 'completed'),
                    SizedBox(width: 8.0),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              _buildCourses(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String title, String category) {
    bool isSelected = _selectedCategory == category;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategory = category;
        });
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: isSelected ? Color.fromRGBO(120, 6, 84, 1) : Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          border: isSelected
              ? null
              : Border.all(
            color: Color.fromRGBO(120, 6, 84, 1), // Replace with your desired border color
            width: 2.0, // Adjust the border width as needed
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Color.fromRGBO(120, 6, 84, 1),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCourses() {
    switch (_selectedCategory) {
      case 'in_progress':
        return _buildInProgressCourses();
      case 'completed':
        return _buildCompletedCourses();
      default:
        return _buildInProgressCourses();
    }
  }

  Widget _buildInProgressCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseCard(
          'assets/course_2.jpg',
          'Anti-aging Treatments',
          'Professional Certificate',
          0.7,
        ),
        SizedBox(height: 15.0),
        _buildCourseCard(
          'assets/eyebrows.jpg',
          'Eyebrow Microblading',
          'Professional Certificate',
          0.3,
        ),
        SizedBox(height: 15.0),
        _buildCourseCard(
          'assets/products_2.jpg',
          'Ultimate Skincare Guide',
          'Professional Certificate',
          0.5,
        ),
      ],
    );
  }

  Widget _buildCompletedCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseCard_Completed(
          'assets/haircut_4.jpg',
          'Haircutting Techniques',

        ),

        _buildCourseCard_Completed(
          'assets/nails.jpg',
          'Acrylic Nail Extensions',

        ),
      ],
    );
  }

  Widget _buildCourseCard(
      String imagePath,
      String title,
      String certificate,
      double progress,
      ) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => ProgressPage(
        //           imagePath: imagePath,
        //           title: title,
        //           certificate: certificate,
        //           level: level,
        //           rating: rating,
        //           reviews: reviews,
        //           LecImage: LecImage,
        //           LecName: LecName,
        //           LecPosition: LecPosition,
        //           details: details)),
        // );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      imagePath,
                      width: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            title,
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                      Text(
                        certificate,
                        style: TextStyle(fontSize: 12.0, color: Colors.black54),
                      ),
                      SizedBox(height: 20.0),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: LinearProgressIndicator(
                          value: progress,
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromRGBO(179, 82, 147,1)
                           ,
                          ),
                          minHeight: 6.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> CourseContentPage()));
                        },
                        child: Row(
                        children: [

                          Text(
                            'Go To Course',
                            style: TextStyle(
                              color: Color.fromRGBO(120, 6, 84, 1),
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_right_alt_rounded,
                            color: Color.fromRGBO(120, 6, 84, 1),
                          ),
                        ],
                      ),
                      ),
                    ],

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildCourseCard_Completed(
      String imagePath,
      String title,


      ) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => ProgressPage(
        //           imagePath: imagePath,
        //           title: title,
        //           certificate: certificate,
        //           level: level,
        //           rating: rating,
        //           reviews: reviews,
        //           LecImage: LecImage,
        //           LecName: LecName,
        //           LecPosition: LecPosition,
        //           details: details)),
        // );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      imagePath,
                      width: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            title,
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),

                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Great Work! You have passed all requirements',
                              style: TextStyle(fontSize: 12.0, color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),

                      ElevatedButton(
                        onPressed: () {

                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(179, 82, 147,1)),
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                          elevation: MaterialStateProperty.all<double>(
                              0), // Remove the shadow

                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0), // Set your desired radius here
                            ),
                          ),

                        ),


                        child: Text('View Certificate'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
