import 'package:flutter/material.dart';
import 'package:ttcm/screens/setting.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final _pageController = PageController();
  late TutorialCoachMark tutorialCoachMark;

  GlobalKey textToSpeech = GlobalKey();
  GlobalKey setting = GlobalKey();
  GlobalKey next = GlobalKey();
  GlobalKey previous = GlobalKey();

  @override
  void initState() {
    createTutorial();
    Future.delayed(Duration.zero, showTutorial);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color : Color.fromRGBO(245, 242, 232, 1),
        ),
        child: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          children: List.generate(3, (int index) =>
            Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/Ảnh tiêu đề.png'),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'THỂ THAO',
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
                              'Newcastle giành vị trí thứ ba từ Man Utd',
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
                                          image: AssetImage('assets/images/image 2.png'),
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
                                    Text('Cây bút: Anna Nguyen (VnExpress)',
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
                                    Text('8 giờ trước',
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
                            Text('Thất bại 0-2 trên sân Newcastle tối 2/4 khiến Man Utd bị chính đối thủ qua mặt sau vòng 29 Ngoại hạng Anh.',
                              style: TextStyle(
                                  color: Color.fromRGBO(102, 102, 102, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 40,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.italic,
                                  height: 1
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text('Bất bại bốn trận gần nhất, trong đó có ba chiến thắng, nhưng Man Utd được dự đoán gặp nhiều khó khăn khi làm khách của Newcastle - đội thường xuyên có mặt trong nhóm đua tranh top 4 mùa này. Và 90 phút trên sân St James Park chứng tỏ điều đó. Đội chủ nhà áp đảo với 15 lần dứt điểm, trong đó có sáu pha trúng đích. Còn Man Utd chỉ dứt điểm bốn lần, với vỏn vẹn một cú sút trúng khung thành từ Antony. Newcastle chơi trên chân từ những phút đầu. Những pha lên bóng của họ đa dạng và tiềm ẩn nguy cơ từ hai cánh. Nếu dứt điểm tốt hơn, thầy trò Eddie Howe đã sớm có bàn khi hàng thủ Man Utd chơi như mơ ngủ. Điểm sáng duy nhất bên phía đội khách là thủ thành David De Gea, người vẫn trình diễn những pha cứu thua ngoạn mục. Đáng kể nhất là phút 15, khi De Gea liên tiếp cản hai pha dứt điểm cận thành của Alexander Isak rồi Joseph Willock. Cuối hiệp một, Newcastle tiếp tục bỏ lỡ một cơ hội mười mươi. Lần này, De Gea không kịp phản xạ, nhưng cú sút trái phá ở cự ly gần của Willock vọt xà gang tấc. Trái lại, những pha lên bóng của đội khách tương đối rời rạc. Erik ten Hag đẩy Scott McTominay lên cao để tận dụng phong độ của tiền vệ này, người vừa ghi bốn bàn trong hai trận khoác áo tuyển Scotland, đồng thời kéo Bruno Fernandes xuống thấp để làm bóng, chữa cháy cho sự vắng mặt của Casemiro. Tuy nhiên, ý đồ này không mấy hiệu quả bởi McTominay lẫn Wout Weghorst đều khá vụng về. Sự nhiệt tình của họ chỉ giúp Man Utd phòng ngự từ xa tốt hơn, như tình huống mở ra cơ hội để Weghorst sút chệch cột đầu trận.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 40,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5
                              ),
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
                            child: Image.asset('assets/images/image 3.png', height: 60, width: 60,),
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
                              child: Image.asset('assets/images/image 4.png', height: 60, width: 60,),
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
        keyTarget: next,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.custom,
            customPosition: CustomTargetContentPosition(
              top: 30,
              bottom: 30,
            ),
            builder: (context, controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Quẹt sang trái để sang bài tiếp theo",
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
        identify: "4",
        keyTarget: previous,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.custom,
            customPosition: CustomTargetContentPosition(
              top: 30,
              bottom: 30,
            ),
            builder: (context, controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Quẹt sang phải để đọc lại bài trước đó",
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

