import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // call with dial pad
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _counter = "";

  void _incrementCounter(String i) {
    setState(() {
      if(_counter.length <=12){
        _counter+=i.toString();
      }
    });
  }
  void _deincrementCounter() {
    setState(() {
      String result = _counter.substring(0, _counter.length-1);
      _counter=result;
    });
  }
  Future<void> _makePhoneCall(String contact, bool direct) async {
    if (direct == true) {
      bool? res = await FlutterPhoneDirectCaller.callNumber(contact);
    } else {
      String telScheme = 'tel:$contact';

      if (await canLaunch(telScheme)) {
        await launch(telScheme);
      } else {
        throw 'Could not launch $telScheme';
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  'Shohruxbek Aralov',
                  style: TextStyle(color: Colors.black87, fontSize: 8.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110, bottom: 100),
                child: Text(
                  '$_counter',
                  maxLines: 13,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.black, fontSize: 35.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 20, right: 20, bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: MaterialButton(
                          onPressed: () {_incrementCounter("1");},
                          color: Colors.white30,
                          textColor: Colors.white,
                          child: Column(
                            children: const [
                              Text(
                                '1',
                                style: TextStyle(color: Colors.black, fontSize: 28),
                              ),
                              Text(
                                '',
                                style: TextStyle(color: Colors.black26, fontSize: 8),
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                    ),
                    Expanded(
                        child: MaterialButton(
                          onPressed: () {_incrementCounter("2");},
                          color: Colors.white30,
                          textColor: Colors.white,
                          child: Column(
                            children: const [
                              Text(
                                '2',
                                style: TextStyle(color: Colors.black, fontSize: 28),
                              ),
                              Text(
                                'A B C',
                                style: TextStyle(color: Colors.black26, fontSize: 8),
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                    ),
                    Expanded(
                        child: MaterialButton(
                          onPressed: () {_incrementCounter("3");},
                          color: Colors.white30,
                          textColor: Colors.white,
                          child: Column(
                            children: const [
                              Text(
                                '3',
                                style: TextStyle(color: Colors.black, fontSize: 28),
                              ),
                              Text(
                                'D E F',
                                style: TextStyle(color: Colors.black26, fontSize: 8),
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 20, right: 20, bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {_incrementCounter("4");},
                        color: Colors.white30,
                        textColor: Colors.white,
                        child: Column(
                          children: const [
                            Text(
                              '4',
                              style: TextStyle(color: Colors.black, fontSize: 28),
                            ),
                            Text(
                              'G H I',
                              style: TextStyle(color: Colors.black26, fontSize: 8),
                            )
                          ],
                        ),
                        padding: EdgeInsets.all(16),
                        shape: CircleBorder(),
                      )
                    ),
                    Expanded(
                        child: MaterialButton(
                          onPressed: () {_incrementCounter("5");},
                          color: Colors.white30,
                          textColor: Colors.white,
                          child: Column(
                            children: const [
                              Text(
                                '5',
                                style: TextStyle(color: Colors.black, fontSize: 28),
                              ),
                              Text(
                                'J K L',
                                style: TextStyle(color: Colors.black26, fontSize: 8),
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                    ),
                    Expanded(
                        child: MaterialButton(
                          onPressed: () {_incrementCounter("6");},
                          color: Colors.white30,
                          textColor: Colors.white,
                          child: Column(
                            children: const [
                              Text(
                                '6',
                                style: TextStyle(color: Colors.black, fontSize: 28),
                              ),
                              Text(
                                'M N O',
                                style: TextStyle(color: Colors.black26, fontSize: 8),
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 20, right: 20, bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: MaterialButton(
                          onPressed: () {_incrementCounter("7");},
                          color: Colors.white30,
                          textColor: Colors.white,
                          child: Column(
                            children: const [
                              Text(
                                '7',
                                style: TextStyle(color: Colors.black, fontSize: 28),
                              ),
                              Text(
                                'P Q R S',
                                style: TextStyle(color: Colors.black26, fontSize: 8),
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                    ),
                    Expanded(
                        child: MaterialButton(
                          onPressed: () {_incrementCounter("8");},
                          color: Colors.white30,
                          textColor: Colors.white,
                          child: Column(
                            children: const [
                              Text(
                                '8',
                                style: TextStyle(color: Colors.black, fontSize: 28),
                              ),
                              Text(
                                'T U V',
                                style: TextStyle(color: Colors.black26, fontSize: 8),
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                    ),
                    Expanded(
                        child: MaterialButton(
                          onPressed: () {_incrementCounter("9");},
                          color: Colors.white24,
                          textColor: Colors.white,
                          child: Column(
                            children: const [
                              Text(
                                '9',
                                style: TextStyle(color: Colors.black, fontSize: 28),
                              ),
                              Text(
                                'W X Y Z',
                                style: TextStyle(color: Colors.black26, fontSize: 8),
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 20, right: 20, bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: MaterialButton(
                          onPressed: () {_incrementCounter("*");},
                          color: Colors.white30,
                          textColor: Colors.white,
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  '*',
                                  style: TextStyle(color: Colors.black, fontSize: 28),
                                ),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                    ),
                    Expanded(
                        child: MaterialButton(
                          onPressed: () {_incrementCounter("0");},
                          onLongPress: () {_incrementCounter("+");},
                          color: Colors.white30,
                          textColor: Colors.white,
                          child: Column(
                            children: const [
                              Text(
                                '0',
                                style: TextStyle(color: Colors.black, fontSize: 28),
                              ),
                              Text(
                                '+',
                                style: TextStyle(color: Colors.black26, fontSize: 8),
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                    ),
                    Expanded(
                        child: MaterialButton(
                          onPressed: () {_incrementCounter("#");},
                          color: Colors.white30,
                          textColor: Colors.white,
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  '#',
                                  style: TextStyle(color: Colors.black, fontSize: 28),
                                ),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 20, right: 20, bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Container()
                    ),
                    Expanded(
                          child: MaterialButton(
                            onPressed: ()=> {
                              if(_counter.length>2){
                                _makePhoneCall('$_counter', true)
                              }else{
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) => CupertinoAlertDialog(
                                    title: const Text('Telefon raqam yetarli emas'),
                                    content: const Text('Iltimos hech bo\'lmasa 3 ta \nraqam yozing 👿'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () => Navigator.pop(context, 'OK'),
                                        child: const Text('Tushundim'),
                                      ),
                                    ],
                                  ),
                                )
                              }
                              },
                            color: Colors.green,
                            textColor: Colors.white,
                            child: Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.call,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(16),
                            shape: CircleBorder(),
                          ),

                    ),
                    Expanded(
                        child: MaterialButton(
                          onPressed: () {
                            if(_counter.length >= 1){
                              _deincrementCounter();
                            }else{
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => CupertinoAlertDialog(
                                  title: const Text('Hech narsa qolmadi'),
                                  content: const Text('Nimani o\'\'chirmoqchi bo\'lasiz? Hayronman 🤣'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, 'OK'),
                                      child: const Text('Ha shunaqa'),
                                    ),
                                  ],
                                ),
                              );
                            }
                            },
                          textColor: Colors.black38,
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.backspace,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ),
      ),
    );
  }
}

