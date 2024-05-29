import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:self_care_new/seventh_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _obscurePassword = true;

  File? _image;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

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
          children: [
            SizedBox(height: 30),
            Text(
              "Edit Your Account",
              style: TextStyle(
                fontSize: 24, // Increase the font size
                fontFamily: 'PoetsenOne-Regular', // Use a custom font family
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
            SizedBox(height: 20),

            Stack(
              children: [
                Container(
                  width: 140.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: _image == null
                          ? AssetImage('assets/profile.jpg') as ImageProvider
                          : FileImage(_image!),
                      fit: BoxFit.cover,

                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: _pickImage,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromRGBO(120, 6, 84, 1).withOpacity(0.7),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline),
                labelText: 'Malki Yasodhara',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: '18/06/2001',
                prefixIcon: Icon(Icons.calendar_month_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: '+94 771 072 446',
                prefixIcon: Icon(Icons.call),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: 'malkiyasodhara@gmail.com',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                labelText: '********',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
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
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
            SizedBox(height: 30), // Add space before the Facebook button
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0), // Add padding to the bottom
              child: ElevatedButton(
                onPressed: () {

                 Navigator.push(context,
                 MaterialPageRoute(builder: (context)=> SeventhPage()));
                },
                child: Text(
                  'Save Changes',
                  style: TextStyle(
                    fontFamily: 'PoetsenOne-Regular',
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(120, 6, 84, 1),
                  elevation: 0.0,

                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
