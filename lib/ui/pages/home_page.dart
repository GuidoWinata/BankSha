import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/home_latest_transactions.dart';
import 'package:bank_sha/ui/widgets/home_service_items.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_overview.png',
                width: 20,
                color: blueColor,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/ic_history.png', width: 20),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/ic_statistik.png', width: 20),
              label: 'Statistik',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/ic_reward.png', width: 20),
              label: 'Reward',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        shape: CircleBorder(),
        child: Image.asset('assets/ic_plus_circle.png', width: 24),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(),
          buildWalletCard(),
          buildLevel(),
          buildServices(),
          buildLatestTransaction(),
        ],
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Guido,', style: greyTextStyle.copyWith(fontSize: 16)),
              const SizedBox(height: 2),
              Text(
                'winataputra',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/img_profile.png'),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor,
                ),
                child: Center(
                  child: Icon(Icons.check_circle, color: greenColor, size: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: EdgeInsets.all(30),
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/img_bg_card.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Guido Winata',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
          SizedBox(height: 28),
          Text(
            '**** **** **** 1280',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
              letterSpacing: 4,
            ),
          ),
          const SizedBox(height: 21),
          Text('Balance', style: whiteTextStyle),
          Text(
            'Rp 784.500',
            style: whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          ),
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style: blackTextStyle.copyWith(fontWeight: medium),
              ),
              const Spacer(),
              Text(
                '55% ',
                style: greenTextStyle.copyWith(fontWeight: semiBold),
              ),
              Text(
                'of Rp 20.000',
                style: blackTextStyle.copyWith(fontWeight: semiBold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          LinearProgressIndicator(
            value: 0.55,
            valueColor: AlwaysStoppedAnimation(greenColor),
            backgroundColor: lightBackgroundColor,
            borderRadius: BorderRadius.circular(55),
            minHeight: 5,
          ),
        ],
      ),
    );
  }

  Widget buildServices() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItems(
                iconUrl: 'assets/ic_topup.png',
                title: 'Top Up',
                onTap: () {},
              ),
              HomeServiceItems(
                iconUrl: 'assets/ic_send.png',
                title: 'Send',
                onTap: () {},
              ),
              HomeServiceItems(
                iconUrl: 'assets/ic_withdraw.png',
                title: 'Withdraw',
                onTap: () {},
              ),
              HomeServiceItems(
                iconUrl: 'assets/ic_more.png',
                title: 'More',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLatestTransaction() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transactions',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: whiteColor,
            ),
            child: Column(
              children: [
                HomeLatestTransactions(
                  iconUrl: 'assets/ic_trx_topup.png',
                  title: 'Top Up',
                  time: 'Yesterday',
                  value: '+ 450.000',
                ),
                HomeLatestTransactions(
                  iconUrl: 'assets/ic_trx_cashback.png',
                  title: 'Cashback',
                  time: 'Sep 11',
                  value: '+ 22.000',
                ),
                HomeLatestTransactions(
                  iconUrl: 'assets/ic_trx_withdraw.png',
                  title: 'Withdraw',
                  time: 'Sep 2',
                  value: '- 5.000',
                ),
                HomeLatestTransactions(
                  iconUrl: 'assets/ic_trx_transfer.png',
                  title: 'Transfer',
                  time: 'Aug 27',
                  value: '- 123.500',
                ),
                HomeLatestTransactions(
                  iconUrl: 'assets/ic_trx_electric.png',
                  title: 'Electric',
                  time: 'Feb 18',
                  value: '- 12.300.000',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
