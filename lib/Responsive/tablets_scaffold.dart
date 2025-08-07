import 'package:flutter/material.dart';
import 'package:responsive_ui/Utils/my_box.dart';
import 'package:responsive_ui/Utils/my_tile.dart';
import 'package:responsive_ui/constants.dart';

class TabletsScaffold extends StatefulWidget {
  const TabletsScaffold({super.key});

  @override
  State<TabletsScaffold> createState() => _TabletsScaffoldState();
}

class _TabletsScaffoldState extends State<TabletsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: myDrawer,
      backgroundColor: myDefaultColor,
      body: Expanded(
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
    );
  }
}
