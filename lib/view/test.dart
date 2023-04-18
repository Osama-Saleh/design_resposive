// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 20. sp,
              color: Colors.black,
            )),
        actions: [
          // Container(
          //   height: 50.sp,
          //   width: 50.w,
          //   clipBehavior: Clip.antiAlias,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //         fit: BoxFit.cover,
          //         image: NetworkImage(

          //         "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?")),
          //       shape: BoxShape.circle,
          //       boxShadow: [
          //         BoxShadow(blurRadius: 4, color: Colors.black.withOpacity(.5))
          //       ]),
          // )
          Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              radius: 30.sp,
              backgroundImage: const NetworkImage(
                  "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: MediaQuery.of(context).size.width,
          color: Colors.amber,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              //*=================================
              //*==========center card============
              //*=================================
              Positioned(
                child: Container(
                  height: 50.h,
                  width: 80.w,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                          height: 40.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            color: HexColor("#1C3C58"),
                            borderRadius: BorderRadius.circular(20.sp),
                          )),
                      Positioned(
                          top: 0,
                          
                          child: Image(
                            image: AssetImage("assets/images/delivery.png"),
                            height: 150.sp,
                            width: 150.sp,
                          )),
                      Positioned(
                          bottom: 55.sp,
                          child: Text(
                            "Track Your Parcel",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              //*=================================
              //*=====card of number track========
              //*=================================
              Positioned(
                top: 180.sp,
                child: Container(
                  height: 100.sp,
                  width: 200.sp,
                  decoration: BoxDecoration(
                    color: HexColor("#FFFFFF"),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3, color: Colors.black.withOpacity(.5)),
                    ],
                  ),
                  padding: EdgeInsets.all(10.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 25.sp,
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Text(
                            "Enter Track Number",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black.withOpacity(.5)),
                          )
                        ],
                      ),
                      Container(
                        height: 1.sp,
                        color: Colors.black.withOpacity(.5),
                      ),
                      Container(
                        height: 35.sp,
                        width: 200.sp,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    HexColor("#1C3C58")),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0.sp),
                                ))),
                            child: Text(
                              "Track Now",
                              style: TextStyle(fontSize: 15.sp),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 285.sp,
                left: 10.sp,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text("Our Services",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Positioned(
                top: 277.sp,
                right: 10.sp,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Positioned(
                top: 30.sp,
                child: Container(
                    height: 160.sp,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            // height: 10.sp,
                            width: 140.sp,
                            margin: EdgeInsets.all(10.sp),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.sp),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.black.withOpacity(.5))
                              ],
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: LayoutBuilder(
                              builder: (Context, Constraints) {
                                double container_H = Constraints.maxHeight;
                                double container_W = Constraints.maxWidth;
                                return Stack(
                                  children: [
                                    Positioned(
                                        right: -2.sp,
                                        top: -20.sp,
                                        child: Container(
                                          width: 50.sp,
                                          height: 50.sp,
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
                                        right: -28.sp,
                                        top: 3.sp,
                                        child: Container(
                                          height: 50.sp,
                                          width: 50.sp,
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
                                        top: 10.sp,
                                        left: 10.sp,
                                        child: Container(
                                          height: 50.sp,
                                          width: 50.sp,
                                          decoration: BoxDecoration(
                                              color: HexColor("#1C3C58"),
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 4,
                                                    color: Colors.black
                                                        .withOpacity(.5))
                                              ]),
                                          child: Icon(
                                            Icons.calculate_outlined,
                                            color: Colors.white,
                                            size: 30.sp,
                                          ),
                                        )),
                                    Positioned(
                                      top: 65.sp,
                                      left: 5.sp,
                                      child: Container(
                                        width: 140.w,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Calculate Shipment Ammount",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.sp),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 95.sp,
                                      left: 5.sp,
                                      child: Container(
                                        width: 140.w,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Calculate Shipping rates instantly",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Colors.black
                                                      .withOpacity(.5)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 98.sp,
                                      right: 1.sp,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.arrow_forward_rounded,
                                            size: 25.sp,
                                            color: Colors.redAccent[100],
                                          )),
                                    )
                                  ],
                                );
                              },
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              width: 5.sp,
                            ),
                        itemCount: 5)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
