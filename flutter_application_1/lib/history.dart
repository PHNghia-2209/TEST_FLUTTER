import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/personal.dart';

class History extends StatefulWidget {
  const History({super.key});
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  int _selectedIndex = 1;
  int _selectedIndexMenu = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onMenuTapped(int index) {
    setState(() {
      _selectedIndexMenu = index;
    });
  }

  Widget _buildMenuItem(String text, int index) {
    return GestureDetector(
      onTap: () {
        _onMenuTapped(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: _selectedIndexMenu == index
                  ? FontWeight.bold
                  : FontWeight.normal,
              color: _selectedIndexMenu == index ? Colors.black : Colors.grey,
            ),
          ),
          if (_selectedIndexMenu == index)
            Transform.translate(
              offset: const Offset(0, 10),
              child: Container(
                margin: const EdgeInsets.only(top: 3),
                height: 2,
                width: 70,
                color: Colors.blue,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildListItem(IconData iconItem, Color colorItem, String title,
      String description, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Lịch sử',
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, size: 40, color: Colors.grey),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.filter_alt_rounded,
                      size: 40, color: Color(0xff0067ff)),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: const Color(0xff0067ff),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300, width: 1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMenuItem('Tất cả', 0),
                  _buildMenuItem('Học phí', 1),
                  _buildMenuItem('Nghỉ học', 2),
                  _buildMenuItem('Tiêm ngừa', 3),
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
            _buildListItem(Icons.edit_calendar_rounded, const Color(0xffe85b60),
                'Nghĩ Học', 'Nhà có việc', ''),
            _buildListItem(
                Icons.medical_information,
                const Color(0xfff79757),
                'Tiêm Ngừa vắt xin cúm mùa',
                '345.000đ',
                'assets/img/logo-vietcombank.png'),
            _buildListItem(Icons.edit_calendar_rounded, const Color(0xffe85b60),
                'Nghĩ Học', 'Nhà có việc', ''),
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
                const Color(0xfff79757),
                'Thanh Toán học phí tháng 03',
                '800.000đ',
                'assets/img/logo-vietcombank.png'),
            _buildListItem(Icons.edit_calendar_rounded, const Color(0xffe85b60),
                'Nghĩ Học', 'Nhà có việc', ''),
            _buildListItem(
                Icons.medical_information,
                const Color(0xfff79757),
                'Tiêm Ngừa vắt xin cúm mùa',
                '345.000đ',
                'assets/img/logo-vietcombank.png'),
            _buildListItem(Icons.edit_calendar_rounded, const Color(0xffe85b60),
                'Nghĩ Học', 'Nhà có việc', ''),
          ],
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
