import 'package:flutter/material.dart';
import 'package:responsive_ui/Utils/my_box.dart';
import 'package:responsive_ui/Utils/my_tile.dart';
import 'package:responsive_ui/constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultColor,
      appBar: myAppBar,
      body: Row(
        children: [
          // Drawer
          myDrawer,
          SizedBox(width: 10,),
          // body
          Expanded(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (context, index) {
                    return MyBox();
                  },
                ),
              ),
            ),
            MyTile()
          ],
        ),
      ),
        ],
      ),
    );
  }
}