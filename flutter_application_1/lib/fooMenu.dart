import 'package:flutter/material.dart';
import 'package:flutter_application_1/history.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/personal.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({super.key});

  @override
  _FoodMenuState createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  bool isBreakFirstExpanded = false;
  bool isLunchExpanded = false;
  bool isDinnerExpanded = false;

  Widget _buildMealSection({
    required String title,
    required Color color,
    required IconData icon,
    required String content,
    required bool isExpanded,
    required VoidCallback onTap,
    required List<String> ingredients,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        constraints: const BoxConstraints(minHeight: 100),
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      icon,
                      size: 30,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  content,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            if (isExpanded)
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color(0xfffeeeef),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nguyên Liệu:',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 4),
                      const SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...ingredients
                              .map((ingredient) => Padding(
                                    padding: const EdgeInsets.only(bottom: 4.0),
                                    child: Text(
                                      '$ingredient',
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  void _showCalendar() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Scaffold(
          body: Column(
            children: [
              TableCalendar(
                locale: "en_US",
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
                availableCalendarFormats: const {
                  CalendarFormat.month: 'Month',
                  CalendarFormat.twoWeeks: 'Two Weeks',
                },
                focusedDay: _focusedDay,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                  Navigator.pop(context);
                },
                selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Thực đơn',
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 120,
                  height: 50,
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFD5E6ED),
                      width: 2,
                    ),
                    color: const Color(0xffebf8ff),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: GestureDetector(
                    onTap: _showCalendar,
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.calendar_month,
                              size: 30, color: Color(0xff0067ff)),
                          SizedBox(
                              child: Text(
                            'TUẦN',
                            style: TextStyle(
                              color: Color(0xff0067ff),
                              fontSize: 18,
                            ),
                          )),
                        ]),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300, width: 3),
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('T2', style: TextStyle(fontSize: 22)),
                      Text('T3', style: TextStyle(fontSize: 22)),
                      Text('T4', style: TextStyle(fontSize: 22)),
                      Text('T5', style: TextStyle(fontSize: 22)),
                      Text('T6', style: TextStyle(fontSize: 22)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: const Color(0xff0067ff),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          const Text(
                            '25',
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                      const Text('26', style: TextStyle(fontSize: 22)),
                      const Text('27', style: TextStyle(fontSize: 22)),
                      const Text('28', style: TextStyle(fontSize: 22)),
                      const Text('29', style: TextStyle(fontSize: 22)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Thứ hai, ngày ${_selectedDay.day} tháng ${_selectedDay.month} năm ${_selectedDay.year}',
                          style: const TextStyle(fontWeight: FontWeight.w300)),
                      const SizedBox(width: 5),
                      const FaIcon(
                        FontAwesomeIcons.chevronDown,
                        size: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Column(
              children: [
                Text(
                  'Thực đơn tháng 3 - Tuần 4:',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  '(25/03 - 31/03/2024)',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 10),
            _buildMealSection(
              title: 'SÁNG',
              color: const Color(0xffeb7279),
              icon: Icons.keyboard_double_arrow_down_outlined,
              content: 'CHÁO TÔM THỊT RAU CỦ',
              isExpanded: isBreakFirstExpanded,
              onTap: () {
                setState(() {
                  isBreakFirstExpanded = !isBreakFirstExpanded;
                });
              },
              ingredients: [
                'Bột năng 15.00 Gam',
                'Cà rốt (Củ đỏ, vàng) 15.00 Gam',
                'Hành lá (hành hoa) 3.00 Gam',
                'Muỗi 0.50 Gam',
                'Nạc dằm 15.00 Gam',
                'Nấm Tuyết 1.00 Gam',
                'Ngò rí 3.00 Gam',
                'Nui sao 15.00 Gam',
                'Thịt ghẹ 13.00 Gam',
                'Trứng chim cút 1.00 Trứng',
              ],
            ),
            _buildMealSection(
              title: 'Trưa',
              color: const Color(0xffee9e05),
              icon: Icons.keyboard_double_arrow_down_outlined,
              content: 'THỊT TRỨNG XÀO CÀ CHUA\nCANH THỊT XÀ LÁCH XOONG\nCƠM',
              isExpanded: isLunchExpanded,
              onTap: () {
                setState(() {
                  isLunchExpanded = !isLunchExpanded;
                });
              },
              ingredients: [
                'Bột năng 15.00 Gam',
                'Cà rốt (Củ đỏ, vàng) 15.00 Gam',
                'Hành lá (hành hoa) 3.00 Gam',
                'Muỗi 0.50 Gam',
                'Nạc dằm 15.00 Gam',
                'Nấm Tuyết 1.00 Gam',
                'Ngò rí 3.00 Gam',
                'Nui sao 15.00 Gam',
                'Thịt ghẹ 13.00 Gam',
                'Trứng chim cút 1.00 Trứng',
              ],
            ),
            _buildMealSection(
              title: 'Chiều',
              color: const Color(0xff61c8a3),
              icon: Icons.keyboard_double_arrow_down_outlined,
              content: 'BÁNH CƠM KIỂU NHẬT\nTÁO VÀ VÁNG SỮA',
              isExpanded: isDinnerExpanded,
              onTap: () {
                setState(() {
                  isDinnerExpanded = !isDinnerExpanded;
                });
              },
              ingredients: [
                'Bột năng 15.00 Gam',
                'Cà rốt (Củ đỏ, vàng) 15.00 Gam',
                'Hành lá (hành hoa) 3.00 Gam',
                'Muỗi 0.50 Gam',
                'Nạc dằm 15.00 Gam',
                'Nấm Tuyết 1.00 Gam',
                'Ngò rí 3.00 Gam',
                'Nui sao 15.00 Gam',
                'Thịt ghẹ 13.00 Gam',
                'Trứng chim cút 1.00 Trứng',
              ],
            ),
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
