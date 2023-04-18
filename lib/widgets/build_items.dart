import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class BuidItems extends StatelessWidget {
  const BuidItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.h,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.only(top: 2.h, bottom: 2.h, left: 2.h, right: 2.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(blurRadius: 5, color: Colors.black.withOpacity(.5))
          ]),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 40.sp,
                  width: 40.sp,
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  decoration: BoxDecoration(
                      color: HexColor("#1C3C58"),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4, color: Colors.black.withOpacity(.5))
                      ]),
                  child: Icon(
                    Icons.calculate_outlined,
                    color: Colors.white,
                    size: 25.sp,
                  ),
                ),
                // Spacer(),
                Expanded(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 10.h,
                      width: 10.w,
                      decoration:  BoxDecoration(
                          color: Colors.red,
                          borderRadius:const BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                          ),
                          boxShadow: [
                                BoxShadow(
                                                blurRadius: 6,
                                                color: Colors.black
                                                    .withOpacity(.5))
                              ]
                          ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 5.h,
                          // width: 10.w,
                          
                          decoration:  BoxDecoration(
                              color: Colors.amber[800],
                              
                              borderRadius:const BorderRadius.only(
                                // bottomRight: Radius.circular(100),
                                bottomLeft: Radius.circular(100),
                              ),
                              boxShadow: [
                                BoxShadow(
                                                blurRadius: 6,
                                                color: Colors.black
                                                    .withOpacity(.5))
                              ]
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 2.w, top: 2.h),
              child: Text(
                "Calculate Shipment Ammount",
                style: TextStyle(color: Colors.black, fontSize: 12.sp),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Calculate Shipping rates instantly",
                      style: TextStyle(
                        fontSize: 9.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.amber[800],
                          size: 20.sp,
                        )),
                  )
                ],
              ),
            ),
          ),

          // Text(
          //   "Calculate Shipping rates instantly",
          //   style: TextStyle(
          //       color: Colors.black, fontSize: 10.sp),
          // ),
        ],
      ),
    );
  }
}
