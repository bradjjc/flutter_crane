import 'package:flutter/material.dart';

class BottomSheet extends StatelessWidget {
  const BottomSheet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildDraggableScrollableSheet(),
      ],
    );
  }
}

DraggableScrollableSheet _buildDraggableScrollableSheet (){
  return DraggableScrollableSheet(
    initialChildSize: 0.2,
    minChildSize: 0.2,
    maxChildSize: 0.8,
    builder: (BuildContext context, ScrollController scrollControllrt){
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        child: Scrollbar(
            child: ListView.builder(
              itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(Icons.ac_unit),
                  title: Text("Item $index"),
                );
                },
            ),
        ),
      );
    },
  );
}