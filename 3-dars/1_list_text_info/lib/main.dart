import 'package:flutter/material.dart';
import 'package:text_list/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qidiruv...',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const MyHomePage(title: 'Qidiruv...'),
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
        title: Text(widget.title, style: TextStyle(color: Colors.black38),),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.mic,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.autorenew,
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
                  itemCount: Dict.samples.length,
                  itemBuilder: (BuildContext context, int index){
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(something : index)));
                      },
                      child: Container(
                        //width: MediaQuery.of(context).size.width,
                        //color: Colors.red,
                        child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("🇺🇿 "+Dict.samples[index].textuz, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8, bottom: 8),
                                          child: Text("🇬🇧 "+Dict.samples[index].texten, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black54),),
                                        ),
                                        Divider(height: 3, color: Colors.black12,thickness: 2,)
                                      ],
                                    ),
                      ),
                    );


                  }),
            ),
          )
      ),
    );
  }




}

class Dict {
  String textuz;
  String texten;
  String fulltext;

  static List<Dict> samples = [
    Dict( 'Aflotun','Plato', "~ miya genius (lit.,with a brain like Plato's)"),
    Dict( 'Ahvol','Situation', "(Arabic) situation, condition,  state; health, well-being. ~lar  yaxshimi? How are things?, How are  you doing? ~(i) ruhiya (arch.)disposition, demeanor. ~ so'ra- toinquire after one's health, to ask hows.o. is doing. bu ~ this state, thissituation. bu ~da in this case, in thissituation." ),
    Dict( 'Alvon','Types', "(Arabic) types, varieties; scarlet,        crimson, bright red; red calico. qizil ~ atype of red material. yuz ~ many types,hundreds of kinds or colors; in alldifferent ways. ~-~ all kinds, all colors." ),
    Dict( 'Amal','Action', "(Arabic) action, practical work,practice; station, position; means;(math.) operation. ~ ol- to sprout. ~ qil-to follow or carry out (procedure); tohave an effect; to put under a spell.~dan qol- to be out of force. ~da inforce, in effect, in practice. to'rt ~ thefour arithmetic operations (addition,subtraction, multiplication, division).~ga min- to acquire a position. ~dantush- to lose one's position. ~ga osh- tobe put in force. ~dan foydalan- to useone's position."),
    Dict( 'Aloqa','Connection', "(Arabic) connection;relationship, tie; relation, bearing;communication. ~ ofitsericommunications officer. ~ yo'llari linesof communication. ~ vositalari meansof communication." ),
    Dict( 'Aniq','Clear', "clear, sure, exact, definite;well-known, certain. ~ fanlar hardsciences. o'tgan zamon ~ fe'li definitepast tense verb (i.e., men ~ bilaman Iknow for sure."),
    Dict('Aql', 'Mind', '(Arabic) mind, intelligence,smarts, common sense; advice. ~iraso/~ qisqa/~dan oz-/~ tishi wisdomtooth. ~ bovar qilmaydi unthinkable,unimaginable. ~ yetmaydiunimaginable; unbelievable; notcapable of understanding, slow, dull.~ga sig\'maydi unimaginable. ~ishoshdi/~ini yo\'qotdi to lose one?s. ~ini ol- to distract, to take one?smind away from everything else. ~borida while (you\'ve) still got your witsabout (you). ~ing joyidami Have youlost your mind?, Is your head okay?~ga muvofiq ravishda/~ga qarab in arational, intelligent manner. ~inggaballi! Good thinking! ~ yugurtir- toponder, to rack one\'s brains. ~i yetdi torealize, to have s.t. dawn on one; toadmit possible. ~ga to\'g\'ri keladiganreasonable; plausible. ~iga kel- tooccur to, to think of. o\'z ~ingdan qolmaDo what you think is right.'),
    Dict('Aralash', 'Mix', 'v.i. to mix together, to bemixed up together; to get involved in,to involve o.s. in, to participate in, tointerfere; to mingle or associate with.[aralashtir-, aralashtiril-]'),
    Dict('Asosla', 'Prove', 'v.t. to prove, to substantiate;to lay a foundation. [asoslan-,asoslantir-]'),
    Dict('Atom', 'Atom', ' (Russian) atom. ~ni parchalashsplitting of the atom. ~ og\'irligi atomicweight. ~ nazariyasi atomic theory.'),
    Dict('Atrof', 'Surroundings', ' (Arabic) surroundings, areaaround s.t.; all sides, all around; outeredge, sides; milieu. ~ga/da around,about.'),
    Dict('Avtomatlash', 'Automated', 'v.i. to becomeautomated. [avtomatlashtir-avtomatlashtiril-]'),
    Dict('Ayron', 'Drink', 'drink made from churningyoghurt with water. ~ boshdunderhead.'),
    Dict('Azon', 'Muslim call to prayer', '(Arabic) the Muslim call toprayer; early dawn. ~ ayt- to make thecall to prayer. ~da at the break of day.Erta (bilan) ~da at the break of day, inthe early morningazonchi coll.one whomakes the call to prayer, muezzin (s.so\'fi, muazzin).'),
    Dict('Bahramand', 'Blessed', '(Persian) blessed with,given a share of, fortunate, favored.tajribalaringizdan biz ham ~ bo\'laylikLet us also (have the good fortune to)share in your experience.'),
  ];


  Dict(
      this.textuz,
      this.texten,
      this.fulltext,
      );
}