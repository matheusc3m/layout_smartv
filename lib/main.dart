import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.select): ActivateIntent(),
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var items = ["b99", "glass", "khalid", "warriors"];
  var images = [
    "https://miro.medium.com/max/7680/1*ELn2VylIgfDTb396AVS2FA.jpeg",
    "https://pbs.twimg.com/media/DwZDcEEX4AAuL5g.jpg",
    "https://ratedrnb.com/cdn/2019/03/Khalid-Talk-Video.jpg",
    "https://www.nba.com/warriors/sites/warriors/files/20190506_preview_1280_0.jpg?w=756&h=425"
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 5;
    final double itemWidth = size.width / 5;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue[900],
            Colors.blue[800],
            Colors.blue[400],
          ],
        )),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "8:32PM                 ",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                MaterialButton(
                  focusColor: Colors.blue[900],
                  onPressed: () {},
                  child: Text(
                    "FAVORITES",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                MaterialButton(
                  focusColor: Colors.blue[900],
                  onPressed: () {},
                  child: Text(
                    "SETTINGS",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Trending",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 900,
                    width: 600,
                    child: GridView.builder(
                        itemCount: items.length,
                        gridDelegate:
                            (SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          childAspectRatio: (itemWidth / itemHeight),
                        )),
                        itemBuilder: (BuildContext context, int index) {
                          return MaterialButton(
                            focusColor: Colors.blue[900],
                            focusElevation: 10,
                            onPressed: () {},
                            child: SizedBox(
                              height: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  images[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Movies",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                MaterialButton(
                  focusColor: Colors.blue[900],
                  onPressed: () {},
                  child: Text(
                    "Music",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                MaterialButton(
                  focusColor: Colors.blue[900],
                  onPressed: () {},
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                MaterialButton(
                  focusColor: Colors.blue[900],
                  onPressed: () {},
                  child: Text(
                    "Shows",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                MaterialButton(
                  focusColor: Colors.blue[900],
                  onPressed: () {},
                  child: Text(
                    "Sports",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
