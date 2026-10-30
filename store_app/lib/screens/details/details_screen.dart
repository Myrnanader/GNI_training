import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/utils/responsive.dart';
import '../../models/shoe_model.dart';
import 'widgets/bottom_cart_bar.dart';
import 'widgets/details_app_bar.dart';
import 'widgets/shoe_360_viewer.dart';
import 'widgets/shoe_info_card.dart';

class DetailsScreen extends StatefulWidget {
  final ShoeModel shoe;
  const DetailsScreen({super.key, required this.shoe});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late String _selectedImage = widget.shoe.image;

  @override
  Widget build(BuildContext context) {
    final shoe = widget.shoe;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const DetailsAppBar(),
            Shoe360Viewer(image: _selectedImage),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(24.s)),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.fromLTRB(16.s, 20.s, 16.s, 0),
                        child: ShoeInfoCard(
                          shoe: shoe,
                          selectedImage: _selectedImage,
                          onGallerySelect: (img) =>
                              setState(() => _selectedImage = img),
                        ),
                      ),
                    ),
                    BottomCartBar(price: shoe.price),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}