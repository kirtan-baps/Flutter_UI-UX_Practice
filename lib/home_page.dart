import 'dart:convert';

import 'package:flutter/material.dart';
import "colors.dart" as color;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [];

  void _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      info = json.decode(value);
      // info = jsonDecode(value);
      print("info -- $info");
    });
  }

  @override
  void initState() {
    _initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(
          top: 70,
          left: 30,
          right: 30,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                    fontSize: 30,
                    color: color.AppColor.homePageTitle,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                const SizedBox(width: 10),
                Icon(
                  Icons.calendar_month,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                const SizedBox(width: 15),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Text(
                  "Your Program",
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageSubtitle,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageDetail,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: color.AppColor.homePageTitle,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 240,
              decoration: BoxDecoration(
                // color: Colors.red,
                gradient: LinearGradient(
                  colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9)
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(80),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(10, 10),
                    blurRadius: 10,
                    color: color.AppColor.gradientSecond.withOpacity(0.2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 25,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Workout",
                      style: TextStyle(
                        fontSize: 16,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Legs Toning",
                      style: TextStyle(
                        fontSize: 25,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    Text(
                      "and Glutes Workout",
                      style: TextStyle(
                        fontSize: 25,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    Expanded(child: Container()),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              size: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "60 min",
                              style: TextStyle(
                                fontSize: 14,
                                color:
                                    color.AppColor.homePageContainerTextSmall,
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: color.AppColor.gradientFirst,
                                  blurRadius: 10,
                                  offset: const Offset(4, 8))
                            ],
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Icon(
                            Icons.play_circle_fill,
                            size: 60,
                            color: color.AppColor.homePageContainerTextSmall,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   height: 180,
            //   margin: const EdgeInsets.only(top: 5),
            //   width: MediaQuery.of(context).size.width,
            //   child: Stack(
            //     children: [
            //       Container(
            //         margin: const EdgeInsets.only(top: 30),
            //         width: MediaQuery.of(context).size.width,
            //         height: 120,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           image: const DecorationImage(
            //             // image: AssetImage("../assets/card.jpg"),
            //             image: AssetImage("assets/card.jpg"),
            //             fit: BoxFit.fill,
            //           ),
            //           boxShadow: [
            //             BoxShadow(
            //               offset: const Offset(8, 10),
            //               blurRadius: 10,
            //               color: color.AppColor.gradientSecond.withOpacity(0.3),
            //             ),
            //             BoxShadow(
            //               offset: const Offset(-1, -5),
            //               blurRadius: 10,
            //               color: color.AppColor.gradientSecond.withOpacity(0.3),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Container(
            //         height: 200,
            //         width: MediaQuery.of(context).size.width,
            //         margin: const EdgeInsets.only(
            //           right: 200,
            //           bottom: 30,
            //           left: 30,
            //         ),
            //         decoration: BoxDecoration(
            //           // color: Colors.red.withOpacity(0.3),
            //           borderRadius: BorderRadius.circular(20),
            //           image: const DecorationImage(
            //             image: AssetImage("assets/figure.png"),
            //             fit: BoxFit.fill,
            //           ),
            //         ),
            //       ),
            //       Container(
            //         width: double.maxFinite,
            //         // color: Colors.red.withOpacity(0.3),
            //         height: 100,
            //         margin: const EdgeInsets.only(left: 150, top: 50),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               "You are going GREAT",
            //               style: TextStyle(
            //                 fontSize: 18,
            //                 fontWeight: FontWeight.bold,
            //                 color: color.AppColor.homePageDetail,
            //               ),
            //             ),
            //             const SizedBox(
            //               height: 10,
            //             ),
            //             RichText(
            //               text: TextSpan(
            //                   text: "Keep it UP\n",
            //                   style: TextStyle(
            //                     fontSize: 16,
            //                     color: color.AppColor.homePagePlanColor,
            //                   ),
            //                   children: const [
            //                     TextSpan(
            //                       text: "stick to your plan",
            //                     ),
            //                   ]),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Row(
            //   children: [
            //     Text(
            //       "Area of Focus",
            //       // textAlign: TextAlign.center,
            //       style: TextStyle(
            //         fontSize: 25,
            //         fontWeight: FontWeight.w500,
            //         color: color.AppColor.homePageTitle,
            //       ),
            //     ),
            //   ],
            // ),
            Expanded(
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  // itemCount: (info.length.toDouble() / 2).toInt(),
                  itemCount: info.length.toDouble() ~/ 2,
                  itemBuilder: (context, index) {
                    int a = 2 * index;
                    int b = 2 * index + 1;
                    return Row(
                      children: [
                        Container(
                          width: 200,
                          height: 170,
                          padding: const EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                offset: const Offset(5, 5),
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.3),
                              ),
                              BoxShadow(
                                blurRadius: 3,
                                offset: const Offset(-5, -5),
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.3),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(info[a]["img"]),
                              // fit: BoxFit.fill,
                            ),
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                info[a]["title"],
                                style: TextStyle(
                                  fontSize: 20,
                                  color: color.AppColor.homePageDetail,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 170,
                          padding: const EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                offset: const Offset(5, 5),
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.3),
                              ),
                              BoxShadow(
                                blurRadius: 3,
                                offset: const Offset(-5, -5),
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.3),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(info[b]["img"]),
                              // fit: BoxFit.fill,
                            ),
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                info[b]["title"],
                                style: TextStyle(
                                  fontSize: 20,
                                  color: color.AppColor.homePageDetail,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
