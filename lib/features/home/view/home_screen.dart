import 'package:flutter/material.dart';
import 'package:rhymer/main.dart';

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
        children: [SearchScreen(), Scaffold(), Scaffold(), Scaffold()],
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

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          pinned: true,
          snap: true,
          floating: true,
          title: Text('Rhymer'),
          elevation: 0,
          backgroundColor: Colors.white, // Устанавливаем фиксированный цвет
          surfaceTintColor: Colors.transparent, // Отключаем изменение цвета
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: SearchButtom(),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 16),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              separatorBuilder: (context, index) => SizedBox(width: 16),
              itemBuilder: (context, index) {
                final rhymes = List.generate(4, (index) => 'Рифма $index');
                return RhymeHistoryCard(rhymes: rhymes);
              },
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverList.builder(itemBuilder: (context, index) => RhymeListCard()),
      ],
    );
  }
}