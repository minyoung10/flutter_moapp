// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../info/big.dart';
import '../../themepage/theme.dart';
import 'room_job.dart';

class SetRoomMission extends StatefulWidget {
  @override
  _SetRoomMissionState createState() => _SetRoomMissionState();
}

class _SetRoomMissionState extends State<SetRoomMission> {
  final FocusNode _textFieldFocus = FocusNode();
  TextEditingController _textEditingController = TextEditingController();
  bool _isTextFieldEmpty = true;
  String _enteredText = '';
  int _selectedButtonIndex = -1; //0,1,2 버튼 중에 무엇이 선택되었는지의 정보
  @override
  void initState() {
    super.initState();
    _textFieldFocus.addListener(_updateTextFieldState);
  }

  @override
  void dispose() {
    _textFieldFocus.removeListener(_updateTextFieldState);
    _textFieldFocus.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  void _updateTextFieldState() {
    setState(() {
      _enteredText = _textEditingController.text;
      _isTextFieldEmpty = _enteredText.isEmpty;
    });
  }

  void _handleKeyPress(RawKeyEvent event) {
    if (event is RawKeyDownEvent &&
        event.logicalKey == LogicalKeyboardKey.enter) {
      if (!_isTextFieldEmpty) {
        Navigator.of(context).pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: RawKeyboardListener(
          focusNode: FocusNode(),
          onKey: _handleKeyPress,
          child: Container(
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffEF597D),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          height: 4,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffFFEFF4),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          height: 4,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("어떤 공동체 인가요?",
                          style: blackw700.copyWith(
                            fontSize: 24,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "1가지만 선택할 수 있어요",
                        style: greyw500.copyWith(
                            fontSize: 16, letterSpacing: -0.5),
                      ),
                    ],
                  ),
                  SizedBox(height: 88.0),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButtonIndex = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: Size(double.infinity, 60),
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: _selectedButtonIndex == 0
                          ? Color(0xFFFFEFF4)
                          : Color(0xFFFAFAFA), // Updated colo// Updated color
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Text(
                            "🛌  동아리",
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.36,
                              color: _selectedButtonIndex == 0
                                  ? Color.fromRGBO(239, 69, 125, 1)
                                  : Color(0xFF242625),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButtonIndex = 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: Size(double.infinity, 60),
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: _selectedButtonIndex == 1
                          ? Color(0xFFFFEFF4)
                          : Color(0xFFFAFAFA), // Updated color
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Text(
                            "🧼  학회",
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.36,
                              color: _selectedButtonIndex == 1
                                  ? Color.fromRGBO(239, 69, 125, 1)
                                  : Color(0xFF242625),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButtonIndex = 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: Size(double.infinity, 60),
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: _selectedButtonIndex == 2
                          ? Color(0xFFFFEFF4)
                          : Color(0xFFFAFAFA), // Updated color
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Text(
                            "🍚  신앙 공동체",
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.36,
                              color: _selectedButtonIndex == 2
                                  ? Color.fromRGBO(239, 69, 125, 1)
                                  : Color(0xFF242625),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButtonIndex = 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: Size(double.infinity, 60),
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: _selectedButtonIndex == 3
                          ? Color(0xFFFFEFF4)
                          : Color(0xFFFAFAFA), // Updated color
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Text(
                            "🍚  공동체 리더십 훈련",
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.36,
                              color: _selectedButtonIndex == 3
                                  ? Color.fromRGBO(239, 69, 125, 1)
                                  : Color(0xFF242625),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    // 마지막
                    onPressed: _selectedButtonIndex != -1 //기본 상태가 아니면
                        ? () {
                            if (_selectedButtonIndex == 0) {
                              BigInfoProvider.mission = '🛌  동아리';
                            } else if (_selectedButtonIndex == 1) {
                              BigInfoProvider.mission = "🧼  학회";
                            } else if (_selectedButtonIndex == 2) {
                              BigInfoProvider.mission = "🍚  신앙 공동체";
                            } else if (_selectedButtonIndex == 3) {
                              BigInfoProvider.mission = "🍚  공동체 리더십 훈련";
                            }
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => SetRoomJob())));
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: Size(double.infinity, 45),
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Color(0xffEF597D),
                      disabledBackgroundColor: Colors.grey,
                    ),
                    child: Text(
                      "다음으로",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 40)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
