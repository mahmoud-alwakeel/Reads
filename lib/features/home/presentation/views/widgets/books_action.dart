import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: const [
          Expanded(
            child: CustomButton(
              text: '19.99\$',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16), topLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              fontSize: 16.0,
              text: 'free preview',
              backgroundColor: Colors.orangeAccent,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}