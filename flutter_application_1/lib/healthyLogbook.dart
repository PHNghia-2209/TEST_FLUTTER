import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/history.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/personal.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HealthyLogBook extends StatefulWidget {
  const HealthyLogBook({super.key});

  @override
  _HealthyLogBookState createState() => _HealthyLogBookState();
}

class _HealthyLogBookState extends State<HealthyLogBook> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  double _bmi = 0;
  int _age = 0;

  void _calculateBMI() {
    final double height = double.tryParse(_heightController.text) ?? 0;
    final double weight = double.tryParse(_weightController.text) ?? 0;
    _age = int.tryParse(_ageController.text) ?? 0;

    if (height > 0 && weight > 0) {
      setState(() {
        _bmi = weight / ((height / 100) * (height / 100));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sổ theo dõi sức khỏe',
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
              SizedBox(
                width: 350,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: 100,
                        height: 90,
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
                        width: 240,
                        height: 90,
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
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'Tô Gia Hưng',
                                        style: TextStyle(
                                            color: Color(0xfff79757),
                                            fontSize: 20),
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 90,
                      top: 30,
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
              Image.asset(
                'assets/img/iconMedical.png',
                width: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'THÔNG TIN SỨC KHỎE CỦA BÉ',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                controller: _heightController,
                decoration: const InputDecoration(
                  labelText: 'Chiều cao (cm)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _weightController,
                decoration: const InputDecoration(
                  labelText: 'Cân nặng (kg)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _ageController,
                decoration: const InputDecoration(
                  labelText: 'Tuổi (năm)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _calculateBMI,
                child: const Text('Tính BMI'),
              ),
              const SizedBox(height: 20),
              Text(
                'Chỉ số BMI: ${_bmi.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    LineChart(
                      LineChartData(
                        gridData: const FlGridData(show: true),
                        titlesData: FlTitlesData(
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              interval: 2,
                              reservedSize: 20,
                              getTitlesWidget: (value, meta) {
                                return Text(
                                  '${value.toInt()}',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                );
                              },
                            ),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              interval: 1,
                              reservedSize: 20,
                              getTitlesWidget: (value, meta) {
                                return Text(
                                  '${value.toInt()}',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: true,
                          border: Border.all(color: Colors.black),
                        ),
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              const FlSpot(2, 32),
                            ],
                            isCurved: true,
                            color: Colors.transparent,
                            barWidth: 2,
                          ),
                          LineChartBarData(
                            spots: [
                              const FlSpot(2, 20),
                              const FlSpot(4, 18),
                              const FlSpot(6, 19),
                              const FlSpot(9, 22),
                              const FlSpot(11, 24),
                              const FlSpot(15, 28),
                              const FlSpot(20, 32),
                            ],
                            isCurved: true,
                            color: Colors.transparent,
                            barWidth: 2,
                          ),
                          LineChartBarData(
                            spots: [
                              const FlSpot(2, 18),
                              const FlSpot(4, 17),
                              const FlSpot(6, 17),
                              const FlSpot(9, 19),
                              const FlSpot(11, 21),
                              const FlSpot(15, 26),
                              const FlSpot(20, 31),
                            ],
                            isCurved: true,
                            color: Colors.transparent,
                            barWidth: 2,
                          ),
                          LineChartBarData(
                            spots: [
                              const FlSpot(2, 14),
                              const FlSpot(4, 13.5),
                              const FlSpot(6, 13),
                              const FlSpot(9, 14),
                              const FlSpot(11, 14.5),
                              const FlSpot(15, 16),
                              const FlSpot(20, 18),
                            ],
                            isCurved: true,
                            color: Colors.transparent,
                            barWidth: 2,
                          ),
                        ],
                        betweenBarsData: [
                          BetweenBarsData(
                            fromIndex: 0,
                            toIndex: 1,
                            color: Colors.red.withOpacity(0.5), // Béo phì
                          ),
                          BetweenBarsData(
                            fromIndex: 2,
                            toIndex: 1,
                            color: Colors.yellow.withOpacity(0.5), // Béo phì
                          ),
                          BetweenBarsData(
                            fromIndex: 3,
                            toIndex: 2,
                            color: Colors.green.withOpacity(0.5), // Béo phì
                          ),
                        ],
                        minX: 2,
                        maxX: 20,
                        minY: 10,
                        maxY: 32,
                      ),
                    ),
                    if (_bmi > 0)
                      Positioned(
                        left: _calculateBMILeft(_bmi, _age),
                        top: _calculateBMITop(_bmi),
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 100,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/img/iconChieuCao.png',
                      width: 100,
                    ),
                    const Text(
                      'BIỂU ĐỒ\nCHIỀU CAO - CÂN NẶNG',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Image.asset('assets/img/bieu_do_chieu_cao_can_nang.jpg'),
              const SizedBox(height: 20),
              const Text(
                'Bảng chiều cao cân năng bé gái chuẩn',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset('assets/img/chieucaochuancuabegai.jpg'),
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

  double _calculateBMILeft(double bmi, int age) {
    double minX = 2;
    double maxX = 20;
    double xRange = maxX - minX;

    double ageX = age.toDouble();

    return (ageX - minX) / xRange * MediaQuery.of(context).size.width;
  }

  double _calculateBMITop(double bmi) {
    double minY = 10;
    double maxY = 32;
    double yRange = maxY - minY;

    double yValue = ((bmi - minY) / yRange) * 400;
    return 400 - yValue;
  }
}
