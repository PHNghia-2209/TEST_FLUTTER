import 'package:flutter/material.dart';
import 'package:flutter_application_1/history.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({super.key});
  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<PersonalScreen> {
  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Tài Khoản',
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/img/personal.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Nguyễn Trà My',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.edit, color: Colors.white),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, -15),
                        child: Container(
                          width: 140,
                          margin: const EdgeInsets.only(top: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color(0xFFE0DB40),
                          ),
                          child: const Text(
                            'Phụ huynh học sinh',
                            style: TextStyle(color: Color(0xffFFFFFF)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: const Color(0xff0067ff),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                width: 400,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: 120,
                        height: 110,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 5,
                              color: Color(0xff7d8888),
                            ),
                          ],
                          borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(10.0),
                          ),
                          border: Border.all(
                            color: const Color(0xFFD5E6ED),
                            width: 2,
                          ),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/img/avatarChildren.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        width: 250,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 5,
                              color: Color(0xff7d8888),
                            ),
                          ],
                          borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(10.0),
                          ),
                          border: Border.all(
                            color: const Color(0xFFD5E6ED),
                            width: 2,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        'Bé: ',
                                        style: TextStyle(
                                            color: Color(0xfff79757),
                                            fontSize: 24),
                                      ),
                                      Text(
                                        'Tô Gia Hưng',
                                        style: TextStyle(
                                            color: Color(0xfff79757),
                                            fontSize: 24),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Tuổi: ',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text('4', style: TextStyle(fontSize: 16)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('Lớp: ',
                                          style: TextStyle(fontSize: 16)),
                                      Text('Lá 1',
                                          style: TextStyle(fontSize: 16)),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(width: 20),
                              FaIcon(
                                FontAwesomeIcons.chevronDown,
                                size: 20,
                                color: Color(0xffc2d2d3),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 110,
                      top: 40,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 5,
                              color: Color(0xff7d8888),
                            ),
                          ],
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        padding: const EdgeInsets.all(2.0),
                        child: const FaIcon(
                          FontAwesomeIcons.earthAmericas,
                          size: 30,
                          color: Color(0xffe3f1f7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Cá Nhân',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 10,
                      color: Color(0xff7d8888),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 160,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FaIcon(FontAwesomeIcons.fileInvoice,
                                    size: 30, color: Color(0xff56cca0)),
                                Text('Quản lý tài khoản'),
                              ],
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.chevronRight,
                            size: 15,
                            color: Color(0xffc2d2d3),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 160,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FaIcon(FontAwesomeIcons.newspaper,
                                    size: 30, color: Color(0xfff3be69)),
                                Text('Thông tin liên lạc'),
                              ],
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.chevronRight,
                            size: 15,
                            color: Color(0xffc2d2d3),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 170,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FaIcon(FontAwesomeIcons.userGear,
                                    size: 30, color: Color(0xff69b6e8)),
                                Text('Cài đặt thanh toán'),
                              ],
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.chevronRight,
                            size: 15,
                            color: Color(0xffc2d2d3),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Hổ trợ và cài đặt',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 10,
                      color: Color(0xff7d8888),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 160,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FaIcon(FontAwesomeIcons.headphones,
                                      size: 30, color: Color(0xff56cca0)),
                                  Text('Trung tâm hổ trợ'),
                                ],
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.chevronRight,
                              size: 15,
                              color: Color(0xffc2d2d3),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 170,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FaIcon(FontAwesomeIcons.shield,
                                      size: 30, color: Color(0xfff3be69)),
                                  Text('Trung tâm bảo mật'),
                                ],
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.chevronRight,
                              size: 15,
                              color: Color(0xffc2d2d3),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 160,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FaIcon(FontAwesomeIcons.gear,
                                      size: 30, color: Color(0xff69b6e8)),
                                  Text('Cài đặt ứng dụng'),
                                ],
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.chevronRight,
                              size: 15,
                              color: Color(0xffc2d2d3),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 10,
                        color: Color(0xff7d8888),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.arrowRightToBracket,
                          size: 30, color: Color(0xffe85b60)),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Đăng Xuất',
                        style: TextStyle(color: Color(0xffe85b60)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.home_filled, size: 40),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
            label: 'Trang Chủ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.watch_later, size: 40),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const History()),
                );
              },
            ),
            label: 'Lịch Sử',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 50,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: -40,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff7d8888),
                      ),
                      child: const Icon(
                        Icons.qr_code_scanner,
                        size: 70,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: 'Quét mọi QR',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.edit_calendar_rounded, size: 40),
              onPressed: () {},
            ),
            label: 'Nghỉ Học',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.person, size: 40),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PersonalScreen()),
                );
              },
            ),
            label: 'Cá Nhân',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff0067ff),
        unselectedItemColor: const Color(0xff909090),
        onTap: _onItemTapped,
      ),
    );
  }
}
