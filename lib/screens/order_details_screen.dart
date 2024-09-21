import 'package:flutter/material.dart';

import '../constant/app_color.dart';
import 'order_success_screen.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  bool checkedValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order summary",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            color: AppColor.orderDetailsSummaryTextColor,
                          ),
                        ),
                        Text(
                          "\$16.48",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            color: AppColor.orderDetailsSummaryTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Taxes",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            color: AppColor.orderDetailsSummaryTextColor,
                          ),
                        ),
                        Text(
                          "\$0.3",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            color: AppColor.orderDetailsSummaryTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery fees",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            color: AppColor.orderDetailsSummaryTextColor,
                          ),
                        ),
                        Text(
                          "\$1.5",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            color: AppColor.orderDetailsSummaryTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                            color: AppColor.orderDetailsSummaryTotalTextColor,
                          ),
                        ),
                        Text(
                          "\$18.19",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                            color: AppColor.orderDetailsSummaryTotalTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Estimated delivery time:",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                            color: AppColor.orderDetailsSummaryTotalTextColor,
                          ),
                        ),
                        Text(
                          "15 - 30 Mins",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins",
                            color: AppColor.orderDetailsSummaryTotalTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    "Payment Methods",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                  ),
                  _paymentMethods(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0001,
                  ),
                  CheckboxListTile(
                    title: Text(
                      "Save card details for future payments",
                      style: TextStyle(
                          fontSize: 13.4,
                          fontFamily: "Poppins",
                          color: AppColor
                              .orderDetailsSummarySaveCardDetailsTextColor),
                    ),
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: AppColor.primaryColor,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.19,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 75,
                    width: MediaQuery.of(context).size.width * 0.30,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                            color:
                                AppColor.orderDetailsSummaryTotalPriceTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "\$18.19",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) {
                          return OrderDetailsScreen();
                        },
                      ));
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return OrderSuccessScreen();
                        }));
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width * 0.530,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: AppColor.orderButtonTextColor,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Center(
                          child: Text(
                            "Pay Now",
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _paymentMethods() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.30,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Group57.png"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
