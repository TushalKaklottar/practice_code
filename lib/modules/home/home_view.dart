import 'package:flutter/material.dart';
import 'package:untitled/core/app_color.dart';
import '../../widgets/custom_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primary,
        title: const Text(
          "My App",
          style: TextStyle(color: AppColors.background),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
            ),
          ),
        ],
        actionsIconTheme: const IconThemeData(color: AppColors.background),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(Icons.person, size: 40, color: Colors.blue),
                  ),
                  SizedBox(height: 10),
                  Text("User Name",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Text("user@example.com",
                      style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.fast),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: buttonList.map((button) {
                return CustomButton(
                  title: button['title'],
                  onPressed: () {
                    Navigator.pushNamed(context, button['route'] ?? "");
                  },
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

final List<Map<String, String>> buttonList = [
  {'title': 'Column Widget', 'route': '/columnWidget'},
  {'title': 'Row Widget', 'route': '/row'},
  {'title': 'Stack Widget', 'route': '/stack'},
  {'title': 'ListView', 'route': '/listView'},
  {'title': 'stateLess', 'route': '/statelessView'},
  {'title': 'SizedVsContainer', 'route': '/SizedVsContainer'},
  {'title': 'Expanded', 'route': '/ExpandedView'},
  {'title': 'Flexible', 'route': '/FlexibleView'},
  {'title': 'GridWidget', 'route': '/gridWidget'},
  {'title': 'AspectRatio', 'route': '/AspectRatio'},
  {'title': 'HeroWidget', 'route': '/HeroWidget'},
  {'title': 'IntrinsicWidget', 'route': '/IntrinsicWidget'},
  {'title': 'TextWidget', 'route': '/textWidget'},
  {'title': 'ToolTip', 'route': '/toolTip_wrap'},
  {'title': 'Visibility', 'route': '/visibility'},
];
