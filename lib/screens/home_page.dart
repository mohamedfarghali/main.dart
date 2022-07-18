import 'package:farghaly/screens/apple_screen.dart';
import 'package:farghaly/screens/test_camera.dart';
import 'package:farghaly/weather/cubit/cubit.dart';
import 'package:farghaly/weather/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../weather/weather_screen.dart';
import 'face_screen.dart';
import 'insta_screen.dart';
import 'tiwter_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit2, AppStates2>(
      listener: (context, state) {},
      builder: (context, state) {
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
        AppCubit2 cubit = AppCubit2.get(context);
        return Scaffold(
          body: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(70),
                  ),
                ),
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        "Apple",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: IconButton(
                              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                              icon: const FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Colors.green,
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const FaceBookScreen();
                                }));
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: IconButton(
                              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                              icon: const FaIcon(
                                FontAwesomeIcons.twitter,
                                color: Colors.green,
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const TwitterScreen();
                                }));
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: IconButton(
                              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                              icon: const FaIcon(
                                FontAwesomeIcons.instagram,
                                color: Colors.green,
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const InstegramScreen();
                                }));
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          hintText: "search",
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 170,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/dd.jpg",
                                          ),
                                          fit: BoxFit.fitHeight,
                                        ),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          bottomRight: Radius.circular(40),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 100,
                                      left: 40,
                                      child: InkWell(
                                        onTap: () {
                                          // CameraExampleHome()
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const CameraScreenTest(),
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          "1- Take Picture",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            textBaseline:
                                                TextBaseline.alphabetic,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 50,
                                      left: 40,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const AppleScreen(),
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          "2- Get medicine",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            textBaseline:
                                                TextBaseline.alphabetic,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const AppleScreen(),
                                      ),
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 170,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/tree.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        bottom: 0,
                                        child: Container(
                                          width: 235,
                                          decoration: const BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(40),
                                            ),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              "pets & diseseas",
                                              style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const WeatherScreen(),
                                      ),
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 170,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/1.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        bottom: 0,
                                        child: Container(
                                          width: 235,
                                          decoration: const BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(40),
                                            ),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              "Today's Weather",
                                              style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
