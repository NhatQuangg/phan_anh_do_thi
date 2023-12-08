
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phan_anh_do_thi/screens/home/components/hom_controller.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.controllerCarouselSlider,
  });

  final HomeController controllerCarouselSlider;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider(
          items: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          options: CarouselOptions(
              height: 200,
              enlargeCenterPage: false,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              //autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 1,
              onPageChanged: (index, _) => controllerCarouselSlider.updatePageIndicator(index)
          ),
        ),
        SizedBox(height: 5),
        Obx(
              () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 2; i++)
                Container(
                  width: 15,
                  height: 3,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                      color: controllerCarouselSlider.carousalCurrentIndex.value == i ? Colors.blue : Colors.grey,
                      borderRadius: BorderRadius.circular(50)
                  ),
                )
            ],
          ),
        ),
        SizedBox(height: 5),
        Container(
          margin: EdgeInsets.only(left: 10.0),
          child: Text(
            'Dịch vụ đô thị',
            style: GoogleFonts.notoSans(
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        )
      ],
    );
  }
}
