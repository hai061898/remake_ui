import 'package:flutter/material.dart';
import 'package:re_ui/responsive/travel_dashboard/ui/helpers/responsive.dart';
import 'package:re_ui/responsive/travel_dashboard/ui/screens/dashboard/components/side_bar_cr.dart';

import 'components/menu.dart';
import 'dashboard_rt.dart';

class MainDRT extends StatefulWidget {
  const MainDRT({Key? key}) : super(key: key);

  @override
  _MainDRTState createState() => _MainDRTState();
}

class _MainDRTState extends State<MainDRT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                child: Center(
              child: Text(
                "Travel",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )),
            MenuCardList(
              icon: Icons.dashboard,
              press: () {},
              inactiveColor: true,
              title: 'Dashboard',
            ),
            MenuCardList(
              icon: Icons.card_giftcard,
              press: () {},
              title: 'My Tickets',
            ),
            MenuCardList(
              icon: Icons.favorite_outline,
              press: () {},
              title: 'Favourite',
            ),
            MenuCardList(
              icon: Icons.email_outlined,
              press: () {},
              title: 'Messages',
            ),
            MenuCardList(
              icon: Icons.account_balance_wallet_outlined,
              press: () {},
              title: 'transaction',
            ),
            MenuCardList(
              icon: Icons.settings,
              press: () {},
              title: 'Setting',
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          //menu
          if (Responsive.isDesktop(context))
            const Expanded(flex: 1, child: Menu()),
          //main section
          Expanded(
              flex: 6,
              child: ListView(
                children: [
                  Row(
                    children: [
                      const Expanded(flex: 4, child: Dashboard()),
                      if (!Responsive.isMobile(context))
                        const Expanded(flex: 2, child: SideBar()),
                    ],
                  ),
                ],
              )),

          //sidebar
        ],
      ),
    );
  }
}
