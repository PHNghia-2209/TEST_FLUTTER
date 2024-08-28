import 'package:flutter/material.dart';
import 'package:flutter_application_1/history.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/personal.dart';

class ReportFoodAllergies extends StatelessWidget {
  const ReportFoodAllergies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Báo Cáo thực phẩm bị dị ứng',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/img/food.jpg',
                  width: 150,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Chọn thực phẩm bị dị ứng cho bé:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Thực phẩm 1:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 200,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        value: null,
                        hint: const Text('Chọn nguyên liệu'),
                        items: <String>[
                          'Nguyên liệu A',
                          'Nguyên liệu B',
                          'Nguyên liệu C'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Thực phẩm 2:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 200,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        value: null,
                        hint: const Text('Chọn nguyên liệu'),
                        items: <String>[
                          'Nguyên liệu A',
                          'Nguyên liệu B',
                          'Nguyên liệu C'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Phụ huynh báo thực phẩm bị dị ứng:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a search term',
                      ),
                      maxLines: 6,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 70,
                      width: 150,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xff0067ff),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Thực hiện',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          )
                        ],
                      ),
                    ),
                  )
                ],
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
