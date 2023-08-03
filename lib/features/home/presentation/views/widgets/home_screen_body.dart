import 'package:flutter/material.dart';
import 'package:reads/core/utils/styles.dart';
import 'books_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // to be able to scroll the entire screen not just the portion of the best seller list view
    return CustomScrollView(
      // slivers any widget you want to scroll
      slivers: [
        // to be able to add widgets
        SliverToBoxAdapter(
          // column widget is of the widgets that allows if a child wants to expand through using expanded widget
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBAr(),
              ),
              // and the list view is a widget that needs to be expanded as it doesn't know it's items number ,
              // but we have decided the height for the list view so it won't need the expanded widget
              CustomBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Best seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}





