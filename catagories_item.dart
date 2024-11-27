import 'package:flutter/material.dart';

class CategoriesItem extends StatefulWidget {
  const CategoriesItem({super.key});

  @override
  State<CategoriesItem> createState() => _CategoriesItemState();
}

class _CategoriesItemState extends State<CategoriesItem> {
  @override
  Widget build(BuildContext context) {
    List<Map> catagories = [
      {"name": "Fashion", "icon": Icons.man},
      {"name": "Electronic", "icon": Icons.electric_bike},
      {"name": "Apple store", "icon": Icons.apple},
      {"name": "Mobile Store", "icon": Icons.mobile_friendly},
      {"name": "Baby collection", "icon": Icons.baby_changing_station},
      {"name": "Fashion", "icon": Icons.man},
      {"name": "Electronic", "icon": Icons.electric_bike},
      {"name": "Apple store", "icon": Icons.apple},
      {"name": "Mobile Store", "icon": Icons.mobile_friendly},
      {"name": "Baby collection", "icon": Icons.baby_changing_station},
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('View More'),
            ),
          ],
        ),
        SizedBox(
          height: 90,
          child: ListView.separated(
            itemCount: catagories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(.2),
                        shape: BoxShape.circle),
                    child: Icon(catagories[index]['icon']),
                  ),
                  Text(
                    catagories[index]['name'],
                    style: TextStyle(fontSize: 10),
                  )
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 10,
              );
            },
          ),
        ),
      ],
    );
  }
}




/*

import 'package:flutter/material.dart';

class CatagoriesItem extends StatelessWidget {
  const CatagoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Catagories',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            TextButton(onPressed: () {}, child: const Text('View More')),
          ],
        ),
        SizedBox(
          width: 100,
          child: ListView.builder(
            itemCount: 50,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 10,
                color: Colors.red,
              );
            },
          ),
        )
      ],
    );
  }
}

*/