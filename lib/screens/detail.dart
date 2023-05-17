import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:ttcm/screens/setting.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import '../controller/news_controller.dart';
import '../model/news_model.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final _pageController = PageController();
  late TutorialCoachMark tutorialCoachMark;

  GlobalKey textToSpeech = GlobalKey();
  GlobalKey saveFavorite = GlobalKey();
  GlobalKey setting = GlobalKey();

  final FlutterTts flutterTts = FlutterTts();
  late String text;
  Future speak() async {
    await flutterTts.setLanguage('vi-VN');
    await flutterTts.setPitch(1.0);
    await flutterTts.setVolume(1.0);
    await flutterTts.speak(text);
  }

  double currentsize = 0.5;

  Future stop() async {
    flutterTts.stop();
  }

  @override
  void initState() {
    createTutorial();
    Future.delayed(Duration.zero, showTutorial);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<News> newsList = News.newsList;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color : Color.fromRGBO(245, 242, 232, 1),
        ),
        child: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          children: List.generate(10, (int index) =>
            Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/poster-${index}.png'),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              newsList[index].category.toUpperCase(),
                              style: TextStyle(
                                  color: Color.fromRGBO(136, 136, 136, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 36,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              newsList[index].newsTitle,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 80,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image : DecorationImage(
                                          image: AssetImage('assets/images/icon-${index}.png'),
                                          fit: BoxFit.fitWidth
                                      ),
                                    )
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(newsList[index].userName,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 30,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(newsList[index].time,
                                      style: TextStyle(
                                          color: Color.fromRGBO(136, 136, 136, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 30,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(newsList[index].decription,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 40,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5
                              ),
                            ),
                            SizedBox(
                              height: 90,
                            ),
                            Center(
                              child:Text("Hết",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 40,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    left: 30,
                    bottom: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          key: textToSpeech,
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            boxShadow : [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0,6),
                                  blurRadius: 4
                              )
                            ],
                            color : Color.fromRGBO(82, 164, 71, 1),
                            borderRadius : BorderRadius.all(Radius.elliptical(90, 90)),
                          ),
                          child: Center(
                            child: GestureDetector(
                              child: Image.asset('assets/images/speech.png', height: 60, width: 60,),
                              onTap: () => {
                                text = newsList[index].newsTitle + newsList[index].decription,
                                speak(),
                              },

                              onDoubleTap: () => {
                                stop(),
                              },
                            )
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          key: setting,
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              boxShadow : [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0,6),
                                    blurRadius: 4
                                )
                              ],
                              color : Color.fromRGBO(241, 241, 241, 1),
                              borderRadius : BorderRadius.all(Radius.elliptical(90, 90)),
                            ),
                            child: Center(
                              child: Image.asset('assets/images/setting.png', height: 60, width: 60,),
                            ),
                          ),
                          onTap:() => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SettingScreen(),
                            ),
                          ),
                        )
                      ],
                    )
                ),
                Positioned(
                  top: 30,
                  right: 30,
                  child: ClipOval(
                    key: saveFavorite,
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Get.put(NewsController())
                                .addToFavorite(newsList[index]);
                            var snackBar = SnackBar(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              content: Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Row(
                                    children: [
                                      Get.put(NewsController()).isInFavorite(newsList[index])
                                          ? const Icon(
                                            Icons.bookmark,
                                            color: Colors.red,
                                            size: 40,
                                          )
                                          : const Icon(
                                            Icons.bookmark_outline,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                     Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Text(
                                            Get.put(NewsController()).isInFavorite(newsList[index])
                                            ? 'Lưu trữ thành công'
                                            : "Xóa khỏi yêu thích",
                                            style: TextStyle(color: Colors.white, fontSize: 30)),
                                      ),
                                      const Spacer(),
                                      TextButton(onPressed: () => debugPrint("Undid"), child: Text("Hoàn tác", style: TextStyle(color: Colors.white, fontSize: 30),))
                                    ],
                                  )
                              ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          icon: Obx(
                                () => Get.put(NewsController())
                                .isInFavorite(newsList[index])
                                ? const Icon(
                              Icons.bookmark,
                              color: Colors.red,
                                  size: 55,
                            )
                                : const Icon(
                              Icons.bookmark_outline,
                              color: Colors.black,
                                  size: 55,
                            ),
                          ),
                        ),
                      )),
                )
              ]
            ),
          ),
        )
      )
    );
  }

  void showTutorial() {
    tutorialCoachMark.show(context: context);
  }

  void createTutorial() {
    tutorialCoachMark = TutorialCoachMark(
      targets: _createTargets(),
      colorShadow: Colors.black12,
      textSkip: "SKIP",
      paddingFocus: 10,
      opacityShadow: 0.8,
      onFinish: () {
        print("finish");
      },
      onClickTarget: (target) {
        print('onClickTarget: $target');
      },
      onClickTargetWithTapPosition: (target, tapDetails) {
        print("target: $target");
        print(
            "clicked at position local: ${tapDetails.localPosition} - global: ${tapDetails.globalPosition}");
      },
      onClickOverlay: (target) {
        print('onClickOverlay: $target');
      },
      onSkip: () {
        print("skip");
      },
    );
  }

  List<TargetFocus> _createTargets() {
    List<TargetFocus> targets = [];
    targets.add(
      TargetFocus(
        identify: "1",
        keyTarget: textToSpeech,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Bật để đọc báo thành tiếng",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
    targets.add(
      TargetFocus(
          identify: "2",
          keyTarget: setting,
          alignSkip: Alignment.topRight,
          contents: [
            TargetContent(
              align: ContentAlign.custom,
              customPosition: CustomTargetContentPosition(
                left: 250,
                bottom: 35,
              ),
              builder: (context, controller) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "Mở cài đặt",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.italic
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
    );
    targets.add(
      TargetFocus(
        identify: "3",
        keyTarget: saveFavorite,
        alignSkip: Alignment.bottomCenter,
        contents: [
          TargetContent(
            align: ContentAlign.custom,
            customPosition: CustomTargetContentPosition(
              left: 400,
              top: 35,
            ),
            builder: (context, controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Nhấn để lưu bài báo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
    return targets;
  }
}

