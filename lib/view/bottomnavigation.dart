import 'dart:developer';

import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thiranuitasksakthi/view/projectdetail.dart';

import 'homescreen.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key})
      : super(key: key);



  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  bool circleButtonToggle = false;

  var index = 0.obs;
  List pages=[
    const Homescreen(),
    const Projectdetail(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            body:Obx(()=>pages[index.value] ),


            bottomNavigationBar: AnimatedBottomNavigationBar(
              barColor: Colors.white,
              controller: FloatingBottomBarController(initialIndex: 0),
              bottomBar: [
                BottomBarItem(
                  icon: const Icon(Icons.home, color: Color(0xFFC3C3C3),),
                  iconSelected: const Icon(Icons.home,color: Color(0xFF9096FF),

                      ),
                  dotColor: Colors.transparent,


                  onTap: (value) {
                    // setState(() {
                      index .value= value;
                    // });
                    log('Home $value');
                  },
                ),
                BottomBarItem(
                  icon:
                  const Icon(Icons.photo,color: Color(0xFFC3C3C3), ),
                  dotColor: Colors.transparent,
                  iconSelected: const Icon(Icons.photo,color: Color(0xFF9096FF),
                     ),

                  onTap: (value) {
                    // setState(() {
                      index.value = value;
                    // });
                    log('Search $value');
                  },
                ),
                BottomBarItem(
                  icon:
                  const Icon(Icons.person,color: Color(0xFFC3C3C3), ),
                  dotColor: Colors.transparent,
                  iconSelected: const Icon(Icons.person,color:Color(0xFF9096FF) ,
                      ),

                  onTap: (value) {
                    // setState(() {
                    //   // index = value;
                    // });
                    log('Profile $value');
                  },
                ),
                BottomBarItem(
                  icon: const Icon(Icons.settings,color: Color(0xFFC3C3C3),
                     ),
                  dotColor: Colors.transparent,
                  iconSelected: const Icon(Icons.settings,color: Color(0xFF9096FF),
                     ),

                  onTap: (value) {
                    // setState(() {
                    //   index = value;
                    // });
                    log('Settings $value');
                  },
                ),
              ],
              bottomBarCenterModel: BottomBarCenterModel(
                centerBackgroundColor: const Color(0xFF9096FF),
                centerIcon: const FloatingCenterButton(
                  child: Icon(
                    Icons.add,
                    color: AppColors.white,
                  ),
                ),
                centerIconChild: [
                  FloatingCenterButtonChild(
                    child: const Icon(
                      Icons.home,
                      color: AppColors.white,
                    ),
                    onTap: () => log('Item1'),
                  ),
                  FloatingCenterButtonChild(
                    child: const Icon(
                      Icons.access_alarm,
                      color: AppColors.white,
                    ),
                    onTap: () => log('Item2'),
                  ),
                  FloatingCenterButtonChild(
                    child: const Icon(
                      Icons.ac_unit_outlined,
                      color: AppColors.white,
                    ),
                    onTap: () => log('Item3'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}