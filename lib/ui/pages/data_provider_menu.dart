import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/data_provider_item.dart';
import 'package:flutter/material.dart';

class DataProviderMenu extends StatelessWidget {
  const DataProviderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Beli Data')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Text(
                'From Wallet',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset('assets/img_card_mini.png', width: 80),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '8008 2208 1996',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Balance: Rp 180.000.000',
                        style: greyTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Text(
                'Select Provider',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 14),
              DataProviderItem(
                imageUrl: 'assets/img_telkomsel.png',
                title: 'Telkomsel',
                isAvailable: true,
                isSelected: true,
              ),
              DataProviderItem(
                imageUrl: 'assets/img_indosat.png',
                title: 'Indosat Ooredoo',
                isAvailable: true,
              ),
              DataProviderItem(
                imageUrl: 'assets/img_singtel.png',
                title: 'Singtel ID',
                isAvailable: true,
              ),
              const SizedBox(height: 100),
              CustomFilledButton(
                title: 'Continue',
                onPressed: () {
                  Navigator.pushNamed(context, '/select-package');
                },
              ),
              const SizedBox(height: 57),
            ],
          ),
        ],
      ),
    );
  }
}
