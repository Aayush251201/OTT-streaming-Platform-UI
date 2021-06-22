import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Page2.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List tittle = [
    "Gangs of...",
    "Conjuring 3",
    "Dil bechara",
    "Army of dead",
    "Marvel eternals"
  ];
  List subtittle = ["IMDb 8.2", "IMDb 6.4", "IMDb 6.6", "IMDb 5.6", "IMDb 9"];
  List category = ["Drama", "Horror", "Romance", "Action", "Sci-fi"];
  List category2 = ["Action, Drama", "Fantasy", "Anime"];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // MaterialApp will come once in complete project

    return Scaffold(
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/mn.PNG"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 4,
                      right: MediaQuery.of(context).size.width / 4,
                      top: MediaQuery.of(context).size.height / 6,
                      bottom: 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green[800]),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Watch now",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 650,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.6),
                      spreadRadius: 40,
                      blurRadius: 40,
                      offset: Offset(0, -30), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          //width: double.infinity,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              //border: Border.all(color: Colors.black, width: 2),
                              ),
                          child: Text(
                            "Featured",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            //textDirection: TextDirection.ltr,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width - 200),
                          child: Text(
                            "See All >",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          decoration: BoxDecoration(
                              //border: Border.all(color: Colors.black, width: 2),
                              ),
                        )
                      ],
                    ),
                    Container(
                      height: 340,
                      //decoration: BoxDecoration(border: Border.all()),
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 300,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Page2()),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    height: 200,
                                    width: MediaQuery.of(context).size.width *
                                        0.35,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/m${index + 1}.PNG"),
                                          fit: BoxFit.cover),
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 150,
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        tittle[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: 150,
                                      margin: EdgeInsets.only(left: 10, top: 5),
                                      child: Text(
                                        subtittle[index],
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[700]),
                                      ),
                                    ),
                                    Container(
                                      width: 150,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                border: Border.all(width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Text(
                                              category[index],
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 25),
                                            child: Icon(
                                                Icons.thumb_up_alt_outlined),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Divider(
                      height: 5,
                      thickness: 2,
                      color: Colors.grey,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          //width: double.infinity,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              //border: Border.all(color: Colors.black, width: 2),
                              ),
                          child: Text(
                            "Categories",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            //textDirection: TextDirection.ltr,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width - 225),
                          child: Text(
                            "See All >",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          decoration: BoxDecoration(
                              //border: Border.all(color: Colors.black, width: 2),
                              ),
                        )
                      ],
                    ),
                    Container(
                      height: 200,
                      //decoration: BoxDecoration(border: Border.all()),
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 300,
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    category2[index],
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Times New Roman",
                                        backgroundColor: Colors.green[700]),
                                    textAlign: TextAlign.center,
                                  ),
                                  margin: EdgeInsets.all(10),
                                  height: 170,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/s${index + 1}.PNG")),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            //backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movies',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Series',
            //backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
            //backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[700],
        showUnselectedLabels: true,
        iconSize: 30,
        onTap: _onItemTapped,
      ),
    );
  }
}
