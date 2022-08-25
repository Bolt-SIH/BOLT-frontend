// ignore: file_names
// ignore_for_file: sort_child_properties_last

import "../../file_exported.dart";
import "package:bolt/screens/discover/openSection.dart";
import "package:bolt/screens/discover/models.dart";
import "package:bolt/screens/discover/switchPage.dart";


class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hey User 👋"),
          actions: [
            Switch(
                onChanged: (bool istrue) {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const switchPage(),
                        ));
                  });
                },
                value: isSwitched,
                activeColor: Colors.blue,
                activeTrackColor: Colors.white,
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.white),
          ],
          backgroundColor: Colors.black,
        ),
        body: const BodyWidget());
  }
}

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  late Future<List> news;
  late Future<List> articles;
  late Future<List> books;

  @override
  void initState() {
    news = fetchnews();
    articles = fetcharticles();
    books = fetchBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Streakdash(),
        // Cats Widget
        const MainWidget(),

        Column(
          children: [
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.all(
                  5.0,
                ),
                child: Text(
                  "News",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                height: 110,
                // width: double.infinity,
                child: FutureBuilder<List>(
                  future: news,
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
                                      builder: (context) => openPage(
                                          response:
                                              snapshot.data as List<dynamic>,
                                          index: index)));
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              height: 200,
                              // width: MediaQuery.of(context).size.width * 0.9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: snapshot.data?[index]
                                                ['urlToImage'] !=
                                            null
                                        ? NetworkImage(
                                            snapshot.data?[index]['urlToImage'])
                                        : const NetworkImage(
                                            "https://media.giphy.com/media/rj12FejFUysTK/giphy.gif")),
                              ),
                              width: 100,
                            ),
                          );
                        }),
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ))
          ],
        ),

        Column(
          children: [
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: .0,
                ),
                child: Text(
                  "Articles",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                height: 110,
                // width: double.infinity,
                child: FutureBuilder<List>(
                  future: articles,
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
                                      builder: (context) => openPage(
                                            response:
                                                snapshot.data as List<dynamic>,
                                            index: index,
                                          )));
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              height: 200,
                              // width: MediaQuery.of(context).size.width * 0.9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: snapshot.data?[index]
                                                ['urlToImage'] !=
                                            null
                                        ? NetworkImage(
                                            snapshot.data?[index]['urlToImage'])
                                        : const NetworkImage(
                                            "https://media.giphy.com/media/rj12FejFUysTK/giphy.gif")),
                              ),
                              width: 100,
                            ),
                          );
                        }),
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ))
          ],
        ),

        Column(
          children: [
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: .0,
                ),
                child: Text(
                  "Books",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                height: 110,
                // width: double.infinity,
                child: FutureBuilder<List>(
                  future: books,
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
                                      builder: (context) => openPage(
                                          response:
                                              snapshot.data as List<dynamic>,
                                          index: index)));
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              height: 200,
                              // width: MediaQuery.of(context).size.width * 0.9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: snapshot.data?[index]
                                                ['largeImageURL'] !=
                                            null
                                        ? NetworkImage(snapshot.data?[index]
                                            ['largeImageURL'])
                                        : const NetworkImage(
                                            "https://media.giphy.com/media/rj12FejFUysTK/giphy.gif")),
                              ),
                              width: 100,
                            ),
                          );
                        }),
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ))
          ],
        ),
      ],
    );
  }
}

// Streak widget
// ignore: must_be_immutable
class Streakdash extends StatelessWidget {
  Streakdash({Key? key}) : super(key: key);
  int currentstreak = 4;
  // ignore: non_constant_identifier_names
  int streak_fail = 1;

  // ignore: non_constant_identifier_names
  Color? get_color(int index) {
    if (streak_fail == 1) {
      if (index < currentstreak) {
        return Colors.yellow;
      } else if (index == currentstreak) {
        return Colors.red;
      } else {
        return Colors.grey;
      }
    } else if (streak_fail == 0) {
      currentstreak = currentstreak;
      if (index < currentstreak) {
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
      margin: const EdgeInsets.all(8.0),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 30, 29, 29),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 25,
            margin: const EdgeInsets.symmetric(horizontal: 12),
            width: MediaQuery.of(context).size.width * 0.7,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                    width: 25,
                    margin: const EdgeInsets.only(right: 9),
                    decoration: BoxDecoration(
                      color: get_color(index),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  );
                }),
          ),
          const SizedBox(
            // margin: const EdgeInsets.all(10),
            width: 60,
            child: Center(
              child: Text("Streaks 🔥 140 days",
                  style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  late Future<List> cats;

  @override
  void initState() {
    cats = fetchCats();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      height: 240,
      child: FutureBuilder<List>(
        future: cats,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data?.length,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: snapshot.data?[index] != null
                                ? NetworkImage(snapshot.data?[index]['url'])
                                : const NetworkImage(
                                    "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3xlbnwwfHwwfHw%3D&w=1000&q=80"))),
                  );
                }));
          }
          return const Center(child: CircularProgressIndicator());
        }),
      ),
    );
  }
}
