import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DelievryTo extends StatefulWidget {
  const DelievryTo({Key? key}) : super(key: key);

  @override
  _DelievryToState createState() => _DelievryToState();
}

class _DelievryToState extends State<DelievryTo> {
  final List<String> imagesList = [
    "https://blogs.biomedcentral.com/on-medicine/wp-content/uploads/sites/6/2019/09/iStock-1131794876.t5d482e40.m800.xtDADj9SvTVFjzuNeGuNUUGY4tm5d6UGU5tkKM0s3iPk-620x342.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg",
  ];
  final List<String> titles = [
    ' Coffee ',
    ' Bread ',
    ' Gelato ',
    ' Ice Cream ',
  ];
  int _currentIndex = 0;

  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sign In',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  // enlargeCenterPage: true,
                  //scrollDirection: Axis.vertical,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _currentIndex = index;
                      },
                    );
                  },
                ),
                items: imagesList
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          margin: EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.0,
                          ),
                          elevation: 6.0,
                          shadowColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Image.network(
                                  item,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Center(
                                  child: Text(
                                    '${titles[_currentIndex]}',
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      backgroundColor: Colors.black45,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: imagesList.map((urlOfItem) {
                                    int index = imagesList.indexOf(urlOfItem);
                                    return Container(
                                      width: 10.0,
                                      height: 10.0,
                                      margin: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 2.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _currentIndex == index
                                            ? Color.fromRGBO(0, 0, 0, 0.8)
                                            : Color.fromRGBO(0, 0, 0, 0.3),
                                      ),
                                    );
                                  }).toList(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("Featured Partner")),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text("See all"))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          width: 200,
                          height: 200,
                          child: Column(
                            children: [
                              Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg",
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "The Halal Guys",
                                style:
                                    TextStyle(fontSize: 20, letterSpacing: 2),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Colarod,San Francisco"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        color: Colors.green,
                                        child: Text(
                                          "  4.6  ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                  Text("25 min"),
                                  Text("Free Delievry"),
                                ],
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          width: 200,
                          height: 200,
                          child: Column(
                            children: [
                              Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg",
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "The Halal Guys",
                                style:
                                    TextStyle(fontSize: 20, letterSpacing: 2),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Colarod,San Francisco"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        color: Colors.green,
                                        child: Text(
                                          "  4.6  ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                  Text("25 min"),
                                  Text("Free Delievry"),
                                ],
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          width: 200,
                          height: 200,
                          child: Column(
                            children: [
                              Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg",
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "The Halal Guys",
                                style:
                                    TextStyle(fontSize: 20, letterSpacing: 2),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Colarod,San Francisco"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        color: Colors.green,
                                        child: Text(
                                          "  4.6  ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                  Text("25 min"),
                                  Text("Free Delievry"),
                                ],
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 400,
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Free Delievry for 1 \n Month !",textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 30),),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("You'e to order at least \$10 for\nusing free delievry for one month. "
                            ,style: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,

                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef"
                            ),
                            fit: BoxFit.cover



                      ),
                    )),
              )
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("Best Pick")),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text("See all"))
                ],
              ),


              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          width: 200,
                          height: 200,
                          child: Column(
                            children: [
                              Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg",
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "The Halal Guys",
                                style:
                                TextStyle(fontSize: 20, letterSpacing: 2),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Colarod,San Francisco"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        color: Colors.green,
                                        child: Text(
                                          "  4.6  ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                  Text("25 min"),
                                  Text("Free Delievry"),
                                ],
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          width: 200,
                          height: 200,
                          child: Column(
                            children: [
                              Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg",
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "The Halal Guys",
                                style:
                                TextStyle(fontSize: 20, letterSpacing: 2),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Colarod,San Francisco"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        color: Colors.green,
                                        child: Text(
                                          "  4.6  ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                  Text("25 min"),
                                  Text("Free Delievry"),
                                ],
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          width: 200,
                          height: 200,
                          child: Column(
                            children: [
                              Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg",
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "The Halal Guys",
                                style:
                                TextStyle(fontSize: 20, letterSpacing: 2),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Colarod,San Francisco"),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        color: Colors.green,
                                        child: Text(
                                          "  4.6  ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                  Text("25 min"),
                                  Text("Free Delievry"),
                                ],
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("All Resturants")),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text("See all"))
                ],
              ),



              Column( children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    // enlargeCenterPage: true,
                    //scrollDirection: Axis.vertical,
                    onPageChanged: (index, reason) {
                      setState(
                            () {
                          _currentIndex = index;
                        },
                      );
                    },
                  ),
                  items: imagesList
                      .map(
                        (item) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: EdgeInsets.only(
                          top: 10.0,
                          bottom: 10.0,
                        ),
                        elevation: 6.0,
                        shadowColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Image.network(
                                item,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                              Center(
                                child: Text(
                                  '${titles[_currentIndex]}',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.black45,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: imagesList.map((urlOfItem) {
                                  int index = imagesList.indexOf(urlOfItem);
                                  return Container(
                                    width: 10.0,
                                    height: 10.0,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 2.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _currentIndex == index
                                          ? Color.fromRGBO(0, 0, 0, 0.8)
                                          : Color.fromRGBO(0, 0, 0, 0.3),
                                    ),
                                  );
                                }).toList(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                      .toList(),
                ),

              ],)


            ],


          ),
        ),
      ),
    );
  }
}
