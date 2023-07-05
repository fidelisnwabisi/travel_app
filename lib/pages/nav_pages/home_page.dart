import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Menu text
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                children: [
                  const Icon(Icons.menu, size: 30, color: Colors.black54),
                  Expanded(child: Container()),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            // Discover Text
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const AppLargeText(
                text: "Discover",
              ),
            ),
            const SizedBox(height: 30),
            // TabBar
            Container(
              child: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: "Places"),
                  Tab(text: "Inspiration"),
                  Tab(text: "Emotions"),
                ],
              ),
            ),
            Container(
              height: 300,
              width: double.maxFinite,
              child: TabBarView(controller: _tabController, children: [
                Text("Hi"),
                Text("There"),
                Text("Bye"),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
