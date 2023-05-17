import 'package:flutter/material.dart';
import 'package:perfect_volume_control/perfect_volume_control.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            Text('Sửa thông tin cá nhân',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 50,
            ),
            Divider(),
            Text('Sửa và xem các bài báo đã lưu',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 50,
            ),
            Divider(),
            Text('Âm lượng',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 50,
            ),
            Container(
                child: Column(
                  children: [
                    Text("Current Volumen: ${(currentvol * 100).round()}"),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(80)),
                      child: Container(
                        child: SliderTheme(
                          data: SliderThemeData(
                              trackHeight: 80,
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
            Text('Font chữ',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 50,
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                      boxShadow: [new BoxShadow(color: Colors.black38, offset: new Offset(0.0, 2.0), blurRadius: 10)]),
                  child: new Slider(
                    value: currentsize,
                    activeColor: Colors.white,
                    inactiveColor: Colors.white,
                    onChanged: (double s) {
                      setState(() {
                        currentsize = s;
                      });
                    },
                    divisions: 10,
                    min: 0.0,
                    max: 10.0,
                  ),
                ),
                Text("Hello World", style: TextStyle(fontSize: 10 * currentsize)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}