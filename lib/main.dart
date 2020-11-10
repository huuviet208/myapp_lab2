import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /// 1 - Định nghĩa phần tử thứ nhất Image section
    Widget imageSection = Image.asset(
      'images/wlop36se.jpg',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );

    /// 2 - Định nghĩa phần tử thứ hai Title section
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          ///Phần tử 2.1
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Khu du lịch sinh thái Vịnh Hạ Long',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text('Quảng Ninh, Việt Nam',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /// Phần tử 2.2
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        /// Phần tử 2.3
        Text('89'),
        ],
      ),
    );

  /// Phương thức trợ giúp tạo cột button
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  ///Khai báo màu cho phần tử thứ ba
  Color color = Theme.of(context) .primaryColor;

  ///Định nghĩa phần tử thứ ba Button secton
  Widget buttonSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ///Sử dụng phương thức để tạo 3 cột giống nhau về bố cục
        _buildButtonColumn(color, Icons.call, 'Liên hệ'),
        _buildButtonColumn(color, Icons.near_me, 'Chỉ đường'),
        _buildButtonColumn(color, Icons.share, 'Chia sẻ'),
      ],
    ),
  );

  /// Định nghĩa phần tử thứ tư Text section
  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      '- Vị trí: Quảng Ninh, Việt Nam.'
      '                                                                                          Là một vịnh thuộc bờ tây Vịnh Bắc Bộ tại khu vực biển Đông Bắc Việt Nam'
      '                                                                                                                     '
      '- Tiêu chuẩn: Thiên Nhiên: VII, VIII.'
      '                                                                                    '
      '- Diện tích: 1.553 km² bao gồm 1.969 hòn đảo lớn nhỏ'
      '                                                                '
      '- Hệ sinh thái: Rừng kín thường xanh mưa ẩm nhiệt đới, hệ sinh thái biển và ven bờ.'
      '                                                                 ',
      softWrap: true,
    ),
  );

  Widget textSection2 = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'KHU VỰC TRUNG TÂM HẠ LONG:'
      '                                                                                          '
      '- Động Thiên Cung'
      '                                                                                          '
      '- Hang Đầu Gỗ'
      '                                                                                          '
      '- Động Mê Cung'
      '                                                                                          '
      '- Hang Trống và Hang Trinh Nữ'
      '                                                                                          '
      '- Đảo Soi Sim'
      '                                                                                          '
      '- Đảo Ti Tốp'
      '                                                                                          '
      '- Hang Luồn'
      '                                                                                          '
      '- Hang Sửng Sốt'
      '                                                                                          '
      '- Bãi Cháy'
      '                                                                                          '
      '- Đảo Tuần Châu'
      '                                                                                          '
      '- Làng chài Cửa Vạn'
      '                                                                                          '
      'KHU VỰC SUNG QUANH HẠ LONG:'
      '                                                                                          '
      '- Đảo Quan Lạn'
      '                                                                                          '
      '- Đảo Ngọc Vừng'
      '                                                                                          '
      '- Đảo Mắt Rồng'
      '                                                                                          '
      '- Núi Bài Thơ'
      '                                                                                          '
      '- Bảo tàng Qaungr Ninh'
      '                                                                                          '
      '- Trung tâm giải trí Dragon Park'
      '                                                                                          '
      '- Cáp trao Nữ hoàng'
      '                                                                                          '
      '- Chùa Ba Vàng'
      '                                                                                          '
      '- Khu di tích Yên Tử'
      '                                                                                          '
      'TRẢI NGHIỆM PHẢI THỬ:'
      '                                                                                          '
      '- Chèo thuyền Kayak'
      '                                                                                          '
      '- Ngủ đêm trên du thuyền'
      '                                                                                          '
      '- Ngắm Vịnh Hạ Long từ thủy phi cơ'
      '                                                                                          '
      '- Thử sức với bộ môn leo núi'
      '                                                                                          '
      '- Khám phá những hang động tuyệt đẹp'
      '                                                                                          '
      '- Thăm các làng chài trên Vịnh'
      '                                                                                          '
      'ẨM THỰC ĐẶC SẢN HẠ LONG:'
      '                                                                                          '
      '- Xôi trắng chả mực'
      '                                                                                          '
      '- Bánh cuốn chả mực'
      '                                                                                          '
      '- Các món làm từ Ngán, Sá sùng, Sam biển'
      '                                                                                          '
      '- Nem chua, nem chạo Quảng Yên'
      '                                                                                          '
      '- Rượu nếp Hoành Bồ',
      softWrap: true,
    ),
  );
 ///----------------------------------------------------   
 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nguyễn Hữu Việt'),
        ),
        body: Column(
          children: [
            imageSection,
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

//---------------------------------------------------------

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Việt')),
//         body: Container(
//           color: Colors.blueAccent,
//           child: Row(
//             children: [
//             Icon(
//               Icons.favorite,
//               color: Colors.redAccent,
//               size: 65,
//             ),
//             Icon(
//               Icons.star,
//               color: Colors.yellowAccent,
//               size: 65,
//             )
//           ],
//          ),
//         ),
//       ),
//     );
//   }
// }

//-----------------------------------------------------------------

/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
