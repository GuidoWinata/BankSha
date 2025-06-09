import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class PackageItems extends StatelessWidget {
  final String package;
  final String price;
  final bool isSelected;

  const PackageItems({
    super.key,
    required this.package,
    required this.price,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      height: 175,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 22),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${package}GB',
            style: blackTextStyle.copyWith(fontSize: 32, fontWeight: medium),
          ),
          const SizedBox(height: 2),
          Text('Rp $price', style: greyTextStyle.copyWith(fontSize: 12)),
        ],
      ),
    );
    ;
  }
}
