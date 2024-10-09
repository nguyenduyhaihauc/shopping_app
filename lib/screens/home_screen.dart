import 'package:flutter/material.dart';
import 'package:shopping_app/screens/product_screen.dart';

class HomeScreen extends StatelessWidget {

  List tabs = ["All", "Category", "Top", "Recommended"];

  List imageList = [
    'images/image1.jpg',
    'images/image2.jpg',
    'images/image3.jpg',
    'images/image4.jpg'
  ];

  List productTitle = [
    'Warm Zipper',
    'Knitted Wool',
    'Zipper Win',
    'Child Win'
  ];

  List price = [
    '\$300',
    '\$650',
    '\$50',
    '\$100',
  ];

  List reviews = [
    '54',
    '120',
    '542',
    '534',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // O tim kiem 
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xFFDB3022),
                            ),
                            border: InputBorder.none,
                            hintText: "Find your product",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18
                            )
                          ),
                        ),
                      ),
                      // icon Notification
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Icon(
                              Icons.notifications,
                              color: Color(0xFFDB3022)
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  // Banner Logo App
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFF0D0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('images/freed.png'),
                  ),
                  const SizedBox(height: 20,),
                  // List lua chon theo tung muc (All, Category, ...)
                  SizedBox(height: 50,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: tabs.length,
                        itemBuilder: (context, index) {
                          //FittedBox de thay doi kich thuoc ben trong sao cho phu hop voi
                          // kich thuoc co san ma van giu duoc ty le
                          return FittedBox(
                            child: Container(
                              height: 40,
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.only(left: 15, right: 15),
                              decoration: BoxDecoration(
                                color: Colors.black12.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                      tabs[index],
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                      ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                  const SizedBox(height: 20,),
                  // Danh sach san pham keo ngang
                  Container(
                    height: 180,
                    child: ListView.builder(
                        itemCount: imageList.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true, //Kiem soat khong gian cuon
                        itemBuilder: (context, index) {
                          return Container(
                            width: 300,
                            margin: EdgeInsets.only(right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start, //Truc doc
                              crossAxisAlignment: CrossAxisAlignment.start, //Truc ngang
                              children: [
                                // SizedBox kiem soat kich thuoc
                                // va bo cuc cac Widget trong giao dien
                                SizedBox(
                                  height: 180,
                                  width: 150,
                                  // Stack dung de xep chong cac Widget va kiem
                                  //soat vi tri cua tung Widget cach tuong doi
                                  child: Stack(
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context) => ProductScreen()
                                          ));
                                        },
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                              imageList[index],
                                            fit: BoxFit.cover,
                                            height: 180,
                                            width: 150,
                                          ),
                                        ),
                                      ),
                                      // Icon tym de len trn anh san pham su
                                      // dung thuoc tinh Positioned trong Stack
                                      Positioned(
                                          right: 10,
                                          top: 10,
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Center(
                                              child: Icon(
                                                  Icons.favorite,
                                                  color: Color(0xFFDB3022),
                                              ),
                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                ),
                                // Ten san pham, thong tin san pham va gia
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        productTitle[index],
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      SizedBox(
                                        width: 120,
                                        child: Text('Lorem Ipsum is simply dummy text '
                                            'of the printing and typesetting industry. ',
                                          maxLines: 7,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 22,
                                          ),
                                          Text(
                                              '(' + reviews[index] + ')'
                                          ),
                                          const SizedBox(width: 10,),
                                          Text(
                                            price[index],
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFDB3022),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                    ),
                  ),
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                      child: Text(
                          "Newest Products",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),
                      )
                  ),
                  const SizedBox(height: 30,),
                  // List danh sach san pham hien thi GridView
                  GridView.builder(
                      itemCount: productTitle.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, //so luong cot
                          childAspectRatio: 0.6, // Ty le chieu rong/chieu cao cua cac item
                        // crossAxisSpacing: 2  //khoang cach giua cac cot
                      //   mainAxisSpacing //Khoang cach giua cac hang
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 200,
                          // margin: EdgeInsets.only(top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start, //Truc doc
                            crossAxisAlignment: CrossAxisAlignment.start, //Truc ngang
                            children: [
                              // SizedBox kiem soat kich thuoc
                              // va bo cuc cac Widget trong giao dien
                              SizedBox(
                                height: 200,
                                // Stack dung de xep chong cac Widget va kiem
                                //soat vi tri cua tung Widget cach tuong doi
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => ProductScreen()
                                        ));
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          imageList[index],
                                          fit: BoxFit.cover,
                                          width: 150,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        right: 10,
                                        top: 10,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(20)
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.favorite,
                                              color: Color(0xFFDB3022),
                                            ),
                                          ),
                                        )
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                productTitle[index],
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 22,
                                  ),
                                  Text(
                                      '(' + reviews[index] + ')'
                                  ),
                                  const SizedBox(width: 10,),
                                  Text(
                                    price[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFDB3022),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );;
                      }
                  )
                ],
              ),
          )
      ),
    );
  }
}
