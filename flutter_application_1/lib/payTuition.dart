import 'package:flutter/material.dart';
import 'package:flutter_application_1/history.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/personal.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentTuition extends StatelessWidget {
  const PaymentTuition({super.key});

  Widget _buildListItem(IconData iconItem, Color colorItem, String title,
      String description, String image) {
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xfff5f3ce),
              borderRadius: BorderRadius.circular(50.0),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              iconItem,
              size: 50,
              color: colorItem,
            ),
          ),
          SizedBox(
            width: 190,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: colorItem,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 24),
                ),
                const Text(
                  '08-59 - 26/03/2024',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          if (image.isNotEmpty)
            Column(
              children: [
                Image.asset(
                  image,
                  width: 60,
                  height: 60,
                ),
                const Text(
                  'Thành Công',
                  style: TextStyle(color: Color(0xff6acd73)),
                ),
              ],
            )
          else
            const SizedBox(
              width: 60,
              height: 60,
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
          'Thanh toán học phí',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 10,
                    color: Color(0xff7d8888),
                  ),
                ],
                color: const Color(0xffebf8ff),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Hóa đơn chưa thanh toán',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      )),
                  FaIcon(FontAwesomeIcons.solidFileLines,
                      size: 40, color: Color(0xffe38442)),
                  Text(
                    '1.600.000đ',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffe38442)),
                  ),
                  Text(
                    'Học phí tháng 04',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Tháng 03/2024',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            _buildListItem(
                Icons.wallet,
                const Color(0xfff79757),
                'Thanh Toán học phí tháng 04',
                '1.200.000đ',
                'assets/img/logo-vietcombank.png'),
            _buildListItem(
                Icons.wallet,
                const Color(0xfff79757),
                'Thanh Toán học phí tháng 04',
                '1.200.000đ',
                'assets/img/logo-vietcombank.png'),
            _buildListItem(
                Icons.wallet,
                const Color(0xfff79757),
                'Thanh Toán học phí tháng 04',
                '1.200.000đ',
                'assets/img/logo-vietcombank.png'),
          ],
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
