import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ImageSliderWidget extends StatefulWidget {
  @override
  _ImageSliderWidgetState createState() => _ImageSliderWidgetState();
}

class _ImageSliderWidgetState extends State<ImageSliderWidget> {
  final List<String> imageList = [
    // 'https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg',
    'https://mir-s3-cdn-cf.behance.net/project_modules/disp/9712f755419393.598348610af1a.jpg',
    'https://image.shutterstock.com/image-vector/summer-sale-background-layout-banners-260nw-678851590.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKPtzkK3eDixuwyll1I31DT87pvaFYFO7m2A&usqp=CAU',
    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7bb49d2a-8588-41e7-9081-342339bfb37d/ddl95sj-4f2dc038-52f4-4369-8ce2-977c63d427eb.jpg/v1/fill/w_1024,h_284,q_75,strp/men_s_fashion__banner_by_asimcarnage_ddl95sj-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvN2JiNDlkMmEtODU4OC00MWU3LTkwODEtMzQyMzM5YmZiMzdkXC9kZGw5NXNqLTRmMmRjMDM4LTUyZjQtNDM2OS04Y2UyLTk3N2M2M2Q0MjdlYi5qcGciLCJoZWlnaHQiOiI8PTI4NCIsIndpZHRoIjoiPD0xMDI0In1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLndhdGVybWFyayJdLCJ3bWsiOnsicGF0aCI6Ilwvd21cLzdiYjQ5ZDJhLTg1ODgtNDFlNy05MDgxLTM0MjMzOWJmYjM3ZFwvYXNpbWNhcm5hZ2UtNC5wbmciLCJvcGFjaXR5Ijo5NSwicHJvcG9ydGlvbnMiOjAuNDUsImdyYXZpdHkiOiJjZW50ZXIifX0.DCoGZTgMsW6qc5qpH4Sab1IULCOru15O1DMqLbw7hJc',
  ];

  var _currentPos = 0;
  double anWidth = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.95;
    var paginatorWidth = width / imageList.length - (imageList.length * 3);

    return Container(
      width: width,
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
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black38,
                BlendMode.overlay,
              ),
              child: GFCarousel(
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
                        child:
                            Image.network(e, fit: BoxFit.fill, width: 1000.0),
                      ),
                    )
                    .toList(),
                onPageChanged: (index) {
                  setState(() {
                    _currentPos = index;
                    anWidth = paginatorWidth;
                  });
                },
              ),
            ),
            Positioned(
              bottom: 8,
              child: Container(
                height: 10,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.map((url) {
                    int index = imageList.indexOf(url);
                    return Stack(
                      children: [
                        Container(
                          width: paginatorWidth,
                          height: 3.0,
                          margin: const EdgeInsets.symmetric(horizontal: 3.0),
                          decoration: BoxDecoration(
                            // shape: BoxShape.rectangle,
                            color: _currentPos > index
                                ? Color.fromRGBO(255, 255, 255, 1)
                                : Color.fromRGBO(255, 255, 255, 0.5),
                          ),
                        ),
                        if (_currentPos == index)
                          AnimatedContainer(
                            duration: Duration(
                              seconds: 5,
                            ),
                            height: 3.0,
                            width: paginatorWidth,
                            margin: const EdgeInsets.symmetric(horizontal: 3.0),
                            color: Color.fromRGBO(255, 255, 255, 1),
                          )
                      ],
                    );
                  }).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
