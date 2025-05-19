import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeServiceItems extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  const HomeServiceItems({
    super.key,
    required this.iconUrl,
    this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 8),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColor,
          ),
          child: Center(child: Image.asset(iconUrl, width: 26)),
        ),
        Text(title, style: blackTextStyle.copyWith(fontWeight: medium)),
      ],
    );
  }
}
