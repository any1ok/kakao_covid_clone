import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCovid19Page(title : "KAKAO COVID19 Demo"),
    );
  }
}

class MyCovid19Page extends StatefulWidget {
  const MyCovid19Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyCovid19PageState createState() => _MyCovid19PageState();
}

class _MyCovid19PageState extends State<MyCovid19Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title : Text(widget.title)
    ),
    body: ListView(
      padding: const EdgeInsets.all(16), //padding,margin 과 같이 크기 조정할때 자주 사용하는 클래스이다.
        children: [
          Container(
            padding: const EdgeInsets.only(top:25),
            decoration: BoxDecoration( // 그냥 박스 데코
                color: Colors.grey.withOpacity(0.15),
                borderRadius: const BorderRadius.all(
                  Radius.circular(15.0), // 꼭지점이 얼마나 휘어 있는지
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //정렬
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("위기경보",
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                    SizedBox(
                      width: 10,  // 가상박스를 넣어 거리 조절 지린다~
                    ),
                    Container(
                      padding:
                      EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        )),
                      child: Text("심각",
                        style: TextStyle(color: Colors.white, fontSize: 12))
                    )
                  ],
                )
              ],
            ),
          ),
        ]
    )
    );
  }
}

