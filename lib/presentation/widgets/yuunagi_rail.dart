import 'package:flutter/material.dart';

class YuunagiRail extends StatefulWidget {
  const YuunagiRail({super.key, required this.changeScreen});

  final Function changeScreen;

  @override
  State<YuunagiRail> createState() => _YuunagiRailState();
}

class _YuunagiRailState extends State<YuunagiRail> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: IntrinsicHeight(
          child: NavigationRail(
            selectedIndex: selectedIndex,
            labelType: NavigationRailLabelType.all,
            selectedIconTheme: const IconThemeData(
              color: Color.fromRGBO(190, 0, 41, 1),
            ),
            selectedLabelTextStyle: const TextStyle(
              color: Color.fromRGBO(190, 0, 41, 1),
            ),
            onDestinationSelected: (int index) {
              setState(() {
                selectedIndex = index;
              });
              switch (index) {
                case 0:
                  widget.changeScreen(0);
                  break;
                case 1:
                  widget.changeScreen(1);
                  break;
                case 2:
                  widget.changeScreen(2);
                  break;
                case 3:
                  widget.changeScreen(3);
                  break;
                case 4:
                  widget.changeScreen(4);
                  break;
                case 5:
                  widget.changeScreen(5);
                  break;
                default:
              }
            },
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.list),
                label: Text('Lists'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.gamepad),
                label: Text('Play'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shop),
                label: Text('Shop'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text('Profile'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.logout),
                label: Text('Sign out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
