// ignore_for_file: no_logic_in_create_state, unused_import, prefer_const_constructors, must_be_immutable

import 'package:bolt/screens/Discover/detail_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../models/discover_api.dart';

// ignore: camel_case_types
class Discover_Main extends StatefulWidget {
  const Discover_Main({Key? key}) : super(key: key);

  @override
  State<Discover_Main> createState() => _Discover_MainState();
}

// ignore: camel_case_types
class _Discover_MainState extends State<Discover_Main> {
  late Future<List> response;
  late Future<List> articles;
  late Future<List> summary;
  late Future<List> testing;
  bool isSwitched = false;

  @override
  void initState() {
    response = fetchnews();
    articles = fetcharticle();
    summary = fetchsummary();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Streakdash(),
          Carouselwidget(),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.all(10),
            height: 20,
            child: const Text(
              "News",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              height: 100,
              width: double.infinity,
              child: FutureBuilder<List>(
                  future: response,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data?.length,
                          itemBuilder: ((context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail_screen(
                                              response: snapshot.data
                                                  as List<dynamic>,
                                              index: index,
                                            )));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: snapshot.data?[index]
                                                    ['urlToImage'] !=
                                                null
                                            ? NetworkImage(snapshot.data?[index]
                                                ['urlToImage'])
                                            : const NetworkImage(
                                                "https://via.placeholder.com/150")),
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 30, 29, 29)),
                                width: 100,
                              ),
                            );
                          }));
                    }
                    return Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.white,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data?.length,
                            itemBuilder: ((context, index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 30, 29, 29)),
                                width: 100,
                              );
                            })));
                  })),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.all(10),
            height: 20,
            child: const Text(
              "Article",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              height: 100,
              width: double.infinity,
              child: FutureBuilder<List>(
                  future: articles,
                  builder: ((context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data?.length,
                          itemBuilder: ((context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail_screen(
                                              response: snapshot.data
                                                  as List<dynamic>,
                                              index: index,
                                            )));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: snapshot.data?[index]
                                                    ['urlToImage'] !=
                                                null
                                            ? NetworkImage(snapshot.data?[index]
                                                ['urlToImage'])
                                            : const NetworkImage(
                                                "https://via.placeholder.com/150")),
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 30, 29, 29)),
                                width: 100,
                              ),
                            );
                          }));
                    }
                    return Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.white,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data?.length,
                            itemBuilder: ((context, index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 30, 29, 29)),
                                width: 100,
                              );
                            })));
                  }))),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.all(10),
            height: 20,
            child: const Text(
              "Books",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              height: 150,
              width: double.infinity,
              child: FutureBuilder<List>(
                  future: summary,
                  builder: ((context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data?.length,
                          itemBuilder: ((context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Book_summary_detail(
                                              response: snapshot.data
                                                  as List<dynamic>,
                                              index: index,
                                            )));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: snapshot.data?[index]
                                                    ['urlToImage'] !=
                                                null
                                            ? NetworkImage(snapshot.data?[index]
                                                ['urlToImage'])
                                            : const NetworkImage(
                                                "https://via.placeholder.com/150")),
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromARGB(255, 30, 29, 29)),
                                width: 100,
                              ),
                            );
                          }));
                    }
                    return Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.white,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data?.length,
                            itemBuilder: ((context, index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 30, 29, 29)),
                                width: 100,
                              );
                            })));
                  }))),
          Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Made with ❤ in India",
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}

// This is the widget for Streak of the user
class Streakdash extends StatelessWidget {
  Streakdash({Key? key}) : super(key: key);
  int currentstreak = 5;
  // ignore: non_constant_identifier_names
  bool practiced = false;

  // ignore: non_constant_identifier_names
  Color? get_color(int index) {
    if (practiced == false) {
      if (index < currentstreak) {
        return Colors.yellow;
      } else if (index == currentstreak) {
        return Colors.red;
      } else {
        return Colors.grey;
      }
    } else if (practiced == true) {
      if (index < currentstreak) {
        currentstreak = currentstreak;
        return Colors.yellow;
      } else {
        return Colors.grey;
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 30, 29, 29),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 20,
            margin: const EdgeInsets.symmetric(horizontal: 12),
            width: MediaQuery.of(context).size.width * 0.6,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                    width: 20,
                    margin: const EdgeInsets.only(right: 9),
                    decoration: BoxDecoration(
                      color: get_color(index),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  );
                }),
          ),
          SizedBox(
            // margin: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.2,
            child: Center(
              child: Text("Streaks 🔥 10 days",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      decoration: TextDecoration.none)),
            ),
          )
        ],
      ),
    );
  }
}

// This is the carousel widget
class Carouselwidget extends StatefulWidget {
  const Carouselwidget({Key? key}) : super(key: key);

  @override
  State<Carouselwidget> createState() => _CrouselwidgetState();
}

class _CrouselwidgetState extends State<Carouselwidget> {
  late Future<List> avengers;

  @override
  void initState() {
    avengers = fetchcarousel();
    super.initState();
  }
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        height: 200,
        child: FutureBuilder<List>(
            future: avengers,
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                return CarouselSlider.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: ((context, index, realIndex) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        height: 300,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: snapshot.data?[index] != null
                                    ? NetworkImage(snapshot.data?[index]['url'])
                                    : const NetworkImage(
                                        "https://media.giphy.com/media/rj12FejFUysTK/giphy.gif"))),
                      );
                    }),
                    options: CarouselOptions(
                      height: 600,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ));
              }
              return Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.white,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data?.length,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 30, 29, 29)),
                          width: MediaQuery.of(context).size.width * 0.9,
                        );
                      })));
            })));
  }
}
