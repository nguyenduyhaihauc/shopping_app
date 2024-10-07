import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/screens/payment_method_screen.dart';
import 'package:shopping_app/widgets/container_button_model.dart';

class CartScreen extends StatelessWidget {

  List imageList = [
    'images/image1.jpg',
    'images/image2.jpg',
    'images/image3.jpg',
    'images/image4.jpg',
  ];

  List productTitles = [
    "Warm Zipper",
    "Knitted Wool",
    "Zipper Win",
    "Child Win"
  ];

  List prices = [
    "\$300",
    "\$600",
    "\$400",
    "\$500"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart", style: TextStyle(
          fontWeight: FontWeight.w700
        ),),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // Boc item Cart
              Container(
                height: 440,
                // color: Colors.amber,
                // List Product in Cart
                child: ListView.builder(
                    itemCount: imageList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Checkbox Item cart
                            Checkbox(
                                splashRadius: 20,
                                activeColor: Color(0xFFDB3022),
                                value: true, 
                                onChanged: (val) {}
                            ),
                            // Image Item Cart
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                  imageList[index],
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.cover,
                              ),
                            ),
                            // Name and price product
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    productTitles[index],
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18
                                    ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "Hooded Jacket",
                                  style: TextStyle(
                                    color: Colors.black26
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  prices[index],
                                  style: TextStyle(
                                    color: Color(0xFFDB3022),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900
                                  ),
                                )
                              ],
                            ),
                            // Quantity Product
                            Row(
                              children: [
                                Icon(CupertinoIcons.minus,
                                color: Colors.green,),
                                SizedBox(width: 20,),
                                Text(
                                    "1",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Icon(CupertinoIcons.plus, color: Color(0xFFDB3022),)
                              ],
                            )
                          ],
                        ),
                      );
                    }
                ),
              ),
              SizedBox(height: 40,),
              // Choose All cart product
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Slect All",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      )
                  ),
                  Checkbox(
                      checkColor: Color(0xFFDB3022),
                      splashRadius: 20,
                      value: false,
                      onChanged: (val) {}
                  )
                ],
              ),
              Divider(height: 20, thickness: 1, color: Colors.black,),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Total Payment",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      )
                  ),
                  Text(
                      "\$1800",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFDB3022)
                      )
                  )
                ],
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => PaymentMethodScreen()
                  ));
                },
                child: ContainerButtonModel(
                    itext: "Checkout",
                    bgColor: Color(0xFFDB3022),
                    containerWith: MediaQuery.of(context).size.width,
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
