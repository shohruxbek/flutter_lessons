import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avtoelon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const MyHomePage(title: 'Avtoelon'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.add_circle,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.copyright,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListView.builder(
                itemCount: Cars.samples.length,
                itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(child:
                    Image.asset(Cars.samples[index].image,)),

                    Expanded(
                        child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name: "+Cars.samples[index].model, style: const TextStyle(fontSize: 16),),
                          const SizedBox(height: 4),
                          Text("Color: "+Cars.samples[index].color, style: const TextStyle(fontSize: 12),),
                          const SizedBox(height: 4),
                          Text("Cost: "+Cars.samples[index].cost.toString(), style: const TextStyle(fontSize: 12),),
                          const SizedBox(height: 4),
                          Text("Maxspeed: "+Cars.samples[index].maxspeed.toString(), style: const TextStyle(fontSize: 13),),
                        ],
                      ),
                    )

                    ),

                  ],
                ),
              );
            }),
          ),
        )
      ),
    );
  }




}

class Cars {
String model;
String image;
String color;
int cost;
int maxspeed;

static List<Cars> samples = [
  Cars( 'Nexia','assets/1.jpg', "red1", 1,230 ),
  Cars( 'Lasetti','assets/2.jpg', "red2", 1,230 ),
  Cars( 'Cobalt','assets/3.jpg', "red3", 1,230 ),
  Cars( 'Tahoe','assets/4.jpg', "red4", 1,230 ),
  Cars( 'Equinox','assets/5.jpg', "red5", 1,230 ),
];


Cars(
    this.model,
    this.image,
    this.color,
    this.cost,
    this.maxspeed
    );
}