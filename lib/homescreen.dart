import 'dart:ui';

import 'package:bigheritage/colors.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'detailpage.dart';
import 'sections.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/hq.jpeg"), fit: BoxFit.cover)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
            ),
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 100,
                      child: Image(
                        image: AssetImage("assets/westernlogo.png"),
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 500,
                padding: const EdgeInsets.only(left: 16, right: 16, top: 35),
                child: Swiper(
                  //physics: const ScrollPhysics(),
                  //autoplay: true,
                  itemCount: sections.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.DEFAULT,
                  pagination: const SwiperPagination(
                    margin: EdgeInsets.only(top: 60),
                    builder: DotSwiperPaginationBuilder(
                        activeSize: 20,
                        space: 8,
                        color: primaryTextColor,
                        activeColor: secondaryTextColor),
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) => DetailPage(
                              sectionInfo: sections[index],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              const SizedBox(height: 120),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const SizedBox(height: 100),
                                      Text(
                                        sections[index].name,
                                        style: const TextStyle(
                                          //fontFamily: 'Avenir',
                                          fontSize: 32,
                                          color: Color(0xff47455f),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      // const Text(
                                      //   'Solar System',
                                      //   style: TextStyle(
                                      //     fontFamily: 'Avenir',
                                      //     fontSize: 23,
                                      //     color: primaryTextColor,
                                      //     fontWeight: FontWeight.w500,
                                      //   ),
                                      //   textAlign: TextAlign.left,
                                      // ),
                                      const SizedBox(height: 32),
                                      Row(
                                        children: const <Widget>[
                                          Text(
                                            'Know more',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 18,
                                              color: secondaryTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: secondaryTextColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 250,
                                width: 372,
                                child: Hero(
                                  tag: sections[index].position,
                                  child: ClipRRect(
                                    borderRadius:
                                        const BorderRadiusDirectional.only(
                                            topStart: Radius.circular(32),
                                            topEnd: Radius.circular(32)),
                                    child: Image(
                                        image: AssetImage(
                                            sections[index].iconImage),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Positioned(
                          //   right: 24,
                          //   bottom: 60,
                          //   child: Text(
                          //     sections[index].position.toString(),
                          //     style: TextStyle(
                          //       fontFamily: 'Avenir',
                          //       fontSize: 200,
                          //       color: Colors.amber.withOpacity(0.5),
                          //       fontWeight: FontWeight.w900,
                          //     ),
                          //     textAlign: TextAlign.left,
                          //   ),
                          // ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
