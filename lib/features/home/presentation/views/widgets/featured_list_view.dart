import 'package:flutter/material.dart';
import 'package:reads/features/home/presentation/views/widgets/custom_list_view_item.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // to make height responsive to the device size
      height:  MediaQuery.of(context).size.height * .28,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomItemInListView(),
          );
        },

      ),
    );
  }
}