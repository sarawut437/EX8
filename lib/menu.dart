import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<List<dynamic>> foodLists = [
    [
      "https://dqk1dnz21ztlg.cloudfront.net/wp-content/uploads/2017/05/17121631/shutterstock_585496844.jpg",
      "fried basil",
      55,
    ],
    [
      "https://static01.nyt.com/images/2018/07/24/dining/HK-omurice-horizontal/merlin_141075450_0113642e-e841-4dd6-b96f-742a29fdef10-articleLarge.jpg",
      "Omelette Rice",
      80,
    ],
    [
      "https://brilhodealuguel.com/wp-content/uploads/2020/07/%E0%B9%80%E0%B8%A1%E0%B8%99%E0%B8%B9%E0%B8%95%E0%B9%89%E0%B8%A1%E0%B8%A2%E0%B8%B3%E0%B8%81%E0%B8%B8%E0%B9%89%E0%B8%87-1.jpg",
      "spicy prawn soup",
      80
    ],
    [
      "https://s359.kapook.com/pagebuilder/16a89fbd-6678-4d76-a4c0-66a1f0ea30d1.jpg",
      "Spicy Seafood Salad",
      60,
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodLists.length,
      itemBuilder: (_, index) {
        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          child: Container(
            height: 150,
            width: double.infinity,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.network(
                      foodLists[index][0],
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${foodLists[index][1]}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              " ${foodLists[index][2]} ฿",
                              style: TextStyle(
                                color: Colors.blue ,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.bottomRight,
                  child: Chip(
                    backgroundColor: Colors.+,
                    label: Text(
                      "Order Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
