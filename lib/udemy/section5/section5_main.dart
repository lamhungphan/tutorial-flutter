import 'package:flutter/material.dart';
import 'package:flutter_application/flutter_mapp/views/pages/pactice/demo_container.dart';
import 'package:flutter_application/udemy/section5/demo_alert_dialog.dart';
import 'package:flutter_application/udemy/section5/demo_button.dart';
import 'package:flutter_application/udemy/section5/demo_card_listtitle.dart';
import 'package:flutter_application/udemy/section5/demo_datepicker_timepicker.dart';
import 'package:flutter_application/udemy/section5/demo_device_pixel_ratio.dart';
import 'package:flutter_application/udemy/section5/demo_dropdown.dart';
import 'package:flutter_application/udemy/section5/demo_expanded.dart';
import 'package:flutter_application/udemy/section5/demo_gridview.dart';
import 'package:flutter_application/udemy/section5/demo_gesturedetector.dart';
import 'package:flutter_application/udemy/section5/demo_key_render_ui.dart';
import 'package:flutter_application/udemy/section5/demo_listview.dart';
import 'package:flutter_application/udemy/section5/demo_material_theme.dart';
import 'package:flutter_application/udemy/section5/demo_navigation.dart';
import 'package:flutter_application/udemy/section5/demo_navigation_in_an_area.dart';
import 'package:flutter_application/udemy/section5/demo_navigationbar.dart';
import 'package:flutter_application/udemy/section5/demo_pageview.dart';
import 'package:flutter_application/udemy/section5/demo_popscope.dart';
import 'package:flutter_application/udemy/section5/demo_process_slider.dart';
import 'package:flutter_application/udemy/section5/demo_richtext.dart';
import 'package:flutter_application/udemy/section5/demo_row_column.dart';
import 'package:flutter_application/udemy/section5/demo_drawer.dart';
import 'package:flutter_application/udemy/section5/demo_singlechildscrollview.dart';
import 'package:flutter_application/udemy/section5/demo_stack.dart';
import 'package:flutter_application/udemy/section5/demo_tabbar.dart';
import 'package:flutter_application/udemy/section5/demo_textfield.dart';
import 'package:flutter_application/udemy/section5/demo_statefull_stateless.dart';

class Section5Main extends StatefulWidget {
  const Section5Main({super.key});

  @override
  State<Section5Main> createState() => _Section5MainState();
}

class _Section5MainState extends State<Section5Main> {
  final List<Map<String, dynamic>> lessons = [
    {
      'title': 'Alertdialog bottomsheet',
      'widget': DemoAlertDialog(),
    },
    {
      'title': 'Button widget',
      'widget': DemoButton(),
    },
    {
      'title': 'Card list tile',
      'widget': DemoCardListTile(),
    },
    {
      'title': 'Container',
      'widget': DemoContainer(),
    },
    {
      'title': 'Date & Time picker',
      'widget': DemoDatePicker(),
    },
    {
      'title': 'Device pixel ratio',
      'widget': DemoPixelRatio(),
    },
    {
      'title': 'Dropdown widget',
      'widget': DemoDropdown(),
    },
    {
      'title': 'Expand widget',
      'widget': DemoExpand(),
    },
    {
      'title': 'Gridview widget',
      'widget': DemoGridview(),
    },
    {
      'title': 'Gesture Detecter widget',
      'widget': DemoGestureDetector(),
    },
    {
      'title': 'Key render UI',
      'widget': DemoKey(),
    },
    {
      'title': 'Listview widget',
      'widget': DemoListview(),
    },
    {
      'title': 'Theme, Radio, checkbox',
      'widget': mainTheme(),
    },
    {
      'title': 'Mobile widget stucture',
      'widget': DemoCardListTile(),
    },
    {
      'title': 'Navigation in an area',
      'widget': NavigationInAnArea(),
    },
    {
      'title': 'Navigation',
      'widget': mainNavigation(),
    },
    {
      'title': 'Navigationbar',
      'widget': DemoNavigationbar(),
    },
    {
      'title': 'Pageview',
      'widget': DemoPageView2(5),
    },
    {
      'title': 'Popscope & Snackbar',
      'widget': DemoPopscope(),
    },
    {
      'title': 'Process loading & Slider',
      'widget': mainProcessSlider(),
    },
    {
      'title': 'Richtext widget',
      'widget': DemoRichText(),
    },
    {
      'title': 'Row Column',
      'widget': DemoRowColumn(),
    },
    {
      'title': 'Drawer',
      'widget': DemoMaterial(),
    },
    {
      'title': 'SingleChildScrollView',
      'widget': DemoSingleChildScrollView(),
    },
    {
      'title': 'Stack',
      'widget': DemoStack(),
    },
    {
      'title': 'Tabbar',
      'widget': DemoTabbar(),
    },
    {
      'title': 'Textfield',
      'widget': mainTextfield(),
    },
    {
      'title': 'Statefull Stateless',
      'widget': Widget2(true),
    },
    // Thêm các bài học khác ở đây
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Section 5 Demos'),
      ),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {  
          final lesson = lessons[index];
          return TextButton(
            child: Text(
              lesson['title'],
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => lesson['widget'],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
