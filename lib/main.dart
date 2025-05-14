import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Color(0xffF82B10);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Color(0xffeff1f3),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      ),
      home: HomeScreen(),
    );
  }
} //gg
//sdfsadfasdfasdf

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
          SliverList.builder(itemBuilder: (context, index) => RhymeListCard()),
        ],
      ),
    );
  }
}

class RhymeListCard extends StatelessWidget {
  const RhymeListCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text('Рифма', style: theme.textTheme.bodyLarge),
          IconButton(onPressed: () {}, icon: Icon(Icons.heart_broken)),
        ],
      ),
    );
  }
}

class SearchButtom extends StatelessWidget {
  const SearchButtom({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: theme.hintColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(Icons.search_rounded, size: 20),
          SizedBox(width: 12),
          Text(
            'Поиск рифм...',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              // ignore: deprecated_member_use
              color: theme.hintColor.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
//dfghjkjh