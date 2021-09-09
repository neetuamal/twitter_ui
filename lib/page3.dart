import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextButton(onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  fixedSize: Size.fromHeight(320),
                ),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    const Expanded(
                      flex: 8,
                      child: Text(
                        'Breaking news: United States expects to admit over 50,000 evacuated Afghans',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),

                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('Twitter-Logo.png'),
                        // maxRadius: 50,

                      ),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}