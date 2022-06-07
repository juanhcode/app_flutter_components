import 'package:app_flutter_components/routes/router.dart';
import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int ind = 0;
  BottomNav? btnav;

  @override
  void initState() {
    btnav = BottomNav(currentIndex: (i) {
      setState(() {
        ind = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Taller Flutter'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Routes(index: ind).miPages(),
      bottomNavigationBar: btnav,
    );
  }
}
