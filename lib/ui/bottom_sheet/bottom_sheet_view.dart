import 'package:flutter/material.dart';
import 'package:flutter_crane/ui/bottom_sheet/bottom_sheet_list.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildDraggableScrollableSheet(),
    );
  }
}

DraggableScrollableSheet _buildDraggableScrollableSheet() {
  return DraggableScrollableSheet(
    // expand: true,
    initialChildSize: 0.5,
    minChildSize: 0.15,
    maxChildSize: 0.95,
    builder: (BuildContext context, ScrollController scrollController) {
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: SingleChildScrollView(
          child: Scrollbar(
            child: BottomSheetList(controller: scrollController),
            // Column(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(top:30.0),
            //       child: Text("Explore Flight by Destination",
            //       style: TextStyle(
            //         fontSize: 18,
            //       ),
            //       ),
            //     ),
            //     ListView.builder(
            //       scrollDirection: Axis.vertical,
            //       shrinkWrap: true,
            //       controller: scrollController,
            //       itemCount: 25,
            //         itemBuilder: (BuildContext context, int index) {
            //         return Card(
            //           child: ListTile(
            //             leading: const Icon(Icons.ac_unit),
            //             title: Text("Item $index"),
            //             subtitle: Text("Item $index"),
            //           ),
            //         );
            //         },
            //     ),
            //   ],
            // ),
          ),
        ),
      );
    },
  );
}
