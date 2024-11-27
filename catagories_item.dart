import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
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
          height: 100,
          child: ListView.separated(
            itemCount: 10,
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
                  )
                ],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
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