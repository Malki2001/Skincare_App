import 'package:flutter/material.dart';
import 'third_page.dart';
import 'fourth_page.dart';

class SecondPage extends StatelessWidget {
  int _currentPage = 1;

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
          }
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
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image1.png',
              width: 160,
              height: 160,
            ),
            SizedBox(height: 20),
            Text(
              'Learn Anywhere, Anytime ',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'PoetsenOne-Regular',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Empower yourself with knowledge and elevate your craft from the comfort of your own space.',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'PoetsenOne-Regular',
                color: Colors.black26,
              ),
              textAlign: TextAlign.center,
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
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> ThirdPage()),
                  );
                  // Add your button press logic here
                },
                child: Text('Next',
                  style: TextStyle(
                    fontFamily: 'PoetsenOne-Regular',
                    color: Colors.white,
                  ),),

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(120, 6, 84, 1),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
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
