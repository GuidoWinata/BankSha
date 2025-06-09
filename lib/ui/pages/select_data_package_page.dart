import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/package_items.dart';
import 'package:flutter/material.dart';

class SelectDataPackagePage extends StatelessWidget {
  const SelectDataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Paket Data')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Text(
                'Phone Number',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 14),
              CustomFormFields(title: '+628', isShowTitle: false),
              const SizedBox(height: 40),
              Wrap(
                spacing: 17,
                runSpacing: 18,
                children: const [
                  PackageItems(
                    package: '10',
                    price: '100000',
                    isSelected: true,
                  ),
                  PackageItems(package: '20', price: '200000'),
                  PackageItems(package: '40', price: '300000'),
                  PackageItems(package: '90', price: '1000000'),
                ],
              ),
              const SizedBox(height: 85),
              CustomFilledButton(
                title: 'Continue',
                onPressed: () async {
                  if (await Navigator.pushNamed(context, '/pin') == true) {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/topup-data-success',
                      (context) => false,
                    );
                  }
                },
              ),
              const SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
