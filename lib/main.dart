import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: SizedBox(
                width: 200,
                child: Text('금호동3가', style: TextStyle( color: Colors.black) )
            ),
            title:Text('앱제목'),
            actions: [
              SizedBox(
                width: 30,
                child: Icon(Icons.search, color: Colors.black)
              ),
              SizedBox(
                  width: 30,
                  child: Icon(Icons.menu, color: Colors.black)
              ),
              SizedBox(
                  width: 30,
                  child: Icon(Icons.add_alert, color: Colors.black)
              )
            ]
        ),
        body: Container(
          height: 130,
          child: Row(
            children: [
              Flexible(flex: 3, child: Image.asset('assets/house-1.png', width: 100, alignment: Alignment.topLeft)),
              Flexible(
                flex: 7,
                child:
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함'),
                      Text('성동구 성동동 성동읍',style: TextStyle( color: Colors.amberAccent)),
                      Text('210,000원',style: TextStyle( color: Colors.black)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite, color: Colors.black),
                          Text('12',style: TextStyle( color: Colors.black)),
                        ],
                      )
                    ],
                  ),
                ))
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(),
      )
    );
  }
}

