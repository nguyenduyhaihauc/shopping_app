import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shopping_app/screens/home_screen.dart';
import 'package:shopping_app/screens/login_screen.dart';

// Man nay laf man gioi thieu ow dau de gioi thieu nhung noi dung
// quan trong cua app
class OnboardingScreen extends StatelessWidget {

  // GlobalKey cho phep truy xuat den trang thai va phuong thuc Widget bat ky
  // huu ich cho viec quan ly trang thai(tuy nhien no rat ton tai nguyen)
  // IntroductionScreenState dung de quan ly trang thai man hinh gioi thieu
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    // Cau hinh cho man hinh gioi thieu
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700
      ),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero
    );
    // IntroductionScreen(man gioi thieu) thuong dung de huong dan nguoi
    // dung ve tinh nang hoac cac thong tin quan trong
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      // cac man hinh se hien thi o man gi thieu
      pages: [
        PageViewModel(
          title: "Shop Now",
          body: "Lorem Ipsum is simply dummy text of the printing and"
              " typesetting industry. Lorem Ipsum has been the industry's.",
          image: Image.asset('images/splash1.png', width: 200,),
          decoration: pageDecoration
        ),
        PageViewModel(
            title: "Big DisCount",
            body: "Lorem Ipsum is simply dummy text of the printing and"
                " typesetting industry. Lorem Ipsum has been the industry's.",
            image: Image.asset('images/splash2.png', width: 200,),
            decoration: pageDecoration
        ),
        PageViewModel(
            title: "Free Delivery",
            body: "Lorem Ipsum is simply dummy text of the printing and"
                " typesetting industry. Lorem Ipsum has been the industry's.",
            image: Image.asset(
              'images/splash3.png',
              width: 200,
            ),
            decoration: pageDecoration,
            // Nut nhan o trang cuoi man gioi thieu
            footer: Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 50),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginScreen()
                      ));
                    },
                    child: Text(
                      "Let's Shop",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(55),
                      backgroundColor: Color(0xFFDB3022),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      )
                    ),
                ),
            )
        )
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text("Back", style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Color(0xFFDB3022)
      ),),
      next: Text("Next", style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFFDB3022)
      ),),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: Size.square(10),
        activeSize: Size(20, 10),
        activeColor: Color(0xFFDB3022),
        color: Colors.black26,
        spacing: EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
        )
      ),
    );
  }
}
