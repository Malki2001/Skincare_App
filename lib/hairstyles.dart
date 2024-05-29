import 'package:flutter/material.dart';


class HairstylesPage extends StatefulWidget{
  @override
  _HairstylesPageState createState()=>  _HairstylesPageState();
}

class   _HairstylesPageState extends State<  HairstylesPage>{
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
    'Hairstyles',
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

        Container(

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
                    'assets/hairstyle_1.jpg',
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
                            'Managing Curly and Wavy Hair',
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
                          '4.5',
                          style: TextStyle(fontSize: 12.0,color: Colors.black38),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          '(456 reviews)',
                          style: TextStyle(fontSize: 12.0,color: Colors.black38),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

              SizedBox(height: 10,),

              Container(

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
                          'assets/hairstyle_2.jpg',
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
                                  'Hair Extensions and Weaves',
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
                                '4.5',
                                style: TextStyle(fontSize: 12.0,color: Colors.black38),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                '(456 reviews)',
                                style: TextStyle(fontSize: 12.0,color: Colors.black38),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Container(

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
                          'assets/hairstyle_3.jpg',
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
                                  'Bridal Hairstyling: Tips and Tricks',
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
                                '4.5',
                                style: TextStyle(fontSize: 12.0,color: Colors.black38),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                '(456 reviews)',
                                style: TextStyle(fontSize: 12.0,color: Colors.black38),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),

              Container(

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
                          'assets/hairstyle_4.jpg',
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
                                  'Hair Coloring and Highlights',
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
                                '4.5',
                                style: TextStyle(fontSize: 12.0,color: Colors.black38),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                '(456 reviews)',
                                style: TextStyle(fontSize: 12.0,color: Colors.black38),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Container(

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
                          'assets/hairstyle_5.jpg',
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
                                  'Texture and Volume: Styling Techniques',
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
                                '4.5',
                                style: TextStyle(fontSize: 12.0,color: Colors.black38),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                '(456 reviews)',
                                style: TextStyle(fontSize: 12.0,color: Colors.black38),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
}
}