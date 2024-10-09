import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/product_details_popup.dart';

class ProductScreen extends StatelessWidget {

  List<String> images = [
    'images/image1.jpg',
    'images/image2.jpg',
    'images/image3.jpg',
    'images/image4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Overview",
          style: TextStyle(
            fontWeight: FontWeight.w700
        ),
        ),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
                padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 450,
                    width: MediaQuery.of(context).size.width,
                    // FanCarouselImageSlider su dung thu vien ngoai de hien thi
                    // Slider chi tiet san pham
                    child: FanCarouselImageSlider(
                        sliderHeight: 430, //Chieu cao cua anh
                        autoPlay: true, // Tu don chuyen anh Slide
                        imagesLink: images, // Link anh hien thi tren Slide
                        isAssets: true //Anh hien thi tuw thu muc assets thi de true
                    ),
                  ),
                  // Ten san pham va gia
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30,),
                          Text(
                            'Warm Zipper',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w900,
                                fontSize: 20
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Hooded Jacket",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      Text(
                          '\$3000.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xFFDB3022)
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  // Danh gia sao su dung thu vien raring_bar
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 25,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Cool, windy weather is on its way. Send him out the door in"
                          "a jacket he wants to war. Warm Zipper Hooded Jacket.",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  // Icon Cart va nut an lua chon size, color and quantity
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Icon add Product in Cart
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0x1F989797),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.shopping_cart,
                            color: Color(0xFFDB3022),
                          ),
                        ),
                      ),
                      ProductDetailsPopup() //Nut mua san pham
                    ],
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
