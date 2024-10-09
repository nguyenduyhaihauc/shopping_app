import 'package:flutter/material.dart';
import 'package:shopping_app/screens/shipping_address.dart';
import 'package:shopping_app/widgets/container_button_model.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
    _type = e as int;
  });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment Method",
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
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Container(
                      width: size.width,
                      height: 55,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        border: _type == 1
                            ? Border.all(width: 1, color: Color(0xFFDB3022))
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: 1,
                                      groupValue: _type,
                                      onChanged: _handleRadio,
                                      activeColor: Color(0xFFDB3022),
                                  ),
                                  Text(
                                      'Amazon Pay',
                                      style: _type == 1
                                        ? TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                        )
                                        : TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey
                                        ),
                                  ),

                                ],
                              ),
                              Image.asset(
                                'images/amazon_pay.png',
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),

                    Container(
                      width: size.width,
                      height: 55,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          border: _type == 2
                              // Chon thi khung sex hien thi mau do
                              ? Border.all(width: 1, color: Color(0xFFDB3022))
                              // Khong thi khung se hien thi mau xam
                              : Border.all(width: 0.3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.transparent
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 2,
                                    groupValue: _type,
                                    onChanged: _handleRadio,
                                    activeColor: Color(0xFFDB3022),
                                  ),
                                  Text(
                                    'Credit Card',
                                    style: _type == 2
                                        // Neu an vao chon thi chu se hien thi dam
                                        ? TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black
                                    )
                                        // Khong thi chu hien thi mau xam
                                        : TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey
                                    ),
                                  ),

                                ],
                              ),
                              Spacer(),
                              Image.asset(
                                'images/visa.png',
                                width: 30
                              ),
                              SizedBox(width: 5,),
                              Image.asset(
                                  'images/master_cards.png',
                                  width: 30
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: size.width,
                      height: 55,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          border: _type == 3
                          // Chon thi khung sex hien thi mau do
                              ? Border.all(width: 1, color: Color(0xFFDB3022))
                          // Khong thi khung se hien thi mau xam
                              : Border.all(width: 0.3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.transparent
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 3,
                                    groupValue: _type,
                                    onChanged: _handleRadio,
                                    activeColor: Color(0xFFDB3022),
                                  ),
                                  Text(
                                    'Paypal',
                                    style: _type == 3
                                    // Neu an vao chon thi chu se hien thi dam
                                        ? TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black
                                    )
                                    // Khong thi chu hien thi mau xam
                                        : TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey
                                    ),
                                  ),

                                ],
                              ),
                              Image.asset(
                                'images/paypal.png',
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: size.width,
                      height: 55,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          border: _type == 4
                          // Chon thi khung sex hien thi mau do
                              ? Border.all(width: 1, color: Color(0xFFDB3022))
                          // Khong thi khung se hien thi mau xam
                              : Border.all(width: 0.3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.transparent
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 4,
                                    groupValue: _type,
                                    onChanged: _handleRadio,
                                    activeColor: Color(0xFFDB3022),
                                  ),
                                  Text(
                                    'Google Pay',
                                    style: _type == 4
                                    // Neu an vao chon thi chu se hien thi dam
                                        ? TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black
                                    )
                                    // Khong thi chu hien thi mau xam
                                        : TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey
                                    ),
                                  ),

                                ],
                              ),
                              Image.asset(
                                'images/gg_pay.png',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 100,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            'Sub-Total',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                            ),
                        ),
                        Text(
                          '\$1800',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping Fee',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                          ),
                        ),
                        Text(
                          '\$200',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    Divider(height: 30, color: Colors.black,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Payment',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                          ),
                        ),
                        Text(
                          '\$1500',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFDB3022)
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 50,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ShippingAddress()
                        ));
                      },
                      child: ContainerButtonModel(
                          itext: "Confirm Payment",
                        containerWith: size.width,
                        bgColor: Color(0xFFDB3022),
                      ),
                    )
                  ],
                ),
              ),
          )
      ),
    );
  }
}
