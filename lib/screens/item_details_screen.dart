import 'package:flutter/material.dart';

import '../constant/app_color.dart';

class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({super.key});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  double _value = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        actions: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 6.0, right: 6.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.365,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Group19.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                "Hamburger Veggie Burger",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColor.itemListStarColor,
                  ),
                  Text(" 4.8 - 14 mins"),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                "Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun. ",
                style: TextStyle(
                  color: AppColor.itemDetailsTextColor,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Spicy"),
                        Slider(
                          activeColor: AppColor.primaryColor,
                          thumbColor: AppColor.primaryColor,
                          min: 0.0,
                          max: 7.0,
                          value: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                        Row(
                          children: [
                            Text("Mild"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                            Text("Hot"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Portion"),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.primaryColor,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 5),
                                child: Icon(
                                  Icons.remove,
                                  color: AppColor.bottomAppbarIconColor,
                                ),
                              ),
                            ),
                            Text("2"),
                            InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.primaryColor,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 5),
                                child: Icon(
                                  Icons.add,
                                  color: AppColor.bottomAppbarIconColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
