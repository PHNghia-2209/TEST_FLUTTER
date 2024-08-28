import 'package:flutter/material.dart';
import 'package:flutter_application_1/history.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/personal.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoodBabyBook extends StatelessWidget {
  const GoodBabyBook({super.key});

  Widget _buildListItem(String image, String title, String time) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFD5E6ED),
          width: 2,
        ),
      ),
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipOval(
            child: Image.asset(
              image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 190,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      const TextStyle(fontSize: 22, color: Color(0xff90bbe0)),
                ),
                const SizedBox(height: 10),
                Text(
                  time,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sổ bé ngoan',
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xff0067ff),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 110,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFdadada),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'TUẦN',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFdadada),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'THÁNG',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff0067ff),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'NĂM',
                        style: TextStyle(
                          color: Color(0xff0067ff),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Thành tích học tập năm 2024',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )),
                    const Align(
                        alignment: Alignment.center,
                        child: FaIcon(FontAwesomeIcons.chevronDown, size: 20)),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFaed7f3),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Icon(Icons.calendar_month,
                          size: 40, color: Color(0xff0067ff)),
                    ),
                  ],
                ),
              ),
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
              const SizedBox(height: 20),
              _buildListItem('assets/img/Phieu_be_ngoan.png', 'PHIẾU BÉ NGOAN',
                  'Tuần 4 tháng 3'),
              _buildListItem('assets/img/Phieu_be_ngoan.png', 'PHIẾU BÉ NGOAN',
                  'Tuần 4 tháng 3'),
              _buildListItem(
                  'assets/img/giai_nhat.jpg', 'GIẢI NHẤT', 'Tuần 4 tháng 3'),
              _buildListItem('assets/img/Phieu_be_ngoan.png', 'PHIẾU BÉ NGOAN',
                  'Tuần 4 tháng 3'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(
                Icons.home_filled,
                size: 40,
                color: Color(0xff909090),
              ),
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
      ),
    );
  }
}
