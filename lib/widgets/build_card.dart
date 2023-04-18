import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class BuildCard extends StatelessWidget { 
  const   BuildCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 55.h,
                  width: 85.w,
                  color: Colors.white,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 35.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: HexColor("#1C3C58"),
                            borderRadius: BorderRadius.circular(20.sp)),
                      ),
                      Positioned(
                        top: -1.h,
                        child: Container(
                          height: 30.h,
                          width: 40.w,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/delivery.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 28.h,
                        child: Container(
                            child: Text(
                          "Track Your Parcel",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                          ),
                        )),
                      ),
                      Positioned(
                        bottom: 2.h,
                        child: Container(
                          height: 18.h,
                          width: 60.w,
                          padding: EdgeInsets.all(1.h),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.black.withOpacity(.5)),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    size: 5.h,
                                  ),
                                  // SizedBox(width: 1.h,),
                                  Text(
                                    "Enter Track Number",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.black.withOpacity(.5)),
                                  ),
                                ],
                              ),
                              Container(
                                height: 0.5.h,
                                margin: EdgeInsets.symmetric(horizontal: 2.w),
                                color: Colors.black.withOpacity(.5),
                              ),
                              Container(
                                height: 6.h,
                                width: 50.w,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                HexColor("#1C3C58")),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0.h),
                                        ))),
                                    child: Text(
                                      "Track Now",
                                      style: TextStyle(fontSize: 3.h),
                                    )),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
  }
}
