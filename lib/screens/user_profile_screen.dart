import 'package:flutter/material.dart';
import 'package:food_app_ui/constant/app_color.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: AppColor.profileScreenAppBarIconColor,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.settings,
              color: AppColor.profileScreenAppBarIconColor,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 80),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height - 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 7.0,
                      right: 7.0,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 85), // Added space to fit the image
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Name",
                            hintText: "Sokhina Begum",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0),
                              borderSide: BorderSide(
                                color: Color(0xffE1E1E1),
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "test@tmail.com",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0),
                              borderSide: BorderSide(
                                color: Color(0xffE1E1E1),
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Delivery Address",
                            hintText: "Dhaka, Bangladesh",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0),
                              borderSide: BorderSide(
                                color: Color(0xffE1E1E1),
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "******",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0),
                              borderSide: BorderSide(
                                color: Color(0xffE1E1E1),
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Payment Details"),
                              Icon(Icons.arrow_right),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Order History"),
                              Icon(Icons.arrow_right),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.19,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 70,
                                    width: MediaQuery.of(context).size.width *
                                        0.41,
                                    padding: EdgeInsets.all(16.0),
                                    decoration: BoxDecoration(
                                      color: AppColor.orderButtonTextColor,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Edit Profile",
                                        style: TextStyle(
                                          color: AppColor.priceButtonTextColor,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 70,
                                    width: MediaQuery.of(context).size.width *
                                        0.41,
                                    padding: EdgeInsets.all(16.0),
                                    decoration: BoxDecoration(
                                        // color: AppColor.orderButtonTextColor,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: AppColor.primaryColor,
                                        )),
                                    child: Center(
                                      child: Text(
                                        "Log Out",
                                        style: TextStyle(
                                          color: AppColor.primaryColor,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 5,
            left:
                MediaQuery.of(context).size.width / 2 - 75, // Center the image
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/image8.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
