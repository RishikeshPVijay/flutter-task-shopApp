import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ImageSliderWidget extends StatelessWidget {
  final List<String> imageList = [
    // "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    'https://mir-s3-cdn-cf.behance.net/project_modules/disp/9712f755419393.598348610af1a.jpg',
    'https://image.shutterstock.com/image-vector/summer-sale-background-layout-banners-260nw-678851590.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKPtzkK3eDixuwyll1I31DT87pvaFYFO7m2A&usqp=CAU',
    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7bb49d2a-8588-41e7-9081-342339bfb37d/ddl95sj-4f2dc038-52f4-4369-8ce2-977c63d427eb.jpg/v1/fill/w_1024,h_284,q_75,strp/men_s_fashion__banner_by_asimcarnage_ddl95sj-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvN2JiNDlkMmEtODU4OC00MWU3LTkwODEtMzQyMzM5YmZiMzdkXC9kZGw5NXNqLTRmMmRjMDM4LTUyZjQtNDM2OS04Y2UyLTk3N2M2M2Q0MjdlYi5qcGciLCJoZWlnaHQiOiI8PTI4NCIsIndpZHRoIjoiPD0xMDI0In1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLndhdGVybWFyayJdLCJ3bWsiOnsicGF0aCI6Ilwvd21cLzdiYjQ5ZDJhLTg1ODgtNDFlNy05MDgxLTM0MjMzOWJmYjM3ZFwvYXNpbWNhcm5hZ2UtNC5wbmciLCJvcGFjaXR5Ijo5NSwicHJvcG9ydGlvbnMiOjAuNDUsImdyYXZpdHkiOiJjZW50ZXIifX0.DCoGZTgMsW6qc5qpH4Sab1IULCOru15O1DMqLbw7hJc',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(
        top: 10,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: <Widget>[
            GFCarousel(
              // pagination: true,
              // pagerSize: 8,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 1200),
              autoPlayCurve: Curves.easeInOut,
              viewportFraction: 1.0,
              height: 90,
              items: imageList
                  .map(
                    (e) => Container(
                      child: Image.network(e, fit: BoxFit.fill, width: 1000.0),
                    ),
                  )
                  .toList(),
            ),
            Positioned(
              bottom: 8,
              child: Container(
                // color: Colors.red,
                height: 10,
                width: MediaQuery.of(context).size.width * 0.95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.grey[200],
                        height: 3,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.grey[200],
                        height: 3,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.grey[200],
                        height: 3,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.grey[200],
                        height: 3,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
