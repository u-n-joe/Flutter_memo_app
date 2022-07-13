import 'package:flutter/material.dart';


// NOTE 1. main
void main() {
  // for each 문
  // List<String> students = ["a","b","c","d"];
  // for(var name in students){
  //   print(name);
  // }

  // while
  // int i = 10;
  // while(i > 0){
  //   print(i);
  //   i--;
  // }

  // 구구단
  // List<int> numbers = [1,2,3,4,5,6,7,8,9];
  // for (int f_number in numbers){
  //   for (int s_number in numbers){
  //     print("$f_number*$s_number=${f_number * s_number}");
  //   }
  // }

  // 함수
  // int sum (int x, int y){
  //   return x*y;
  // }
  //
  // void test(int x, int y){
  //   print("${x*y}");
  // }
  // print(sum(8,2));
  // test(1,2);

  // 클래스
  // class Student{
  //   int number;
  //   String name;
  //
  //   void printStudent(){
  //     print("번호 : $number, 이름:$name");
  // }

  // MaterialApp 클래스
  // 디자인을 사용하는 어플리케이션이다.
  // 플러터 앱의 기본구조

  // Scaffold 클래스

  // 어플 실행 파일
  runApp(const MyApp()); // const app build시 값이 정해져야한다. 즉 build시 MyApp함수가 실행된다.

  // List<String> test_list = ["svv","sv","ev1000"];
  // for (String i in test_list){
  //   print("값들:$i ");
  // }
}

// NOTE 2. MyApp class
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _idx = 0;
  Color color = Colors.blue;
  int count_1 = 0;
  int count_2 = 0;
  String victory_team = "";
  bool done = false;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  // stateful widget
  @override
  void initState() {
    // 어플 맨 처음 실행될때 사용되는 함수
    // TODO: implement initState
    super.initState();
    color = Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          Container(
            height: 40,
          ),
          Text("콬깍지 배드민턴 대회",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Container(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Joe",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
              Text("Brian",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))
            ],
          ),
          Container(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("$count_1점",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              Text("$count_2점",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
          Container(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    if (count_1 < 21 && done != true) {
                      setState(() {
                        count_1++;
                        if (count_1 > 20) {
                          victory_team = "1이 이김";
                          count_1 = 21;
                          done = true;
                        }
                      });
                    }
                  },
                  icon: Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    if (done != true) {
                      setState(() {
                        count_1--;
                      });
                    }
                  },
                  icon: Icon(Icons.remove)),
              IconButton(
                  onPressed: () {
                    if (count_2 < 21 && done != true) {
                      setState(() {
                        count_2++;
                        if (count_2 > 20) {
                          victory_team = "2가 이김";
                          count_2 = 21;
                          done = true;
                        }
                      });
                    }
                  },
                  icon: Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    if (done != true) {
                      setState(() {
                        count_2--;
                      });
                    }
                  },
                  icon: Icon(Icons.remove))
            ],
          ),
          Container(
            height: 50,
          ),
          Text(
            victory_team,
            style: TextStyle(fontSize: 50, color: Colors.green),
          )
        ],
      ),

      // body: Center(
      //     child: GridView.count(
      //   crossAxisCount: 3,
      //   childAspectRatio: 1,
      //   children: <Widget>[
      //     InkWell(
      //       child: Text("data"),
      //       onTap: () {
      //         print("clicked name");
      //       },
      //     ),
      //     GestureDetector(
      //       child: Text("data"),
      //       onTap: () {
      //         print("clicked name! but cant see any thing");
      //       },
      //     ),
      //     InkWell(
      //       child: Container(
      //         margin: EdgeInsets.all(16),
      //         padding: EdgeInsets.all(20),
      //         child: Text("data"),
      //         color: color,
      //       ),
      //       onTap: () {
      //         setState(() {
      //           // color = Colors.redAccent;
      //           Navigator.of(context).pop();
      //         });
      //       },
      //     ),
      //     Container(
      //       color: Colors.amberAccent,
      //       padding: EdgeInsets.all(20),
      //       child: Text("data"),
      //
      //     ),
      //     Container(
      //         margin: EdgeInsets.all(16),
      //         color: Colors.amberAccent,
      //         child: Text("data")),
      //     ListTile(
      //       title: Text("name"),
      //       trailing: Text("Joe"),
      //       onTap: () {
      //         print("joe");
      //       },
      //     ),
      //     ListTile(
      //       title: Text("name"),
      //       trailing: Text("Joe"),
      //       onTap: () {
      //         print("joe");
      //       },
      //     ),
      //     ListTile(
      //       title: Text("name"),
      //       trailing: Text("Joe"),
      //       onTap: () {
      //         print("joe");
      //       },
      //     )
      //   ],
      // )

      // ---------------------- LIST VIEW --------------------------
      // child:ListView(
      //   // scrollDirection: Axis.horizontal, // 왼쪽으로 스크롤 하는 방법
      //
      //   children: <Widget>[
      //     ListTile(
      //       title: Text("name"),
      //       trailing: Text("Joe"),
      //       onTap: (){
      //         print("joe");
      //       },
      //     )
      //   ],
      // )
      // ---------------------- ROW, COLUMN --------------------------
      // child: Row(
      //
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     Text("테스트용 텍스트 입니다."),
      //     Icon(Icons.add),
      //     Container(child: Text("컨테이터 안쪽"),color: Colors.redAccent,),// 감싸는 위젯. child를 써야함
      //     TextButton(onPressed: (){print("텍스트 버튼 눌림");}, child: Text("텍스트 입니다."))
      //   ],
      // ),
      // ),

      floatingActionButton: FloatingActionButton(
        // +버튼
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return MyHomePage(title: "this is new page!");
          }));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home!"),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: "More!"),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: "More!2")
        ],
        onTap: (index) {
          setState(() {
            _idx = index;
          });
        },
        currentIndex: _idx,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label:"홈")
      // ],
      // ),
    );
  }
}
