import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'model/category.dart';
import 'model/cuisine.dart';
import 'model/item.dart';

class Question1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Food menu', home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Cuisine> cuisineList = [
    Cuisine(title: 'Pizza', categories: [
      Category(name: 'All', itemList: [
        Item(
            id: 1,
            name: 'Margherita',
            rating: 27,
            price: 300,
            image: 'assets/images/pizzam.jpg'),
        Item(
            id: 1,
            name: 'Cheese Margherita',
            rating: 30,
            price: 210,
            image: 'assets/images/pizzaDcm.jpg'),
        Item(
            id: 2,
            name: 'Peppy panner',
            rating: 15,
            price: 120,
            image: 'assets/images/pizzapp.jpg'),
        Item(
            id: 1,
            name: 'Mexican wave',
            rating: 17,
            price: 180,
            image: 'assets/images/pizzamgw.jpg'),
        Item(
            id: 1,
            name: 'Veggie paradise',
            rating: 50,
            price: 270.0,
            image: 'assets/images/pizzavp.jpg'),
        Item(
            id: 1,
            name: 'Tandoori paneer',
            rating: 59,
            price: 300,
            image: 'assets/images/pizzaitp.jpg'),
      ]),
      Category(name: 'Margherita', itemList: [
        Item(
          id: 1,
          image: 'assets/images/pizzam.jpg',
          name: 'Margherita',
          rating: 27,
          price: 700,
        ),
        Item(
            id: 1,
            image: 'assets/images/pizzaDcm.jpg',
            name: 'Cheese Margherita',
            rating: 30,
            price: 100),
      ]),
      Category(name: 'Peppy Panner', itemList: [
        Item(
            id: 1,
            image: 'assets/images/pizzapp.jpg',
            name: 'Peppy Panner',
            rating: 15,
            price: 120)
      ]),
      Category(name: 'Mexican wave', itemList: [
        Item(
            id: 1,
            image: 'assets/images/pizzamgw.jpg',
            name: 'Mexican wave',
            rating: 17,
            price: 180)
      ]),
      Category(name: 'Tandoori paneer', itemList: [
        Item(
            id: 1,
            image: 'assets/images/pizzaitp.jpg',
            name: 'Tandoori paneer',
            rating: 59,
            price: 308)
      ]),
    ]),
    Cuisine(title: 'Burgers', categories: [
      Category(name: 'All', itemList: [
        Item(
            id: 1,
            name: 'Duluxe paneer',
            rating: 25,
            price: 50,
            image: 'assets/images/burgerdpb.png'),
        Item(
            id: 2,
            name: 'Corn & Cheese',
            rating: 30,
            price: 89,
            image: 'assets/images/burgerccb.jpeg'),
        Item(
            id: 3,
            name: 'Aloo Tikki',
            rating: 45,
            price: 50,
            image: 'assets/images/burgeratb.png'),
      ]),
      Category(name: 'Duluxe paneer', itemList: [
        Item(
            id: 1,
            name: 'Duluxe paneer',
            rating: 25,
            price: 50,
            image: 'assets/images/burgerdpb.png')
      ]),
      Category(name: 'Corn & Cheese', itemList: [
        Item(
            id: 2,
            name: 'Corn & Cheese',
            rating: 30,
            price: 85,
            image: 'assets/images/burgerccb.jpeg')
      ]),
      Category(name: 'Aloo Tikki', itemList: [
        Item(
            id: 3,
            name: 'Aloo Tikki',
            rating: 45,
            price: 120,
            image: 'assets/images/burgeratb.png')
      ]),
    ]),
    Cuisine(title: 'Sides', categories: [
      Category(name: 'All', itemList: [
        Item(
            id: 1,
            name: 'French Fries',
            rating: 20,
            price: 59,
            image: 'assets/images/fri.png'),
        Item(
            id: 2,
            name: 'Salsa Cheese Fries',
            rating: 45,
            price: 99,
            image: 'assets/images/friessc.png'),
        Item(
          id: 3,
          image: 'assets/images/hashb.jpg',
          name: 'Hash brown',
          rating: 30,
          price: 89,
        )
      ]),
      Category(name: 'Fries', itemList: [
        Item(
            id: 2,
            name: 'French Fries',
            rating: 20,
            price: 59,
            image: 'assets/images/fri.png'),
        Item(
            id: 2,
            name: 'Salsa Cheese Fries',
            rating: 45,
            price: 119,
            image: 'assets/images/friessc.png'),
      ]),
      Category(name: 'Hash brown', itemList: [
        Item(
          id: 1,
          image: 'assets/images/hashb.jpg',
          name: 'Hash brown',
          rating: 30,
          price: 89,
        )
      ])
    ]),
    Cuisine(title: 'Dessert', categories: [
      Category(name: 'All', itemList: [
        Item(
            id: 1,
            image: 'assets/images/blueberrycake.png',
            name: 'Blueberry Cake',
            rating: 30,
            price: 59),
        Item(
            id: 1,
            image: 'assets/images/chococake.png',
            name: 'Chocolate Cake',
            rating: 57,
            price: 95),
        Item(
            id: 1,
            image: 'assets/images/hotchoco.png',
            name: 'Hot Chocolate',
            rating: 32,
            price: 88),
      ]),
    ]),
    Cuisine(title: 'Beverages', categories: [
      Category(
        name: 'All',
        itemList: [
          Item(
              id: 1,
              image: 'assets/images/soft-coco.jpg',
              name: 'coca-cola',
              rating: 20,
              price: 113),
          Item(
              id: 2,
              image: 'assets/images/pp.jpg',
              name: 'Pepsi',
              rating: 42,
              price: 100),
          Item(
              id: 1,
              image: 'assets/images/hotchoco.png',
              name: 'Hot Chocolate',
              rating: 32,
              price: 88),
        ],
      )
    ])
  ];

  var selectedIndex = 0;
  var selectedCategoryIndex = 0;
  var selectedBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Text('Menu',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(
                width: 230,
              ),
              Icon(
                Icons.search,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.filter_alt_outlined,
                size: 30,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                  height: 40,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: cuisineList.length,
                    itemBuilder: (context, index) {
                      return ChoiceChip(
                        selectedColor: Colors.amber,
                        selected: index == selectedIndex,
                        label: Text(cuisineList[index].title),
                        showCheckmark: false,
                        onSelected: (value) {
                          setState(() {
                            selectedIndex = index;
                            selectedCategoryIndex = 0;
                          });
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 50,
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return TextButton(
                          isSemanticButton: true,
                          clipBehavior: Clip.none,
                          onPressed: () {
                            setState(() {
                              selectedCategoryIndex = index;
                            });
                          },
                          child: Text(
                              cuisineList[selectedIndex].categories[index].name,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey)),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                      itemCount: cuisineList[selectedIndex].categories.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  mainAxisExtent: 300,
                  crossAxisCount: 2),
              itemCount: cuisineList[selectedIndex]
                      .categories[selectedCategoryIndex]
                      .itemList
                      ?.length ??
                  0,
              itemBuilder: (context, index) {
                Item item = cuisineList[selectedIndex]
                    .categories[selectedCategoryIndex]
                    .itemList![index];

                return Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    height: 100,
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                              height: 160,
                              width: 200,
                              color: Colors.white,
                              child: Image(
                                image: AssetImage(item.image),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(item.name,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 25,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              Text('(${item.rating})',
                                  style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('   \₹${item.price}',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                              ElevatedButton(
                                clipBehavior: Clip.none,
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.amber)),
                                onPressed: () {},
                                child: Text('+',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedBar,
          onTap: (value) {
            setState(() {
              selectedBar = value;
            });
          },
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey.shade900,
          items: [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Account',
                icon: Icon(Icons.manage_accounts_outlined),
                activeIcon: Icon(Icons.manage_accounts)),
            BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(Icons.shopping_cart_outlined),
                activeIcon: Icon(Icons.shopping_cart))
          ]),
    );
  }
}
