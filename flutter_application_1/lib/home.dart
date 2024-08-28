import 'package:flutter/material.dart';
import 'package:flutter_application_1/fooMenu.dart';
import 'package:flutter_application_1/goodBabyBook.dart';
import 'package:flutter_application_1/healthyLogbook.dart';
import 'package:flutter_application_1/history.dart';
import 'package:flutter_application_1/payTuition.dart';
import 'package:flutter_application_1/personal.dart';
import 'package:flutter_application_1/reportFoodAllergies.dart';
import 'package:flutter_application_1/timeTable.dart';
import 'package:flutter_application_1/vaccinHistory.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

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
        leading: Image.asset('assets/img/logo.png'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 40,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications,
              size: 40,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: const Color(0xff0067ff),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/img/background.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -30),
                child: Container(
                  width: 380,
                  height: 120,
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
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        children: [
                          Icon(Icons.edit_calendar,
                              size: 40, color: Color(0xff0067ff)),
                          SizedBox(width: 20),
                          Text(
                            'Báo cáo Suất\n/Nghỉ Học',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PaymentTuition()),
                          );
                        },
                        child: const Column(
                          children: [
                            Icon(Icons.wallet,
                                size: 40, color: Color(0xff0067ff)),
                            SizedBox(width: 20),
                            Text('Thanh Toán\nHọc Phí',
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TimeTable()),
                          );
                        },
                        child: const Column(
                          children: [
                            Icon(Icons.calendar_month,
                                size: 40, color: Color(0xff0067ff)),
                            SizedBox(width: 20),
                            Text('Thời Khóa Biểu', textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FoodMenu()),
                          );
                        },
                        child: const Column(
                          children: [
                            Icon(Icons.food_bank_sharp,
                                size: 40, color: Color(0xff0067ff)),
                            SizedBox(width: 20),
                            Text('Thực đơn', textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xfff5f3ce),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          padding: const EdgeInsets.all(16.0),
                          child: const Icon(Icons.bookmark_add_sharp,
                              size: 40, color: Color(0xff6acd73)),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Đăng Ký\nMôn Năng Khiếu',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HealthyLogBook()),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f3ce),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            padding: const EdgeInsets.all(16.0),
                            child: const FaIcon(
                              FontAwesomeIcons.heartPulse,
                              size: 40,
                              color: Color(0xffe85b60),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Sổ theo dõi\nSức Khỏe',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GoodBabyBook()),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f3ce),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            padding: const EdgeInsets.all(16.0),
                            child: const FaIcon(
                              FontAwesomeIcons.book,
                              size: 40,
                              color: Color(0xffe85b60),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Sổ Bé Ngoan\n',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xfff5f3ce),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          padding: const EdgeInsets.all(16.0),
                          child: const Icon(Icons.sticky_note_2,
                              size: 40, color: Color(0xff6acd73)),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Đánh Giá\nGiáo Viên',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f3ce),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            padding: const EdgeInsets.all(16.0),
                            child: const FaIcon(FontAwesomeIcons.solidImages,
                                size: 40, color: Color(0xffd37fb8)),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Kho Ảnh\nHoạt Động',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xfff5f3ce),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            padding: const EdgeInsets.all(16.0),
                            child: const Icon(
                              Icons.energy_savings_leaf,
                              size: 40,
                              color: Color(0xfff79757),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Năng lượng\nDinh Dưỡng',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ReportFoodAllergies()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xfff5f3ce),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              padding: const EdgeInsets.all(16.0),
                              child: const Icon(
                                Icons.no_food_sharp,
                                size: 40,
                                color: Color(0xfff79757),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Báo Thực Phẩm\nBị Dị Ứng',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const VaccinationHistory()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xfff5f3ce),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              padding: const EdgeInsets.all(16.0),
                              child: const Icon(Icons.medical_services,
                                  size: 40, color: Color(0xffd37fb8)),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Lịch Sử\nTiêm Ngừa',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: const SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Text(
                            'Bài viết thông báo của trường',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        FaIcon(FontAwesomeIcons.circleChevronRight,
                            size: 20, color: Color(0xffd37fb8)),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        'assets/img/background.jpg',
                        fit: BoxFit.cover,
                        width: 180,
                      ),
                    ),
                    Image.asset(
                      'assets/img/background.jpg',
                      fit: BoxFit.cover,
                      width: 180,
                    ),
                  ],
                ),
              )
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
