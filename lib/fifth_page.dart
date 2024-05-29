import 'package:flutter/material.dart';
import 'sixth_page.dart';
import 'seventh_page.dart';

class FifthPage extends StatefulWidget {
  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  bool _obscurePassword = true;

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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity, // Make the container take up the full width
          padding: EdgeInsets.all(16.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // Center the children vertically
            // crossAxisAlignment: CrossAxisAlignment.center,
            // Center the children horizontally
            children: [
              // Image.asset(
              //   'assets/LOGO.jpg',
              //   width: 140,
              //   height: 140,
              //
              // ),

              SizedBox(height: 80),

              Text(
                "Log In to Your Account",
                style: TextStyle(
                  fontSize: 26, // Increase the font size
                  fontFamily: 'PoetsenOne-Regular', // Use a custom font family
                  fontWeight: FontWeight.bold, // Make the text bold
                ),
              ),

              SizedBox(height: 50),

              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                ),
              ),

              SizedBox(height: 25),

              TextField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                ),
              ),
              SizedBox(height: 10), // Add space before the Facebook button

              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 16.0), // Add padding to the bottom
                child: ElevatedButton(

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> SeventhPage()),);

                    // Add your button press logic here
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontFamily: 'PoetsenOne-Regular',
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,

                    backgroundColor: Color.fromRGBO(120, 6, 84, 1),
                    padding: EdgeInsets.symmetric(
                        horizontal: 150, vertical: 16
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30), // Rounded corners
                    ),
                  ),
                ),
              ),

              // SizedBox(height: 8),

              Text(
                "Forgot the password",
                style: TextStyle(
                  color: Color.fromRGBO(120, 6, 84, 1),
                ),
              ),
              // Add space before the Facebook button

              SizedBox(height: 100),

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
                      'or continue with',
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

              SizedBox(height: 10),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                    ),
                    onPressed: () {},
                    child: Icon(Icons.facebook), // Facebook icon
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                    ),
                    onPressed: () {},
                    child: Image.asset(
                      'assets/google-logo.png',
                      width: 26.0,
                      height: 26.0,
                    ), // Facebook icon
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                    ),
                    onPressed: () {},
                    child: Icon(Icons.apple_outlined), // Facebook icon
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FifthPage()),
                      );
                    },
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SixthPage()),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color.fromRGBO(120, 6, 84, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
