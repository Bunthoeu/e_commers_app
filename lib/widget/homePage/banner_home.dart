import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commer_app/model/banner_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerHome extends StatefulWidget {
  @override
  State<BannerHome> createState() => _BannerHomeState();
}

class _BannerHomeState extends State<BannerHome> {
  final bannerList = BannerModel.generateBannermodel();

  final PageController pagecontroler = PageController();

  var activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                  height: 125,
                  autoPlay: true,
                  // reverse: true,
                  // enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlayAnimationDuration: Duration(milliseconds: 1500),
                  //aspectRatio: 2.0,
                  initialPage: 2,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, _) {
                    setState(() {
                      activeIndex = index;
                    });
                  }),
              itemCount: bannerList.length,
              itemBuilder: (context, index, realIndex) => Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage(bannerList[index].image),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        Positioned(
            top: 100,
            right: 150,
            left: 150,
            child: Center(
              child: _buildIndicator(),
            ))
      ],
    );
  }

  _buildIndicator() {
    return AnimatedSmoothIndicator(
        effect: WormEffect(
          dotWidth: 7.0,
          dotHeight: 7.0,
        ),
        activeIndex: activeIndex,
        count: bannerList.length);
  }
}
