import 'package:flutter/material.dart';
import 'package:ttcm/screens/detail.dart';
import 'package:select_form_field/select_form_field.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  final List<Map<String, dynamic>> _items = [
    {
      'label': 'Tiếng Việt',
    },
    {
      'label': 'English',
    },
  ];
  List multipleSelected = [];
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "Thời sự",
    },
    {
      "id": 1,
      "value": false,
      "title": "Thế giới",
    },
    {
      "id": 2,
      "value": false,
      "title": "Tài chính - Kinh doanh",
    },
    {
      "id": 3,
      "value": false,
      "title": "Thể thao",
    },
    {
      "id": 4,
      "value": false,
      "title": "Khoa học",
    },
    {
      "id": 5,
      "value": false,
      "title": "Showbiz",
    },
    {
      "id": 6,
      "value": false,
      "title": "Giáo dục",
    },
    {
      "id": 7,
      "value": false,
      "title": "Pháp luật",
    },
    {
      "id": 8,
      "value": false,
      "title": "Sức khỏe - Đời sống",
    },
    {
      "id": 9,
      "value": false,
      "title": "Du lịch",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromRGBO(245, 242, 232, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30, 45, 30, 30),
                width: size.width,
                height: size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Chào mừng!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 120,
                        fontStyle: FontStyle.italic,
                        color: Color.fromRGBO(102, 102, 102, 1)
                      ),
                    ),
                    SizedBox(
                      height: 400,
                    ),
                    Text(
                      'Lựa chọn ngôn ngữ của bạn:',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 340, 0),
                      child: SelectFormField(
                        type: SelectFormFieldType.dropdown,
                        items: _items,
                        onChanged: (val) => print(val),
                        onSaved: (val) => print(val),
                        style: TextStyle(
                          fontSize: 32,
                        ),
                        decoration: InputDecoration(
                            labelText: 'Ngôn ngữ',
                            floatingLabelStyle: TextStyle(
                              color: Color.fromRGBO(27, 181, 92, 1)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // Set border for focused state
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Color.fromRGBO(27, 181, 92, 1)),
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 45, 30, 30),
                width: size.width,
                height: size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Chào mừng!',
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
                    Text('Chọn 3 chủ đề bạn quan tâm nhất:',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 100.0),
                      child: Column(
                        children: [
                          Column(
                            children: List.generate(
                              checkListItems.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: CheckboxListTile(
                                      controlAffinity: ListTileControlAffinity.leading,
                                      activeColor: Color.fromRGBO(14, 77, 164, 1),
                                      contentPadding: EdgeInsets.zero,
                                      dense: true,
                                      title: Text(
                                        checkListItems[index]["title"],
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: multipleSelected.contains(checkListItems[index]) == false ? Colors.black : Color.fromRGBO(14, 77, 164, 1),
                                          fontWeight: multipleSelected.contains(checkListItems[index]) == false ? FontWeight.normal : FontWeight.bold,
                                        ),
                                      ),
                                      value: checkListItems[index]["value"],
                                      onChanged: (value) {
                                        setState(() {
                                          checkListItems[index]["value"] = value;
                                          if (multipleSelected.contains(checkListItems[index])) {
                                            multipleSelected.remove(checkListItems[index]);
                                          } else {
                                            multipleSelected.add(checkListItems[index]);
                                          }
                                        });
                                      },
                                    ),
                                  )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 45, 30, 30),
                width: size.width,
                height: size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Chào mừng!',
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
                    Text('Hãy cho chúng tôi biết thêm về bạn:',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 340, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Năm sinh',
                          floatingLabelStyle: TextStyle(
                            color: Color.fromRGBO(27, 181, 92, 1)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          // Set border for focused state
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 3, color: Color.fromRGBO(27, 181, 92, 1)),
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 340, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Giới tính',
                            floatingLabelStyle: TextStyle(
                                color: Color.fromRGBO(27, 181, 92, 1)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // Set border for focused state
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Color.fromRGBO(27, 181, 92, 1)),
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 340, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Quốc gia',
                            floatingLabelStyle: TextStyle(
                                color: Color.fromRGBO(27, 181, 92, 1)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // Set border for focused state
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Color.fromRGBO(27, 181, 92, 1)),
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 340, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Email',
                            floatingLabelStyle: TextStyle(
                                color: Color.fromRGBO(27, 181, 92, 1)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // Set border for focused state
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Color.fromRGBO(27, 181, 92, 1)),
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 45, 30, 30),
                width: size.width,
                height: size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Chào mừng!',
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
                    Text('Tuyệt! Hãy cùng chúng tôi trải nghiệm đọc báo của riêng bạn nhé!',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 60,
            right: 30,
            child: Container(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (currentIndex < 3) {
                        currentIndex++;
                        if (currentIndex < 4) {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        }
                      } else {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => DetailScreen()));
                      }
                    });
                  },
                  child: Text(
                    currentIndex == 3 ? 'Trải nghiệm' : 'Tiếp theo',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromRGBO(14, 77, 164, 1)
                    ),
                  )
              ),
              padding: const EdgeInsets.all(4),
            ),
          ),
        ],
      )
    );
  }
}
