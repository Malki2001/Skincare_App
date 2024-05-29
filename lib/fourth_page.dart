import 'package:flutter/material.dart';
import 'fifth_page.dart';
import 'sixth_page.dart';

class FourthPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        // backgroundColor: Color.fromRGBO(66, 245, 191, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromRGBO(120, 6, 84, 1)),
          onPressed: () {

            Navigator.pop(context);
          },
        ),
      ),

      body: Container(
        width: double.infinity, // Make the container take up the full width
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Center the children vertically
          crossAxisAlignment: CrossAxisAlignment.center,
          // Center the children horizontally
          children: [
            Image.asset(
              'assets/img_4.png',
              width: 150,
              height: 150,

            ),
            SizedBox(height: 20.0),

            Text(
              "Let's You In",
              style: TextStyle(
                fontSize: 24, // Increase the font size
                fontFamily: 'PoetsenOne-Regular', // Use a custom font family
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
            SizedBox(height: 20), // Add space before the Facebook button

            OutlinedButton.icon(
              onPressed: () {
                // Add your Facebook login logic here
              },
              icon: Icon(
                Icons.facebook,
                color: Colors.blue,
              ),
              label: Padding(
                padding: EdgeInsets.only(left: 7), // Adjust the padding to control the gap
                child: Text(
                  'Continue with Facebook',
                  style: TextStyle(
                    color: Colors.black, // Text color
                  ),
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.black26), // Border color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15), // Button padding
              ),
            ),
            SizedBox(height: 10), // Add space before the Facebook button

            OutlinedButton.icon(
              onPressed: () {
                // Add your Facebook login logic here
              },
              icon: Image.asset(
                'assets/google-logo.png',
                width: 26.0,
                height: 26.0,

              ),
              label: Padding(
                padding: EdgeInsets.only(left: 10), // Adjust the padding to control the gap
                child: Text(
                  'Continue with Google',
                  style: TextStyle(
                    color: Colors.black, // Text color
                  ),
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.black26), // Border color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(horizontal: 65, vertical: 12), // Button padding
              ),
            ),
            SizedBox(height: 10), // Add space before the Facebook button

            OutlinedButton.icon(
              onPressed: () {
                // Add your Facebook login logic here
              },
              icon: Icon(
                Icons.apple_outlined,  // Facebook icon color
                color: Colors.black,
              ),
              label: Padding(
                padding: EdgeInsets.only(left: 10), // Adjust the padding to control the gap
                child: Text(
                  'Continue with Apple',
                  style: TextStyle(
                    color: Colors.black, // Text color
                  ),
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.black26), // Border color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 12), // Button padding

              ),
            ),

            SizedBox(height: 30),

            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.black12,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'or',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.black12,
                    thickness: 1,
                  ),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0), // Add padding to the bottom

              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> FifthPage()),);

                  // Add your button press logic here
                },
                child: Text('Sign In with Password',
                  style: TextStyle(
                    fontFamily: 'PoetsenOne-Regular',
                    color: Colors.white,
                  ),),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  backgroundColor: Color.fromRGBO(120, 6, 84, 1),
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners

                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                  style: TextStyle(
                    color: Colors.grey,
                  ),),
                SizedBox(width: 10),

                TextButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0),
                  ),
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> SixthPage()),);

                  },

                  child:
                Text("Sign Up",
                  style: TextStyle(
                    color:Color.fromRGBO(120, 6, 84, 1),
                  ),),
                ),
              ],
            )




          ],
        ),
      ),
    );
  }
}


