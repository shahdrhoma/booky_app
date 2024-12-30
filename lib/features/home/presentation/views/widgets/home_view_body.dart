import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_listview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedBooksListView(),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      SliverFillRemaining(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: BestSellerListView(),
        ),
      )
    ]);
  }
}
