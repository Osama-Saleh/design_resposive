// ignore_for_file: sized_box_for_whitespace

import 'package:desing_resposive/widgets/build_card.dart';
import 'package:desing_resposive/widgets/build_items.dart';
import 'package:desing_resposive/widgets/build_number_track.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context, designSize: const Size(360, 690));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 20.sp,
              color: Colors.black,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              radius: 20.sp,
              backgroundImage: const NetworkImage(
                  "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?"),
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
              children: [
                //*===================================
                //*==========card of track============
                //*===================================
                BuildCard(),

                //*============ row Text =============
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Our Services",
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(fontSize: 15.sp, color: Colors.red),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                //*================================================
                //*============Build Items inside list=============
                //*================================================
                Container(
                  height: 30.h,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return BuidItems();
                      },
                      itemCount: 5),
                ),
              ],
            ),
        ),
      ),
    );
  }
}

