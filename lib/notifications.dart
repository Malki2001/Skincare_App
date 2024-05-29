import 'package:flutter/material.dart';


class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {

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
            'Notifications',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Today'),

                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),


                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                         flex: 1,
                          child: Image.asset("assets/notify_1.png",
                            width: 50.0,
                            fit: BoxFit.cover,)
                      ),

                      Expanded(
                          flex: 2,
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Payment Successsful',
                              style: TextStyle(fontSize: 15),),
                              
                              SizedBox(height:5,),
                              
                              Text('You have made a course payment',
                              style: TextStyle(color: Colors.black54,fontSize: 13),)
                            ],
                          )
                      ),
                    ],
                  ),

                ),
                SizedBox(height: 15,),

                Text('Yesterday'),

                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),


                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.asset("assets/notify_3.png",
                            width: 50.0,
                            fit: BoxFit.cover,)
                      ),

                      Expanded(
                          flex: 2,
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('New Courses Available',
                                style: TextStyle(fontSize: 15),),

                              SizedBox(height:5,),

                              Text('Now you can search the latest courses',
                                style: TextStyle(color: Colors.black54,fontSize: 13),)
                            ],
                          )
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


                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.asset("assets/notify_4.png",
                            width: 50.0,
                            fit: BoxFit.cover,)
                      ),

                      Expanded(
                          flex: 2,
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Today's Special Offers",
                                style: TextStyle(fontSize: 15),),

                              SizedBox(height:5,),

                              Text('You can get a special discount today',
                                style: TextStyle(color: Colors.black54,fontSize: 13),)
                            ],
                          )
                      ),
                    ],
                  ),

                ),

                SizedBox(height: 15,),

                Text('March 18 , 2025'),

                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),


                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.asset("assets/notify_5.png",
                            width: 50.0,
                            fit: BoxFit.cover,)
                      ),

                      Expanded(
                          flex: 2,
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Credit Card Connected',
                                style: TextStyle(fontSize: 15),),

                              SizedBox(height:5,),

                              Text('Your credit card has been linked',
                                style: TextStyle(color: Colors.black54,fontSize: 13),)
                            ],
                          )
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


                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.asset("assets/notify_8.png",
                            width: 40.0,
                            fit: BoxFit.cover,)
                      ),

                      Expanded(
                          flex: 2,
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Account Setup Successsful',
                                style: TextStyle(fontSize: 15),),

                              SizedBox(height:5,),

                              Text('Your account has been created',
                                style: TextStyle(color: Colors.black54,fontSize: 13),)
                            ],
                          )
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
