import 'package:flutter/material.dart';
import 'package:reads/core/utils/function/launch_url.dart';
import 'package:reads/features/home/data/models/book_model/book_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children:  [
          const Expanded(
            child: CustomButton(
              text: '0.00\$',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16), topLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                launchCustomUrl(context, bookModel.volumeInfo.previewLink);
              },
              fontSize: 16.0,
              text: getText(bookModel),
              backgroundColor: Colors.orangeAccent,
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}

String getText(BookModel bookModel){
  if(bookModel.volumeInfo.previewLink == null){
    return 'Preview not available';
  } else {
    return 'Preview';
  }
}