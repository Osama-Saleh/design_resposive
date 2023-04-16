import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 890,
            width : 100,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?"),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 30.r,
                  child: Container(
                    height: 300.h,
                    width: 280.w,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                            height: 250.h,
                            width: 280.w,
                            decoration: BoxDecoration(
                              color: HexColor("#1C3C58"),
                              borderRadius: BorderRadius.circular(15),
                            )),
                        Positioned(
                            top: 0,
                            child: Image(
                              image: AssetImage("assets/images/delivery.png"),
                              width: 200.w,
                              height: 200.h,
                            )),
                        Positioned(
                            bottom: 70.r,
                            child: Text(
                              "Track Your Parcel",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ))
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 280.r,
                  child: Container(
                    height: 110.h,
                    width: 240.w,
                    decoration: BoxDecoration(
                      color: HexColor("#FFFFFF"),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3, color: Colors.black.withOpacity(.5)),
                      ],
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              "Enter Track Number",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.5)),
                            )
                          ],
                        ),
                        Container(
                          height: 1.h,
                          color: Colors.black.withOpacity(.5),
                        ),
                        Container(
                          height: 40.h,
                          width: 200.w,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      HexColor("#1C3C58")),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                              child: Text("Track Now")),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 390.r,
                  child: Container(
                    width: 1.sw,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Our Services",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 417.r,
                  child: Container(
                      height: 150.h,
                      width: 1.sw,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 10.h,
                              width: 130.w,
                              margin: EdgeInsets.all(10),
                              // padding: EdgeInsets.only(bottom: 1),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black.withOpacity(.5))
                                ],
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Stack(
                                children: [
                                  Positioned(
                                      right: -2.r,
                                      top: -20.r,
                                      child: Container(
                                        width: 50.w,
                                        height: 50.h,
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent[100],
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 6,
                                                  color: Colors.black
                                                      .withOpacity(.5))
                                            ]),
                                        // child: CircleAvatar(
                                        //   backgroundColor: Colors.redAccent[100],

                                        // ),
                                      )),
                                  Positioned(
                                      right: -28.r,
                                      top: 3.r,
                                      child: Container(
                                        width: 50.w,
                                        height: 50.h,
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 4,
                                                  color: Colors.black
                                                      .withOpacity(.5))
                                            ]),
                                        // child: CircleAvatar(
                                        //   backgroundColor: Colors.redAccent[100],

                                        // ),
                                      )),
                                  Positioned(
                                      top: 10.r,
                                      left: 10.r,
                                      child: Container(
                                        width: 50.w,
                                        height: 50.h,
                                        decoration: BoxDecoration(
                                            color: HexColor("#1C3C58"),
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 4,
                                                  color: Colors.black
                                                      .withOpacity(.5))
                                            ]),
                                        child: const Icon(
                                            Icons.calculate_outlined,
                                            color: Colors.white),
                                      )),
                                  Positioned(
                                    top: 65,
                                    left: 5.r,
                                    child: Container(
                                      width: 140.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Calculate Shipment Ammount",
                                            style:
                                                TextStyle(color: Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 95.r,
                                    left: 5.r,
                                    child: Container(
                                      width: 140.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Calculate Shipping rates instantly",
                                            style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(.5)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 95.r,
                                    right: 2.r,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_forward_rounded,
                                          size: 20,
                                          color: Colors.redAccent[100],
                                        )),
                                  )
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                                width: 5.w,
                              ),
                          itemCount: 5)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
