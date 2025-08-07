import 'package:flutter/material.dart';
import 'package:responsive_ui/Utils/my_box.dart';
import 'package:responsive_ui/Utils/my_tile.dart';
import 'package:responsive_ui/constants.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultColor,
      drawer: myDrawer,
      body: Expanded(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
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
    );
  }
}
