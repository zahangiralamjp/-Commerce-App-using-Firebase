import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Recent Product',
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
          const SizedBox(
            height: 10,
          ),
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: const Text('H'),
                );
              })
        ],
      ),
    );
  }
}
