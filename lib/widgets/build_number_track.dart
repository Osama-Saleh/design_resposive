import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class BuildNumberTrack extends StatelessWidget {
  const BuildNumberTrack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
