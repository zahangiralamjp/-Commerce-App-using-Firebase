import 'package:flutter/material.dart';

class CatagoriesPage extends StatelessWidget {
  const CatagoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> catagoriespic = [
      {
        "name": "Computer",
        "icon": Icons.computer,
      },
      {
        "name": "Man Cloth",
        "icon": Icons.man,
      },
      {
        "name": "Bike",
        "icon": Icons.electric_bike,
      },
      {
        "name": "Computer",
        "icon": Icons.computer,
      },
      {
        "name": "Man Cloth",
        "icon": Icons.man,
      },
      {
        "name": "Bike",
        "icon": Icons.electric_bike,
      },
      {
        "name": "Man Cloth",
        "icon": Icons.man,
      },
      {
        "name": "Bike",
        "icon": Icons.electric_bike,
      },
      {
        "name": "Man Cloth",
        "icon": Icons.man,
      },
      {
        "name": "Bike",
        "icon": Icons.electric_bike,
      },
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Catagories',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
            TextButton(onPressed: () {}, child: const Text('View More')),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        //////
        SizedBox(
          height: 110,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: catagoriespic.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(catagoriespic[index]['icon']),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    catagoriespic[index]['name'],
                    style: const TextStyle(fontSize: 10),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 10,
              );
            },
          ),
        )
      ],
    );
  }
}
