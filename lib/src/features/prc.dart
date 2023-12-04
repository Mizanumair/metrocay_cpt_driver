import 'package:flutter/material.dart';

class Prc extends StatelessWidget {
  const Prc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: IconButton(onPressed: (){
          return _showDraggableSheet(context);
        }, icon: Icon(Icons.access_time)),
      ),
    );
  }

  void _showDraggableSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.5,
          minChildSize: 0.1,
          maxChildSize: 0.8,
          expand: true,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text('Item $index'),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      onPressed: () {
                        // Add your FAB click logic here
                        print('Floating Action Button Clicked');
                      },
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
