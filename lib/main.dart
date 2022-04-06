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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        )),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CovidInfo(
                          infoName: "확진환자",
                          infoNumber: "1,455",
                          infoTutal: "176,500",
                          infocolor: Colors.red,
                        ),
                        Container(
                          height: 60,
                          width: 1.2,
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        CovidInfo(
                          infoName: "격리해제",
                          infoNumber: "847",
                          infoTutal: "157,960",
                          infocolor: Colors.blueAccent[700],
                        ),
                        Container(
                          height: 60,
                          width: 1.2,
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        CovidInfo(
                          infoName: "검사 중",
                          infoNumber: "9,444",
                          infoTutal: "227,636",
                          infocolor: Colors.black87,//
                        ),
                        Container(
                          height: 60,
                          width: 1.2,
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        CovidInfo(
                          infoName: "사망자",
                          infoNumber: "4",
                          infoTutal: "2,055",
                          infocolor: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 500,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "확진자 추이",
                    style:
                    TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  )
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("최근 7일"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white.withOpacity(0),
                        primary: Colors.blueAccent[700],
                        padding: EdgeInsets.symmetric(
                          vertical: 12,horizontal: 30 // 빈공간을 늘리면 자동으로 크기가 맞춰짐
                        ),
                        side: BorderSide(
                          width: 1,color: Colors.blueAccent
                        )
                      ),),
                    TextButton(
                      onPressed: () {},
                      child: Text("전체 기간"),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0),
                          primary: Colors.redAccent[700],
                          padding: EdgeInsets.symmetric(
                              vertical: 12,horizontal: 30 // 빈공간을 늘리면 자동으로 크기가 맞춰짐
                          ),
                          side: BorderSide(
                              width: 1,color: Colors.blueAccent
                          )
                      ),),
                    TextButton(
                      onPressed: () {},
                      child: Text("전체 누적"),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0),
                          primary: Colors.greenAccent[700],
                          padding: EdgeInsets.symmetric(
                              vertical: 12,horizontal: 30 // 빈공간을 늘리면 자동으로 크기가 맞춰짐
                          ),
                          side: BorderSide(
                              width: 1,color: Colors.blueAccent
                          )
                      ),),
                  ]
                )
              ],
            ),
          )
        ]
    )
    );
  }
}



class CovidInfo extends StatelessWidget {
  const CovidInfo({
    @required this.infoName,
    @required this.infoNumber,
    @required this.infoTutal,
    @required this.infocolor,
  });

  final String? infoName;
  final String? infoNumber;
  final String? infoTutal;
  final Color? infocolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      //padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$infoName",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              )),
          SizedBox(
            height: 10,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.arrow_drop_up, color: infocolor, size: 25),
              Text(
                "$infoNumber",
                style: TextStyle(
                    color: infocolor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            "$infoTutal",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
