import 'package:flutter/material.dart';
import 'package:sliding_switch/sliding_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

enum VisualType { fiveMins, tenMins, fifteenMins }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool pumpStatus = true;
  VisualType _timer = VisualType.fiveMins;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height / 10,
          ),
          GridView.count(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              //! --> soil humidity
              GestureDetector(
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.red.withOpacity(0.1),
                                    BlendMode.dstATop),
                                image: const AssetImage(
                                  "assets/soilHumidity.png",
                                ),
                                // opacity: .2,
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: null /* add child content here */,
                          ),
                          // Container(
                          //   padding:  EdgeInsets.all(8),
                          //   color: Colors.teal[200],
                          //   child: Image.asset(
                          //     opacity: AlwaysStoppedAnimation(.2),
                          //     "assets/soilHumidity.png",
                          //     fit: BoxFit.fitWidth,
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset("assets/humidity.png")),
                                Text(
                                  "Show more . .",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          color: Colors.teal[100],
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(8),
                          child: const SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Soil Humidity",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2),
                              )))
                    ],
                  ),
                ),
                onTap: () {},
              ),
              //! --> soil temperature
              GestureDetector(
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.red.withOpacity(0.1),
                                    BlendMode.dstATop),
                                image: const AssetImage(
                                  "assets/soilTemperature.png",
                                ),
                                // opacity: .2,
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: null /* add child content here */,
                          ),
                          // Container(
                          //   padding:  EdgeInsets.all(8),
                          //   color: Colors.teal[200],
                          //   child: Image.asset(
                          //     opacity: AlwaysStoppedAnimation(.2),
                          //     "assets/soilHumidity.png",
                          //     fit: BoxFit.fitWidth,
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset("assets/temp.png")),
                                Text(
                                  "Show more . .",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          color: Colors.teal[100],
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(8),
                          child: const SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Soil Temperature",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2),
                              )))
                    ],
                  ),
                ),
                onTap: () {},
              ), //! --> soil PhLevel
              GestureDetector(
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.red.withOpacity(0.1),
                                    BlendMode.dstATop),
                                image: const AssetImage(
                                  "assets/soilPhLevel.png",
                                ),
                                // opacity: .2,
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: null /* add child content here */,
                          ),
                          // Container(
                          //   padding:  EdgeInsets.all(8),
                          //   color: Colors.teal[200],
                          //   child: Image.asset(
                          //     opacity: AlwaysStoppedAnimation(.2),
                          //     "assets/soilPhLevel.png",
                          //     fit: BoxFit.fitWidth,
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset("assets/ph.png")),
                                Text(
                                  "Show more . .",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          color: Colors.teal[100],
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(8),
                          child: const SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Soil PH Level",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2),
                              )))
                    ],
                  ),
                ),
                onTap: () {},
              ), //! --> soil NPK
              GestureDetector(
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.red.withOpacity(0.1),
                                    BlendMode.dstATop),
                                image: const AssetImage(
                                  "assets/soilNPK.png",
                                ),
                                // opacity: .2,
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: null /* add child content here */,
                          ),
                          // Container(
                          //   padding:  EdgeInsets.all(8),
                          //   color: Colors.teal[200],
                          //   child: Image.asset(
                          //     opacity: AlwaysStoppedAnimation(.2),
                          //     "assets/soilNPK.png",
                          //     fit: BoxFit.fitWidth,
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset("assets/npk.png")),
                                Text(
                                  "Show more . .",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          color: Colors.teal[100],
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(8),
                          child: const SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Soil NPK",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2),
                              )))
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
          //! END OF GRIDVIEW

          //!
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.red.withOpacity(0.1), BlendMode.dstATop),
                image: const AssetImage(
                  "assets/BG.png",
                ),
                // opacity: .2,
                fit: BoxFit.cover,
              ),
            ),
            height: height / 3,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Container(
                    color: Colors.teal.withOpacity(.1),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 12),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/pump.png"), // Icon(
                                  //   Icons.electrical_services_outlined,
                                  //   size: 32,
                                  //   color: Colors.amber,
                                  // ),
                                  const Text(
                                    "   Water Pump",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),

                              //! using dafault switch
                              SlidingSwitch(
                                contentSize: 22,
                                value: false,
                                width: 180,
                                onChanged: (bool value) {
                                  print(value);
                                },
                                height: 55,
                                animationDuration:
                                    const Duration(milliseconds: 20),
                                onTap: () {},
                                onDoubleTap: () {},
                                onSwipe: () {},
                                textOff: "OFF",
                                textOn: "ON",
                                colorOn:
                                    const Color.fromARGB(255, 60, 205, 130),
                                colorOff: const Color(0xffdc6c73),
                                background:
                                    const Color.fromARGB(255, 113, 113, 114),
                                buttonColor: const Color(0xfff7f5f7),
                                inactiveColor:
                                    const Color.fromARGB(255, 58, 60, 62),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Column(
                            children: [
                              //! MANUAL TIMER
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("assets/timer.png"),
                                      const Text(
                                        "   Manual Timer",
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),

                                  //! using dafault switch
                                  Switch(
                                    // This bool value toggles the switch.
                                    value: pumpStatus,
                                    activeColor: Colors.blue,
                                    onChanged: (bool value) {
                                      // This is called when the user toggles the switch.
                                      setState(() {
                                        pumpStatus = value;
                                      });
                                    },
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  // todo -> radiobutton 5mins
                                  Row(
                                    children: [
                                      Transform.scale(
                                        scale: 1.5,
                                        child: Radio(
                                            activeColor: Colors.green,
                                            value: VisualType.fiveMins,
                                            groupValue: _timer,
                                            onChanged: (value) {
                                              setState(() {
                                                _timer = value!;
                                              });
                                            }),
                                      ),
                                      const Text(
                                        '05 mins',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  // todo -> radiobutton 10mins

                                  Row(
                                    children: [
                                      Transform.scale(
                                        scale: 1.5,
                                        child: Radio(
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            activeColor: Colors.green,
                                            toggleable: true,
                                            value: VisualType.tenMins,
                                            groupValue: _timer,
                                            onChanged: (value) {
                                              setState(() {
                                                _timer = value!;
                                              });
                                            }),
                                      ),
                                      const Text(
                                        '10 mins',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  // todo -> radiobutton 15mins

                                  Row(
                                    children: [
                                      Transform.scale(
                                        scale: 1.5,
                                        child: Radio(
                                            activeColor: Colors.green,
                                            value: VisualType.fifteenMins,
                                            groupValue: _timer,
                                            onChanged: (value) {
                                              setState(() {
                                                _timer = value!;
                                              });
                                            }),
                                      ),
                                      const Text(
                                        '15 mins',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




//!


