import 'package:flutter/material.dart';
import 'package:shopping_app/screens/cart_screen.dart';
import 'package:shopping_app/widgets/container_button_model.dart';

//Custom Buttom sheet de lua chon

class ProductDetailsPopup extends StatelessWidget {

  final isStyle = TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontSize: 18
  );

  List<Color> cols = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.amber
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only( //bo goc sheet hien thi
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
              child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Size:", style: isStyle,),
                              SizedBox(height: 20,),
                              Text("Color:", style: isStyle,),
                              SizedBox(height: 20,),
                              Text("Total:", style: isStyle,),
                              SizedBox(height: 20,),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Text("S", style: isStyle,),
                                  SizedBox(width: 30,),
                                  Text("M", style: isStyle,),
                                  SizedBox(width: 30,),
                                  Text("L", style: isStyle,),
                                  SizedBox(width: 30,),
                                  Text("XL", style: isStyle,),
                                  SizedBox(width: 30,),
                                ],
                              ),
                              SizedBox(height: 15,),
                              Container(
                                child: Row(
                                  children: [
                                    for (var i = 0; i < 4; i++)
                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 5),
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: cols[i],
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                      )
                                  ],
                                ),
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Text('-', style: isStyle,),
                                  SizedBox(width: 10,),
                                  Text('1', style: isStyle,),
                                  SizedBox(width: 10,),
                                  Text('+', style: isStyle,),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Payment', style: isStyle,),
                          Text(
                            "\$40.00",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFDB3022)
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => CartScreen()
                          ));
                        },
                        child: ContainerButtonModel(
                            itext: "Checkout",
                            containerWith: MediaQuery.of(context).size.width,
                            bgColor: Color(0xFFDB3022),
                        ),
                      )
                    ],
                  ),
              ),
            )
        );
      },
      child: ContainerButtonModel(
          containerWith: MediaQuery.of(context).size.width / 1.5,
          itext: 'Buy Now',
          bgColor: Color(0xFFDB3022),
      ),
    );
  }
}
