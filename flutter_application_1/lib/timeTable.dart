import 'package:flutter/material.dart';
import 'package:flutter_application_1/history.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/personal.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  _TimeTableState createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  Widget buildBlackContainer(Color color, String time, String text) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: 80),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Text(
              time,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
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
          'Thời khóa biểu\nhoạt động học',
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
                          const Text('25',
                              style: TextStyle(
                                  fontSize: 22, color: Color(0xffffffff))),
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
                        style: const TextStyle(fontWeight: FontWeight.w300),
                      ),
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
            const SizedBox(height: 5),
            const Text(
              'SÁNG',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            buildBlackContainer(
                const Color(0xffeb7279), '07:00 - 08:00', 'ĐÓN TRẺ'),
            buildBlackContainer(
                const Color(0xffa3c9ec), '08:00 - 08:45', 'ĂN SÁNG'),
            buildBlackContainer(const Color(0xff5dcaa3), '08:45 - 10:30',
                'THỰC HÀNH MẦN NON\n(Thầy Linh)'),
            buildBlackContainer(const Color(0xffedac5d), '10:30 - 11:00',
                'HOẠT ĐỘNG THỂ CHẤT/\nVẬN ĐỘNG'),
            const Text(
              'TRƯA',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            buildBlackContainer(
                const Color(0xffeb7279), '11:00 - 12:00', 'ĂN TRƯA'),
            buildBlackContainer(
                const Color(0xffa3c9ec), '12:00 - 13:45', 'NGỦ TRƯA'),
            buildBlackContainer(
                const Color(0xff5dcaa3), '13:45 - 14:30', 'HOẠT ĐỘNG GÌ ĐÓ'),
            buildBlackContainer(
                const Color(0xffedac5d), '14:30 - 16:00', 'HOẠT ĐỘNG GÌ ĐÓ'),
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
