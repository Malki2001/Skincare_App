import 'package:flutter/material.dart';
import 'fourth_page.dart';

class ThirdPage extends StatelessWidget {
  int _currentPage = 2;

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
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> FourthPage()),);
              // Add your skip logic here
            },
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity, // Make the container take up the full width
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center the children horizontally
          children: [
            Image.asset(
              'assets/image3.png',
              width: 160,
              height: 160,

            ),

            SizedBox(height: 20), // Add some space between the image and text
            Text(
              'Warmly Welcome to ',
              style: TextStyle(
                fontSize: 22, // Increase the font size
                fontFamily: 'PoetsenOne-Regular', // Use a custom font family
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
            Text(
              'TrendTutor ',
              style: TextStyle(
                fontSize: 26, // Increase the font size
                fontFamily: 'PoetsenOne-Regular', // Use a custom font family
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
            SizedBox(height: 20), // Add some space between the text and description

            Text(
              'Learn the latest techniques in haircuts, dressing, and other salon experiences',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'PoetsenOne-Regular',
                color: Colors.black26,// Use a custom font family
              ),
              textAlign: TextAlign.center, // Center align the text
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildBar(0),
                SizedBox(width: 8),
                _buildBar(1),
                SizedBox(width: 8),
                _buildBar(2),
              ],
            ),
            SizedBox(height: 100.0),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0), // Add padding to the bottom
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> FourthPage()),
                  );
                  // Add your button press logic here
                },
                child: Text('Get Started',
                  style: TextStyle(
                    fontFamily: 'PoetsenOne-Regular',
                    color: Colors.white,
                  ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor:Color.fromRGBO(120, 6, 84, 1),
                  elevation: 0.0,

                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBar(int index) {
    return Container(
      width: 20,
      height: 6,
      decoration: BoxDecoration(
        color: _currentPage == index ? Color.fromRGBO(120, 6, 84, 1) : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}