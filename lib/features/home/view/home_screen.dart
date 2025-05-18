import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../favorites/view/favorites_screen.dart';
import '../../poems/view/poems_screen.dart';
import '../../search/view/search_screen.dart';
import '../../settings/view/settings_screen.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedPageIndex = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() => _selectedPageIndex = value);
        },
        children: [
          SearchScreen(),
          FavoritesScreen(),
          PoemsScreen(),
          SettingScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: theme.primaryColor,
        unselectedItemColor: theme.hintColor,
        onTap: _openPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Поиск'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Избранные',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Стихи'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Настройки',
          ),
        ],
      ),
    );
  }

  void _openPage(int index) {
    setState(() => _selectedPageIndex = index);
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.bounceInOut,
    );
  }
}
