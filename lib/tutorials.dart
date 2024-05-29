import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TutorialsPage extends StatefulWidget {
  @override
  _TutorialsPageState createState() => _TutorialsPageState();
}

class _TutorialsPageState extends State<TutorialsPage> {
  String _selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(120, 6, 84, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Tutorials',
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
                  children: [
                    _buildCategoryButton('Hairstyling', 'hairstyling'),
                    SizedBox(width: 8.0),
                    _buildCategoryButton('Skin Care & Esthetics', 'skincare'),
                    SizedBox(width: 8.0),
                    _buildCategoryButton('Makeups', 'makeups'),
                    SizedBox(width: 8.0),
                    _buildCategoryButton('Nail Care', 'nailcare'),
                    SizedBox(width: 8.0),
                    _buildCategoryButton('Body Treatments', 'body'),
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
          color: isSelected ? Color.fromRGBO(179, 82, 147,1) : Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          border: isSelected
              ? null
              : Border.all(
            color:Color.fromRGBO(179, 82, 147,1), // Replace with your desired border color
            width: 2.0, // Adjust the border width as needed
          ),

        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Color.fromRGBO(179, 82, 147,1),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCourses() {
    switch (_selectedCategory) {
      case 'skincare':
        return _buildSkinCareCourses();
      case 'hairstyling':
        return _buildHairstyleCourses();
      case 'makeups':
        return _buildMakeupsCourses();
      case 'nailcare':
        return _buildNailcareCourses();
      case 'body':
        return _buildBodyCourses();
      default:
        return _buildAllCourses();
    }
  }

  Widget _buildSkinCareCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseCard(
          'assets/tute_4.jpg',
          'Effective Face Packs for Every Skin Type',
          4.4,
          200,
        ),
        SizedBox(height: 15.0),
        _buildCourseCard(
          'assets/tute_2.jpg',
          'Step-by-Step Microblading Tutorial',
          3.5,
          160,
        ),
      ],
    );
  }

  Widget _buildHairstyleCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseCard(
          'assets/tute_1.jpg',
          'Perfecting the Art of Haircutting',
          4.8,
          320,
        ),
      ],
    );
  }

  Widget _buildMakeupsCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseCard(
          'assets/tute_3.jpg',
          'Professional Bridal Makeup Techniques',
          4.4,
          200,
        ),
      ],
    );
  }

  Widget _buildNailcareCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseCard(
          'assets/tute_5.jpg',
          'Ultimate Guide to Nail Extensions',
          4.4,
          200,
        ),
      ],
    );
  }

  Widget _buildBodyCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseCard(
          'assets/tute_6.jpg',
          'Spa Day at Home: DIY Body Treatments',
          4.7,
          180,
        ),
      ],
    );
  }

  Widget _buildAllCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseCard(
          'assets/tute_1.jpg',
          'Perfecting the Art of Haircutting',
          4.8,
          320,
        ),
        SizedBox(height: 15.0),
        _buildCourseCard(
          'assets/tute_4.jpg',
          'Effective Face Packs for Every Skin Type',
          4.4,
          200,
        ),
        SizedBox(height: 15.0),
        _buildCourseCard(
          'assets/tute_2.jpg',
          'Step-by-Step Microblading Tutorial',
          3.5,
          160,
        ),
        SizedBox(height: 15.0),
        _buildCourseCard(
          'assets/tute_3.jpg',
          'Professional Bridal Makeup Techniques',
          4.4,
          200,
        ),
        SizedBox(height: 15.0),
        _buildCourseCard(
          'assets/tute_5.jpg',
          'Ultimate Guide to Nail Extensions',
          4.4,
          200,
        ),
      ],
    );
  }

  Widget _buildCourseCard(String imagePath, String title, double rating, int reviews) {
    return Container(
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
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                width: 50.0,
                height: 100.0,
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
                    Expanded(
                      flex: 3,
                      child: Text(
                        title,
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ),


                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerRight, // Optional: Align icon to the right within its expanded section
                        child: IconButton(
                          icon: Icon(Icons.play_circle_outline_rounded, size: 40, color: Color.fromRGBO(120, 6, 84, 1)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),

                  ],
                ),


                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      '$rating',
                      style: TextStyle(fontSize: 12.0,color: Colors.black38),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      '($reviews reviews)',
                      style: TextStyle(fontSize: 12.0,color: Colors.black38),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
