import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      // we passed it to the constructor so we can decide depending on the page where do we want the mainAxisAlignment
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(FontAwesomeIcons.solidStar, size: 16 , color: Color(0xffFFDD4F),),
        SizedBox(width: 6,),
        Text('4.8', style: Styles.textStyle16,),
        SizedBox(width: 5,),
        Opacity(
          opacity: 0.8,
            child: Text('(2340)', style: Styles.textStyle14,)),
      ],
    );
  }
}