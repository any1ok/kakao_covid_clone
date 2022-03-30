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
                    const Text("위기경보",
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                    const SizedBox(
                      width: 10,  // 가상박스를 넣어 거리 조절 지린다~
                    ),
                    Container(
                      padding:
                      const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        )),
                      child: const Text("심각",
                        style: TextStyle(color: Colors.white, fontSize: 12))
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("코로나바이러스감염증-19",
                    style:
                    TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    primary: Colors.white, // 터치시 색깔 변경
                    backgroundColor: Colors.blueAccent[700],
                    shape: StadiumBorder(),
                  ),
                  child: const Text("QR체크인",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("07.17 00:00 기준",
                        style: TextStyle(fontSize: 13, color: Colors.black54)),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.info_outline, color: Colors.black54),
                  ],
                ),
              ],
            ),
          ),
        ]
    )
    );
  }
}

