import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/screens/home_screen.dart';
import 'package:shopping_app/screens/profile_screen.dart';

import 'cart_screen.dart';
import 'favorite_screen.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // IndexedStack de hien thi 1 trong cac child widget, no hoat dong giong
      // stack thong thuong nhung chi hien thi 1 child tai 1 thoi diem xac dinh
      // thong qua thuoc tinh index
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButton: SafeArea(
        child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.qr_code, 
              size: 20,
              color: Colors.white,
            ),
          backgroundColor: Color(0xFFDB3022),
          shape: CircleBorder(), //Bo hinh tron
        ),
      ),
      // Dieu huong cho Floating Button vao giua thanh Navigation Button Bar
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: [
            CupertinoIcons.home,
            CupertinoIcons.cart,
            CupertinoIcons.heart,
            CupertinoIcons.profile_circled
          ],
          activeIndex: pageIndex, //Chi muc index cua page dang duoc chon de quyet dinh hien thi
          onTap: (index) { //ham callback duoc goi khi nguoi dung nhan vao icon
            setState(() {
              pageIndex = index;
            });
          },
          inactiveColor: Colors.black.withOpacity(0.5), //Mau bieu tuong khong duoc chon
          gapLocation: GapLocation.center, //xac dinh vi tri khoảng trong
          notchSmoothness: NotchSmoothness.softEdge, //kieu notch duoc su dung cho thanh dieu huong de dieu chinho muot
          leftCornerRadius: 10, // Ban kinh bo goc ben trai cua thanh dieu huong
          iconSize: 25,
          rightCornerRadius: 10, //ban kinh bo goc ben phai thanh dieu huong
          elevation: 0, //hieu uong do bong,
          activeColor: Color(0xFFDB3022), //Mau bieu tuong dang duoc chon
      ),
    );
  }
}
