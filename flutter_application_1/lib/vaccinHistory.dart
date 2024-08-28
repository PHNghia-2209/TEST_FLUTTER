import 'package:flutter/material.dart';
import 'package:flutter_application_1/VaccinDeclaration.dart';
import 'package:flutter_application_1/history.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/personal.dart';

class VaccinationHistory extends StatelessWidget {
  const VaccinationHistory({super.key});

  Widget _buildListItem(IconData iconItem, Color colorItem, String title,
      String description, String price) {
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
                  style: TextStyle(color: colorItem, fontSize: 12),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Bệnh viện nhi đồng TPCT',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          Text(
            price,
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lịch sử tiêm ngừa',
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VaccinDec()),
                );
              },
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 180,
                  height: 80,
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFD5E6ED),
                      width: 2,
                    ),
                    color: const Color(0xffebf8ff),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.medical_services_rounded,
                            size: 40, color: Color(0xff0067ff)),
                        SizedBox(
                            width: 100,
                            child: Text(
                              'Khai báo tiêm chủng',
                              style: TextStyle(
                                color: Color(0xff0067ff),
                                fontSize: 18,
                              ),
                            )),
                      ]),
                ),
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
            _buildListItem(Icons.wallet, const Color(0xff6acd73),
                'Tiêm ngừa vắc xin cúm mùa', '08-59 - 26/03/2024', '345.000đ'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Tháng 02/2024',
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
                const Color(0xff6acd73),
                'Tiêm ngừa vắc xin viêm gan B',
                '13-23 - 13/02/2024',
                '65.000đ'),
            _buildListItem(Icons.wallet, const Color(0xff6acd73),
                'Tiêm ngừa vắc xin thủy đậu', '10-38 - 05/02/2024', '65.000đ'),
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
