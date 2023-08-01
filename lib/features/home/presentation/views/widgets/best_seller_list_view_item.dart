import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'books_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            // we put images in a container with a fixed height and width as not all images have the same size
            child: Container(
              decoration: BoxDecoration(
                // we removed const keyword that was before BoxDecoration when added borderRadius
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  image: const DecorationImage(
                      image: AssetImage(
                        AssetsData.testImage,
                      ),
                      fit: BoxFit.fill)),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text(
                    'Harry Potter and the Goblet of fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                ),
                const SizedBox(height: 3,),
                const Text('J.K Rowling'),
                const SizedBox(height: 3,),
                Row(
                  children: [
                    Text('19.99 \$', style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                    const Spacer(),
                    const BooksRating(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


