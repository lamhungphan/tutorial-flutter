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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    child: Text(
                      'Alertdialog bottomsheet',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoAlertDialog();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Button widget',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoButton();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Card list tile',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoCardListTile();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Container', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoContainer();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Card list tile',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoCardListTile();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Date & Time picker',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoDatePicker();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Device pixel ratio',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoPixelRatio();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Dropdown widget',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoDropdown();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Expand widget',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoExpand();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Gridview widget',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoGridview();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Gesture Detecter widget',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoGestureDetector();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Key render UI',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoKey();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Listview widget',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoListview();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Theme, Radio, checkbox',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return mainTheme();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Mobile widget stucture',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoCardListTile();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Navigation in an area',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return NavigationInAnArea();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Navigation', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return mainNavigation();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Navigationbar',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoNavigationbar();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Pageview', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoPageView2(5);
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Popscope & Snackbar',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoPopscope();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Process loading & Slider',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return mainProcessSlider();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Richtext widget',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoRichText();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Row Column', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoRowColumn();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Drawer', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoMaterial();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'SingleChildScrollView',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoSingleChildScrollView();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Stack', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoStack();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Tabbar', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DemoTabbar();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text('Textfield', style: TextStyle(fontSize: 30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return mainTextfield();
                          },
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Statefull Stateless',
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Widget2(true);
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
