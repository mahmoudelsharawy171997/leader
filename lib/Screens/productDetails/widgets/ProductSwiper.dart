import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:leader/Utilities.dart';
class ProductSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        child: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              MyLists.imgList[index],
              fit: BoxFit.fill,
            );
          },
          autoplay: true,
          itemCount: MyLists.imgList.length,
          pagination:
          SwiperPagination(builder: SwiperPagination.fraction,),


        ),
    );
  }
}