import 'package:flutter/material.dart';
import 'package:flutter_application/flutter_mapp/data/constants.dart';
import 'package:flutter_application/flutter_mapp/data/notifiers.dart';
import 'package:flutter_application/flutter_mapp/views/pages/counter_page.dart';
import 'package:flutter_application/flutter_mapp/views/pages/home_page.dart';
import 'package:flutter_application/flutter_mapp/views/pages/pactice/call_api_page.dart';
import 'package:flutter_application/flutter_mapp/views/pages/pactice/demo_container.dart';
import 'package:flutter_application/flutter_mapp/views/pages/pactice/counter_app.dart';
import 'package:flutter_application/flutter_mapp/views/pages/pactice/color_changer_page.dart';
import 'package:flutter_application/flutter_mapp/views/pages/pactice/demo_text.dart';
import 'package:flutter_application/flutter_mapp/views/pages/pactice/hello_page.dart';
import 'package:flutter_application/flutter_mapp/views/pages/pactice/navigation_page.dart';
import 'package:flutter_application/flutter_mapp/views/pages/pactice/practice_papge.dart';
import 'package:flutter_application/flutter_mapp/views/pages/pactice/show_list_page.dart';
import 'package:flutter_application/flutter_mapp/views/pages/profile_page.dart';
import 'package:flutter_application/flutter_mapp/views/pages/settings_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage(), CounterPage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
              final SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setBool(KConstants.themeModeKey, true);
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingPage(title: 'Settings');
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text('Bài Tập')),
            ListTile(
              title: Text('Practice'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PracticePapge()));
              },
            ),
            ListTile(
              title: Text('Bài 0'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HelloPage()));
              },
            ),
            ListTile(
              title: Text('Bài 1'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ColorChangerPage()));
              },
            ),
            ListTile(
              title: Text('Bài 2'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CounterApp()));
              },
            ),
            ListTile(
              title: Text('Bài 3'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ShowListPage()));
              },
            ),
            ListTile(
              title: Text('Bài 4'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen())),
            ),
            ListTile(
              title: Text('Bài 5'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FetchDataPage()));
              },
            ),
            ListTile(
              title: Text('Container'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DemoContainer()));
              },
            ),
            ListTile(
              title: Text('Text'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DemoText()));
              },
            ),
          ],
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
