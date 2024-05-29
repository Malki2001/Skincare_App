import 'package:flutter/material.dart';
import 'package:self_care_new/course_start.dart';
import 'course_content.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String? selectedCountry;
  final List<String> countries = ['United States', 'Canada', 'Mexico', 'India', 'United Kingdom'];

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
          'Checkout',
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
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 3.0,
                      offset: Offset(0, 3),
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
                          'assets/products_2.jpg',
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
                          Text(
                            'Ultimate Skincare Guide: Choosing What Works for You',
                            style: TextStyle(fontSize: 14.0),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Professional Certificate',
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.black54),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '\$55',
                            style: TextStyle(fontSize: 25.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Billing Information"),


                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Enter your name",
                      labelStyle: TextStyle(fontSize: 12),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
                    ),
                  ),

                  SizedBox(height: 10,),

                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: "Select your country",
                      labelStyle: TextStyle(fontSize: 12),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),

                    ),
                    value: selectedCountry,
                    items: countries.map((String country) {
                      return DropdownMenuItem<String>(
                        value: country,
                        child: Text(country),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCountry = newValue;
                      });
                    } ,
                  )
                ],
              ),

              SizedBox(height: 15,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Text("Payment Methods"),

                  SizedBox(height: 10),

                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 1.0,

                        ),
                      ],
                    ),
                    child:Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.credit_card,color: Color.fromRGBO(120, 6, 84, 1),),
                            SizedBox(width: 15,),
                            Text("Card",
                              style: TextStyle(color: Color.fromRGBO(120, 6, 84, 1)),),

                          ],
                        ),
                        SizedBox(height: 10),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Text("Card Number",
                              style: TextStyle(fontSize: 13),),
                            SizedBox(height: 5,),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: "1234 1234 1234 1234 ",
                                  labelStyle: TextStyle(fontSize: 12),
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
                                  suffixIcon: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset('assets/cards.png', height: 24), // Adjust path and size

                                    ],

                                  )
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),

                        Row(
                          children: [
                            Expanded(child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Text("Expiry Date",
                                  style: TextStyle(fontSize: 13),),
                                SizedBox(height: 5,),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: "MM/YY ",
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
                                  ),
                                ),
                              ],
                            ),
                            ),

                            SizedBox(width: 16),

                            Expanded(child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Text("CVC",
                                  style: TextStyle(fontSize: 13),),
                                SizedBox(height: 5,),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: "CVC ",
                                    labelStyle: TextStyle(fontSize: 12),
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
                                  ),
                                ),
                              ],
                            ),
                            ),

                          ],
                        )

                      ],
                    ),

                  ),

                  SizedBox(height: 15,),

                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 1.0,

                        ),
                      ],
                    ),
                    child:
                    Row(
                      children: [
                        Icon(Icons.paypal_rounded,color: Color.fromRGBO(120, 6, 84, 1),),


                        SizedBox(width: 15,),
                        Text("PayPal",
                          style: TextStyle(color:Color.fromRGBO(120, 6, 84, 1) ),)
                      ],
                    ),

                  ),

                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Container(

                        child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> CourseStartPage()),);
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(120, 6, 84, 1)),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),

                              elevation: MaterialStateProperty.all<double>(0), // Remove the shadow
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0), // Change border radius
                                ),
                              ),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.symmetric(vertical: 16.0,horizontal: 26.0), // Increase vertical padding for a larger button
                              ),
                            ),

                            child: Text('Start Free Trial',
                            style: TextStyle(fontSize: 16),)
                        ),
                      ),

                      SizedBox(width: 10.0,),


                      Text("You won't be charged today",
                        style: TextStyle(fontSize:10,color: Colors.black38),),

                    ],
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
