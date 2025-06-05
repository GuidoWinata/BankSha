import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFormFields extends StatelessWidget {
  final String title;
  final bool obsecureText;
  final TextEditingController? controller;
  final bool isShowTitle;

  const CustomFormFields({
    super.key,
    this.controller,
    required this.title,
    this.obsecureText = false,
    this.isShowTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowTitle)
          Text(title, style: blackTextStyle.copyWith(fontWeight: medium)),
        if (isShowTitle) SizedBox(height: 8),
        TextFormField(
          obscureText: obsecureText,
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            contentPadding: const EdgeInsets.all(12),
            hintText: !isShowTitle ? title : null,
          ),
        ),
      ],
    );
  }
}
