// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_ui/page1.dart';
import 'package:twitter_ui/page2.dart';
import 'package:twitter_ui/page3.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //***APPLICATION BAR***//

      appBar: AppBar(
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.auto_awesome_outlined,
                  color: Colors.black,
                  size: 25.0,
                )),
          )
        ],
        automaticallyImplyLeading: true,
        leading: Container(
            margin: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('passport_photo.jpg'),
              // radius: 60,
            )),
        centerTitle: true,
        title: Image.asset('assets/Twitter-Logo.png', width: 35),
        backgroundColor: Colors.white,
        elevation: 1,
      ),

      //***BODY***//

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          height: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Column(
            children: [
              //FIRST BUTTON
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new PageOne()));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        tweetAvatar(),
                        Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                        new PageOne()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Breaking news: United States expects to admit over 50,000 evacuated Afghans',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: AssetImage('assets/download.jpg'),
                                      ),
                                    ),
                                  ),
                                  tweetButtons()
                                ],
                              ),
                            )),
                      ],
                    )),
              ),
              //SECOND BUTTON
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new PageTwo()));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        tweetAvatar(),
                        Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                        new PageTwo()));
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'Breaking news: United States expects to admit over 50,000 evacuated Afghans',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: AssetImage('assets/news.jpg'),
                                      ),
                                    ),
                                  ),
                                  tweetButtons()
                                ],
                              ),
                            )),
                      ],
                    )),
              ),
              //THIRD BUTTON
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new PageThree()));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        tweetAvatar(),
                        Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                        new PageThree()));
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'Breaking news: United States expects to admit over 50,000 evacuated Afghans',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: AssetImage('assets/istockphoto.jpg'),
                                      ),
                                    ),
                                  ),
                                  tweetButtons()
                                ],
                              ),
                            )),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),

      //***BOTTOM NAVIGATION BAR***//

      bottomNavigationBar: BottomAppBar(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.mail_outline,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ]),
      ),
    );
  }
}

//***FUNCTIONS***//

Widget tweetAvatar() {
  return Container(
    margin: const EdgeInsets.all(10.0),
    child: CircleAvatar(
      backgroundImage: AssetImage('aaj_tak.jpeg'),
    ),
  );
}

Widget tweetButtons() {
  return Container(
    margin: const EdgeInsets.only(top: 10.0, right: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        tweetIconButton(Icons.comment, '23'),
        tweetIconButton(Icons.autorenew, '23K'),
        tweetIconButton(Icons.favorite, '22K'),
        tweetIconButton(Icons.share, ''),
      ],
    ),
  );
}

Widget tweetIconButton(IconData icon, String text) {
  return Row(
    children: [
      Icon(
        icon,
        size: 20.0,
        color: Colors.grey,
      ),
      Container(
        margin: const EdgeInsets.all(6.0),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black45,
            fontSize: 14.0,
          ),
        ),
      ),
    ],
  );
}
