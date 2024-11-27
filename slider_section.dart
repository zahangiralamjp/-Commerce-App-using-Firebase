import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> sliders = [
      "https://images.vexels.com/media/users/3/194732/raw/90137aa80ed4d208bc0cda1fc224cfff-online-shopping-web-slider.jpg",
      "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/83d70974403181.5c2e97fb1f91b.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWURBBwWnPyZXsWMvsEg8SCrVJvs6gC3k627IidSo9L0kyZxK4_vPSY1WWSa0rQS9HI7Y&usqp=CAU",
    ];
    return CarouselSlider.builder(
        itemCount: sliders.length,
        itemBuilder: (context, itemIndex, pageViewIndex) {
          return Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: NetworkImage(sliders[itemIndex]))),
          );
        },
        options: CarouselOptions(
          //height: 100,
          //aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          //enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ));
  }
}
