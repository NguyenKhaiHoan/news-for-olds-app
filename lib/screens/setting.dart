import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perfect_volume_control/perfect_volume_control.dart';

import '../controller/news_controller.dart';
import 'detail.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  double currentvol = 0.5;
  double currentsize = 0.5;

  @override
  void initState() {
    PerfectVolumeControl.hideUI = false; //set if system UI is hided or not on volume up/down
    Future.delayed(Duration.zero,() async {
      currentvol = await PerfectVolumeControl.getVolume();
      setState(() {
        //refresh UI
      });
    });

    PerfectVolumeControl.stream.listen((volume) {
      setState(() {
        currentvol = volume;
      });
    });
    super.initState();
  }

  final _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 45, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Cài đặt',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 120,
                      fontStyle: FontStyle.italic,
                      color: Color.fromRGBO(102, 102, 102, 1)
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                Text('Các bài báo yêu thích',style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 30,
                ),
                Obx(() => SingleChildScrollView(
                child: Wrap(
                  direction: Axis.horizontal,
                  children: [
                      if (Get.find<NewsController>()
                          .favoriteNews
                          .isNotEmpty)
                        ...Get.find<NewsController>()
                            .favoriteNews
                            .map((news) => Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(DetailScreen());
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          news.imageURL,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        )),
                    if (Get.find<NewsController>().favoriteNews.isEmpty)
                      Center(
                        child: Column(
                          children: [
                            Icon(Icons.filter_none_rounded, size: 100,),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Không có",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        )
                      )
                    ],
                  ),
                ),
              ),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                Text('Âm lượng',style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 30,
                ),
                Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Current Volumen: ${(currentvol * 100).round()}", style: TextStyle(fontSize: 30),),
                          ],
                          mainAxisAlignment: MainAxisAlignment.end,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          child: Container(
                            child: SliderTheme(
                                data: SliderThemeData(
                                    trackHeight: 50,
                                    activeTrackColor: Color.fromRGBO(14, 77, 164, 1),
                                    inactiveTrackColor: Colors.white,
                                    thumbShape: SliderComponentShape.noThumb,
                                    trackShape: RectangularSliderTrackShape(),
                                    overlayShape: RoundSliderOverlayShape(overlayRadius: 0)),
                                child: Slider(
                                  value: currentvol,
                                  onChanged: (newvol) {
                                    currentvol = newvol;
                                    PerfectVolumeControl.setVolume(newvol); //set new volume
                                    setState(() {});
                                  },
                                  min: 0,
                                  max:  1,
                                  divisions: 100,
                                )
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Text('Font chữ',style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 50,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(80)),
                  child: Container(
                    child: SliderTheme(
                        data: SliderThemeData(
                            trackHeight: 50,
                            activeTrackColor: Color.fromRGBO(14, 77, 164, 1),
                            inactiveTrackColor: Colors.white,
                            thumbShape: SliderComponentShape.noThumb,
                            trackShape: RectangularSliderTrackShape(),
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 0)),
                        child: Slider(
                          value: currentsize,
                          onChanged: (value) {
                            setState(() {
                              currentsize = value;
                            });
                          },
                          min: 0,
                          max: 10,
                          label: currentsize.round().toString(),
                          divisions: 3,
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text("A", style: TextStyle(fontSize: 2 * currentsize + 30)),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            right: 40,
            child: GestureDetector(
              child: Text(
                "Quay lại",
                style: TextStyle(
                    fontSize: 36,
                    color: Color.fromRGBO(14, 77, 164, 1)
                ),
              ),
              onTap: () => Navigator.pop(context),
            )
          )
        ],
      ),
    );
  }
}