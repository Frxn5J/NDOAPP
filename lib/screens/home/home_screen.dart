import 'package:flutter/material.dart';
import '../../../widgets/custom_app_bar.dart';
import 'widgets/news_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeContent(),
    Center(child: Text("Guardados")),
    Center(child: Text("Videos")),
    Center(child: Text("Calendario")),
    Center(child: Text("Cuenta")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue[900],
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        NewsCard(
          title: 'Se celebra la Cena del Señor en Ojuelos',
          tags: ['Cultura'],
        ),
        NewsCard(
          title: 'Incendio en el basurero de La Paz preocupa a la comunidad',
          tags: ['Minuto a Minuto', 'Cultura', 'Deporte'],
        ),
      ],
    );
  }
}
