import 'package:flutter/material.dart';
import 'package:flutter_ecom_firebase/catagories_item.dart';
import 'package:flutter_ecom_firebase/product_section.dart';
import 'package:flutter_ecom_firebase/slider_section.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        // Prevent overflow by making content scrollable
        child: Column(
          children: const [
            CategoriesItem(),
            SizedBox(height: 15),
            SliderSection(),
            SizedBox(height: 15),
            ProductSection(),
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
