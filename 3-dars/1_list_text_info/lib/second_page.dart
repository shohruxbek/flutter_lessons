import 'package:flutter/material.dart';
import 'package:text_list/main.dart';


class SecondPage extends StatefulWidget {
  final int something;
  SecondPage({required this.something});

  @override
  _SecondPageState createState() => _SecondPageState(this.something);
}

class _SecondPageState extends State<SecondPage> {
  int something;
  _SecondPageState(this.something);
  @override
  Widget build(BuildContext context) {
    var sampl = something;
    return Scaffold(
      appBar: AppBar(
        //title: Text(widget.title, style: TextStyle(color: Colors.black38),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => {
Navigator.pop(context)
          },
        ),

      ),
      body: SafeArea(

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                        //width: MediaQuery.of(context).size.width,
                        //color: Colors.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("🇺🇿 "+Dict.samples[sampl].textuz.toString()+" - "+"🇬🇧 "+Dict.samples[sampl].texten.toString(), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)
                            ),
                            Divider(height: 3, color: Colors.black12,thickness: 2,),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("🇺🇿 "+Dict.samples[sampl].fulltext, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
                            ),
                          ],
                        ),
                      ),





          )
      ),
    );
  }
}
