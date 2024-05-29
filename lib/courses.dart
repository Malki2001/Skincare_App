import 'package:flutter/material.dart';
import 'course_details.dart';

class CoursesPage extends StatefulWidget {
  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  String _selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:  Color.fromRGBO(120, 6, 84, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Courses',
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
                  color: Color.fromRGBO(179, 82, 147,1),
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
          'assets/course_2.jpg',
          'Anti-aging Treatments',
          '\$45',
          'Professional Certificate',
          'Advanced',
          4.4,
          200,
          'assets/lecturer.jpg',
          'Sara Joanne',
          'Senior Skincare Specialist',
          'As the demand for youthful, radiant skin continues to grow, the beauty and wellness industry is witnessing a surge in innovative anti-aging treatments. An Anti-Aging Treatments course is designed...',
        ),
        SizedBox(height: 15.0),
        _buildCourseCard(
          'assets/eyebrows.jpg',
          'Eyebrow Microblading',
          '\$28',
          'Professional Certificate',
          'Basic',
          3.5,
          160,
          'assets/lecturer.jpg',
          'Anne Lovelace',
          'Senior Skincare Specialist',
          'Eyebrow microblading has revolutionized the beauty industry by offering a semi-permanent solution to achieving perfectly shaped and fuller eyebrows. This technique involves...',
        ),
        SizedBox(height: 15.0),
        _buildCourseCard(
          'assets/products_2.jpg',
          'Ultimate Skincare Guide',
          '\$55',
          'Professional Certificate',
          'Basic',
          5.5,
          546,
          'assets/lecturer.jpg',
          'Jerry Kotlin',
          'Senior Skincare Specialist',
          'This comprehensive course is designed to empower you with the knowledge and skills to select the best skincare products tailored specifically to your individual skin needs. Through a blend of scientific understanding and practical application...',
        ),
      ],
    );
  }

  Widget _buildHairstyleCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseCard(
            'assets/haircut_4.jpg',
            'Haircutting Techniques',
            '\$30',
            'Professional Certificate',
            'Basic',
            4.8,
            320,
            'assets/lecturer.jpg',
            'Jesmine Cabrin',
            'Senior Haircutting Specialist',
            'The art of haircutting is fundamental to the hairdressing profession, requiring a blend of creativity, technical skill, and precision. A Haircutting Techniques course is designed to provide...'),
      ],
    );
  }

  Widget _buildMakeupsCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseCard(
            'assets/makeups.jpg',
            'Perfect Bridal Makeups',
            '\$55',
            'Professional Certificate',
            'Intermediate',
            4.4,
            200,
            'assets/lecturer.jpg',
            'Zera Twinkle',
            'Senior Skincare Specialist',
            'The wedding day is one of the most important and memorable events in a persons life, and looking radiant is a top priority for brides. A Bridal Makeup course is specifically designed to equip makeup ..'),
      ],
    );
  }

  Widget _buildNailcareCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseCard(
          'assets/nails.jpg',
          'Acrylic Nail Extensions',
          '\$30',
          'Professional Certificate',
          'Basic',
          4.4,
          200,
          'assets/lecturer.jpg',
          'Zera Twinkle',
          'Senior Skincare Specialist',
          'The beauty and nail industry has seen a significant rise in the popularity of acrylic nail extensions, known for their durability, versatility, and aesthetic appeal. An Acrylic Nail Extensions course is designed to equip aspiring nail technician...',
        ),
      ],
    );
  }

  Widget _buildBodyCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseCard(
            'assets/head.jpg',
            'Body Treatments',
            '\$50',
            'Professional Certificate',
            'Intermediate',
            4.7,
            180,
            'assets/lecturer.jpg',
            'Baker Zoosen',
            'Senior Skincare Specialist',
            'As the wellness industry continues to flourish, body treatments have become a cornerstone of holistic health and beauty services. A Body Treatments course is designed to provide aspiring and experienced beauty professionals with the skills and ...'),
      ],
    );
  }

  Widget _buildAllCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCourseCard(
            'assets/haircut_4.jpg',
            'Haircutting Techniques',
            '\$30',
            'Professional Certificate',
            'Basic',
            4.8,
            320,
            'assets/lecturer.jpg',
            'Jesmine Cabrin',
            'Senior Haircutting Specialist',
            'The art of haircutting is fundamental to the hairdressing profession, requiring a blend of creativity, technical skill, and precision. A Haircutting Techniques course is designed to provide...'),
        SizedBox(height: 15.0),
        _buildCourseCard(
          'assets/products_2.jpg',
          'Ultimate Skincare Guide',
          '\$55',
          'Professional Certificate',
          'Basic',
          5.5,
          546,
          'assets/lecturer.jpg',
          'Jerry Kotlin',
          'Senior Skincare Specialist',
          'This comprehensive course is designed to empower you with the knowledge and skills to select the best skincare products tailored specifically to your individual skin needs. Through a blend of scientific understanding and practical application...',
        ),
        SizedBox(height: 15.0),
        _buildCourseCard(
          'assets/course_2.jpg',
          'Anti-aging Treatments',
          '\$45',
          'Professional Certificate',
          'Advanced',
          4.4,
          200,
          'assets/lecturer.jpg',
          'Sara Joanne',
          'Senior Skincare Specialist',
          'As the demand for youthful, radiant skin continues to grow, the beauty and wellness industry is witnessing a surge in innovative anti-aging treatments. An Anti-Aging Treatments course is designed...',
        ),
        SizedBox(height: 15.0),
        _buildCourseCard(
          'assets/eyebrows.jpg',
          'Eyebrow Microblading',
          '\$28',
          'Professional Certificate',
          'Basic',
          3.5,
          160,
          'assets/lecturer.jpg',
          'Anne Lovelace',
          'Senior Skincare Specialist',
          'Eyebrow microblading has revolutionized the beauty industry by offering a semi-permanent solution to achieving perfectly shaped and fuller eyebrows. This technique involves...',
        ),
        SizedBox(height: 15.0),
        _buildCourseCard(
            'assets/makeups.jpg',
            'Bridal Makeups',
            '\$55',
            'Professional Certificate',
            'Intermediate',
            4.4,
            200,
            'assets/lecturer.jpg',
            'Zera Twinkle',
            'Senior Skincare Specialist',
            'The wedding day is one of the most important and memorable events in a persons life, and looking radiant is a top priority for brides. A Bridal Makeup course is specifically designed to equip makeup ..'),
        SizedBox(height: 15.0),
        _buildCourseCard(
          'assets/nails.jpg',
          'Acrylic Nail Extensions',
          '\$30',
          'Professional Certificate',
          'Basic',
          4.4,
          200,
          'assets/lecturer.jpg',
          'Zera Twinkle',
          'Senior Skincare Specialist',
          'The beauty and nail industry has seen a significant rise in the popularity of acrylic nail extensions, known for their durability, versatility, and aesthetic appeal. An Acrylic Nail Extensions course is designed to equip aspiring nail technician...',
        ),
        SizedBox(height: 15.0),
        _buildCourseCard(
            'assets/head.jpg',
            'Body Treatments',
            '\$50',
            'Professional Certificate',
            'Intermediate',
            4.7,
            180,
            'assets/lecturer.jpg',
            'Baker Zoosen',
            'Senior Skincare Specialist',
            'As the wellness industry continues to flourish, body treatments have become a cornerstone of holistic health and beauty services. A Body Treatments course is designed to provide aspiring and experienced beauty professionals with the skills and ...'),
      ],
    );
  }

  Widget _buildCourseCard(
      String imagePath,
      String title,
      String price,
      String certificate,
      String level,
      double rating,
      int reviews,
      String LecImage,
      String LecName,
      String LecPosition,
      String details) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CourseDetailsPage(
                  imagePath: imagePath,
                  title: title,
                  price: price,
                  certificate: certificate,
                  level: level,
                  rating: rating,
                  reviews: reviews,
                  LecImage: LecImage,
                  LecName: LecName,
                  LecPosition: LecPosition,
                  details: details)),
        );
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
        child: Row(
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
                      SizedBox(width: 10.0),
                      Text(
                        price,
                        style: TextStyle(fontSize: 23.0),
                      ),
                    ],
                  ),
                  Text(
                    certificate,
                    style: TextStyle(fontSize: 12.0, color: Colors.black54),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    '($level)',
                    style: TextStyle(fontSize: 12.0, color: Colors.black54),
                  ),
                  SizedBox(height: 13.0),
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
                        style: TextStyle(fontSize: 12.0),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        '($reviews reviews)',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
