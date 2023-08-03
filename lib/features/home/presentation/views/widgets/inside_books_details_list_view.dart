import 'package:flutter/material.dart';
import 'package:reads/features/home/presentation/views/widgets/custom_book_item.dart';

class InsideBooksDetailsListView extends StatelessWidget {
  const InsideBooksDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // to make height responsive to the device size
      height:  MediaQuery.of(context).size.height * .14,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(),
          );
        },

      ),
    );
  }
}