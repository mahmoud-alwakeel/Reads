import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(FontAwesomeIcons.solidStar , color: Color(0xffFFDD4F),),
        SizedBox(width: 6,),
        Text('4.8', style: Styles.textStyle16,),
        SizedBox(width: 5,),
        Text('(2340)', style: Styles.textStyle14,),
      ],
    );
  }
}