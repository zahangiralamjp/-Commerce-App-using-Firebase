import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> SliderImage = [
      "https://helloyubo.com/wp-content/uploads/2022/09/IMG-20220913-WA0040-1024x465.jpg",
      "https://helloyubo.com/wp-content/uploads/2022/09/IMG-20220913-WA0040-1024x465.jpg",
      "https://helloyubo.com/wp-content/uploads/2022/09/IMG-20220913-WA0040-1024x465.jpg",
      "https://helloyubo.com/wp-content/uploads/2022/09/IMG-20220913-WA0040-1024x465.jpg",
    ];
    return CarouselSlider.builder(
        itemCount: SliderImage.length,
        itemBuilder: (context, itemIndex, PageViewIndex) {
          return Container(
            width: double.infinity,
            //height: 80,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(SliderImage[itemIndex])),
            ),
          );
        },
        options: CarouselOptions(
          height: 180,
          // aspectRatio: 16 / 9,
          // viewportFraction: 0.8,
          initialPage: 0,
          // enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          // enlargeFactor: 0.3,
          // onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
        ));
  }
}
