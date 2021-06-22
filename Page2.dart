import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  Page2({Key? key}) : super(key: key);

  List tittle = [
    "Gangs of Wasseypur 2",
    "Conjuring 3",
    "Dil bechara",
    "Army of dead",
    "Marvel eternals"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 3 / 4 * MediaQuery.of(context).size.height + 50,
                  color: Colors.blueGrey[900],
                ),
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1),
                          spreadRadius: 40,
                          blurRadius: 40,
                          offset: Offset(0, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/images/gow.PNG",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20,
                      top: 1 / 4 * MediaQuery.of(context).size.height),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height:
                                  1 / 3.5 * MediaQuery.of(context).size.height,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/m1.PNG",
                                  ),
                                  fit: BoxFit.cover
                                ),
                                boxShadow: [BoxShadow(
                                  color: Colors.green.shade900,
                                  blurRadius: 5,
                                  spreadRadius: 3
                                )]
                              ),
                            ),
                            Container(
                              height:
                                  1 / 3.5 * MediaQuery.of(context).size.height,
                              width: 1 / 2 * MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Text(
                                    "Gangs Of Wasseypur",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    padding: EdgeInsets.only(left: 5),
                                    width: 1 /
                                        2 *
                                        MediaQuery.of(context).size.width,
                                    child: Text(
                                      "150 mins",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 5),
                                          padding: EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                          child: Text(
                                            "Action/Drama",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(left: 20),
                                            child: Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                            )),
                                        Text(
                                          "8.2",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "Shahid Khan is exiled after impersonating the legendary Sultana Daku in order to rob British trains. Now outcast, Shahid becomes a worker at Ramadhir Singh's colliery, only to spur a revenge battle that passes on to generations. At the turn of the decade, Shahid's son, the philandering Sardar Khan vows to get his father's honor back, becoming the most feared man of Wasseypur.",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: 160 + 1 / 2 * MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Watch Now"),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green[800]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40, left: 150),
                      child: Icon(
                        Icons.play_circle_outline,
                        color: Colors.white,
                        size: 100,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 150),
                        child: Text(
                          "Watch trailer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.blueGrey[900],
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: double.infinity,
                    child: Text(
                      "Similar films",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 300,
                    //decoration: BoxDecoration(border: Border.all()),
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                height: 200,
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/m${index + 1}.PNG"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: Text(
                                    tittle[index],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ))
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
        currentIndex: 0,
        selectedItemColor: Colors.green[700],
        showUnselectedLabels: true,
        iconSize: 30,
        //onTap: _onItemTapped,
      ),
    );
  }
}
