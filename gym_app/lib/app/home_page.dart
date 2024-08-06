import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gym_app/app/home/view/home_view.dart';

class HomePage extends StatefulWidget {
  final int? currIndex;
  const HomePage({super.key, required this.title, this.currIndex});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentBottomBarIndex = 1;
  List<Widget> bars = [const HomeView(), const HomeView(), const HomeView(), const HomeView()];

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    setState(() {
      if (widget.currIndex != null) {
        currentBottomBarIndex = widget.currIndex!;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bars[currentBottomBarIndex],
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  _bottomNavBar() {
    return SizedBox(
        height: 55,
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[500],
          type: BottomNavigationBarType.shifting,
          showSelectedLabels: false,
          currentIndex: currentBottomBarIndex,
          onTap: (value) {
            setState(() {
              currentBottomBarIndex = value;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Stats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.task),
              label: 'Plans',
            ),
          ],
        ));
  }
}
