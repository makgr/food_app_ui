import 'package:flutter/material.dart';

import '../constant/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            _homeHeader(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            _searchSection(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            _categorySlider(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }

  Widget _homeHeader() {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Foodie',
                style: TextStyle(
                  color: AppColor.homeTitleColor,
                  fontSize: 45,
                  fontFamily: 'Lobster',
                  fontWeight: FontWeight.w400,
                  height: 1.0, // Changed height to a more reasonable value
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: ShapeDecoration(
                  color: AppColor.homeHeaderShapeColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/image8.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Order your favourite food!',
            style: TextStyle(
              color: AppColor.homeHeaderSubtitleTextColor,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 1.2, // Changed height to a reasonable value
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchSection() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.03,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: ShapeDecoration(
            color: Color(0xFF36622b),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Icon(
            Icons.tune,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _categorySliderItem(String category_name) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: Container(
        width: 75,
        height: 50,
        decoration: ShapeDecoration(
          color: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              category_name,
              style: TextStyle(
                color: AppColor.categoryItemTextColor,
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _categorySlider() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return _categorySliderItem("Cat $index");
        },
      ),
    );
  }

  Widget _itemList() {
    return GridView.builder(gridDelegate: SliverGridDelegate(), itemBuilder: (){}.);
  }
}
