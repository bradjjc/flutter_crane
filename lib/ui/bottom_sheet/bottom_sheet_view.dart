import 'package:flutter/material.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        _buildDraggableScrollableSheet(),

    );
  }
}

DraggableScrollableSheet _buildDraggableScrollableSheet (){
  return DraggableScrollableSheet(
    initialChildSize: 0.55,
    minChildSize: 0.15,
    maxChildSize: 0.95,
    builder: (BuildContext context, ScrollController scrollController){
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Scrollbar(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              controller: scrollController,
              itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: const Icon(Icons.ac_unit),
                    title: Text("Item $index"),
                    subtitle: Text("Item $index"),
                  ),
                );
                },
            ),
        ),

      );
    },
  );
}