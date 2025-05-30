import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/bank_items.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Top Up')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(height: 30),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
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
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Guido Winata',
                    style: greyTextStyle.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          const BankItems(
            imageUrl: 'assets/img_bank_bca.png',
            title: 'BANK BCA',
            isSelected: true,
          ),
          const BankItems(
            imageUrl: 'assets/img_bank_bni.png',
            title: 'BANK BNI',
          ),
          const BankItems(
            imageUrl: 'assets/img_bank_mandiri.png',
            title: 'BANK Mandiri',
          ),
          const BankItems(
            imageUrl: 'assets/img_bank_ocbc.png',
            title: 'BANK OCBC',
          ),
          const SizedBox(height: 12),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/topup-amount');
            },
          ),
          const SizedBox(height: 57),
        ],
      ),
    );
  }
}
