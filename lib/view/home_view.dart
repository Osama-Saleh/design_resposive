// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 25.h,
              color: Colors.black,
            )),
        actions: [
          // Container(
          //   height: 50.h,
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
              radius: 30.h,
              backgroundImage: const NetworkImage(
                  "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              //
              Positioned(
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
                            borderRadius: BorderRadius.circular(15.h),
                          )),
                      Positioned(
                          top: 0,
                          child: Image(
                            image: AssetImage("assets/images/delivery.png"),
                            width: 200.w,
                            height: 200.h,
                          )),
                      Positioned(
                          bottom: 70.h,
                          child: Text(
                            "Track Your Parcel",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.h,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 240.h,
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
                  padding: EdgeInsets.all(10.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 25.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Enter Track Number",
                            style: TextStyle(
                                fontSize: 18.h,
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
                                  borderRadius: BorderRadius.circular(18.0.h),
                                ))),
                            child: Text(
                              "Track Now",
                              style: TextStyle(fontSize: 15.h),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 370.h,
                left: 10.h,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text("Our Services",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.h,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Positioned(
                top: 355.h,
                right: 10.h,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 15.h,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Positioned(
                top: 410.h,
                child: Container(
                    height: 160.h,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                              // height: 10.h,
                              width: 140.w,
                              margin: EdgeInsets.all(10.r),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.h),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black.withOpacity(.5))
                                ],
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Row(
                                children: [
                                  Align(
                                    
                                  )
                                ],
                              )
                              // Stack(
                              //       children: [
                              //         Positioned(
                              //             right: -2.h,
                              //             top: -20.h,
                              //             child: Container(
                              //               width: 50.w,
                              //               height: 50.h,
                              //               decoration: BoxDecoration(
                              //                   color: Colors.redAccent[100],
                              //                   shape: BoxShape.circle,
                              //                   boxShadow: [
                              //                     BoxShadow(
                              //                         blurRadius: 6,
                              //                         color: Colors.black
                              //                             .withOpacity(.5))
                              //                   ]),
                              //               // child: CircleAvatar(
                              //               //   backgroundColor: Colors.redAccent[100],

                              //               // ),
                              //             )),
                              //         Positioned(
                              //             right: -28.h,
                              //             top: 3.h,
                              //             child: Container(
                              //               height: 50.h,
                              //               width: 50.w,
                              //               decoration: BoxDecoration(
                              //                   color: Colors.redAccent,
                              //                   shape: BoxShape.circle,
                              //                   boxShadow: [
                              //                     BoxShadow(
                              //                         blurRadius: 4,
                              //                         color: Colors.black
                              //                             .withOpacity(.5))
                              //                   ]),
                              //               // child: CircleAvatar(
                              //               //   backgroundColor: Colors.redAccent[100],

                              //               // ),
                              //             )),
                              //         Positioned(
                              //             top: 10.h,
                              //             left: 10.h,
                              //             child: Container(
                              //               height: 50.h,
                              //               width: 50.w,
                              //               decoration: BoxDecoration(
                              //                   color: HexColor("#1C3C58"),
                              //                   shape: BoxShape.circle,
                              //                   boxShadow: [
                              //                     BoxShadow(
                              //                         blurRadius: 4,
                              //                         color: Colors.black
                              //                             .withOpacity(.5))
                              //                   ]),
                              //               child: Icon(
                              //                 Icons.calculate_outlined,
                              //                 color: Colors.white,
                              //                 size: 30.h,
                              //               ),
                              //             )),
                              //         Positioned(
                              //           top: 65.h,
                              //           left: 5.h,
                              //           child: Container(
                              //             width: 140.w,
                              //             child: Column(
                              //               crossAxisAlignment:
                              //                   CrossAxisAlignment.start,
                              //               children: [
                              //                 Text(
                              //                   "Calculate Shipment Ammount",
                              //                   style: TextStyle(
                              //                       color: Colors.black,
                              //                       fontSize: 14.h),
                              //                 )
                              //               ],
                              //             ),
                              //           ),
                              //         ),
                              //         Positioned(
                              //           top: 95.h,
                              //           left: 5.h,
                              //           child: Container(
                              //             width: 140.w,
                              //             child: Column(
                              //               crossAxisAlignment:
                              //                   CrossAxisAlignment.start,
                              //               children: [
                              //                 Text(
                              //                   "Calculate Shipping rates instantly",
                              //                   style: TextStyle(
                              //                       fontSize: 14.h,
                              //                       color: Colors.black
                              //                           .withOpacity(.5)),
                              //                 )
                              //               ],
                              //             ),
                              //           ),
                              //         ),
                              //         Positioned(
                              //           top: 98.h,
                              //           right: 1.h,
                              //           child: IconButton(
                              //               onPressed: () {},
                              //               icon: Icon(
                              //                 Icons.arrow_forward_rounded,
                              //                 size: 25.h,
                              //                 color: Colors.redAccent[100],
                              //               )),
                              //         )
                              //       ],
                              //     ),
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
    );
  }
}
