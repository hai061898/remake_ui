import 'package:flutter/material.dart';
import 'package:re_ui/responsive/travel_dashboard/data/models/dist_info.dart';
import 'package:re_ui/responsive/travel_dashboard/data/models/place_model.dart';
import 'package:re_ui/responsive/travel_dashboard/ui/helpers/responsive.dart';
import 'package:re_ui/responsive/travel_dashboard/ui/themes/colors.dart';

import 'components/distination_card.dart';
import 'components/head_rt.dart';
import 'components/place_card_rt.dart';
import 'components/side_bar_cr.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: kBgColor, borderRadius: BorderRadius.circular(50.0)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  Responsive(
                      mobile: _size.width <= 420 ? const MobHeader() : const Header(),
                      desktop: const Header()),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 360,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: places.length,
                      itemBuilder: (context, index) => PlaceCard(
                        place: places[index],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Best Destination",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Responsive(
                          mobile: _size.width <= 420
                              ? Column(
                                  children: List.generate(
                                      distination.length,
                                      (index) => DistinationCardMob(
                                            distInfo: distination[index],
                                          )),
                                )
                              : Column(
                                  children: List.generate(
                                      distination.length,
                                      (index) => DistinationCard(
                                            distInfo: distination[index],
                                          )),
                                ),
                          desktop: Column(
                            children: List.generate(
                                distination.length,
                                (index) => DistinationCard(
                                      distInfo: distination[index],
                                    )),
                          ),
                        ),
                        const Divider(
                          thickness: 3,
                          color: kBgColor,
                        ),
                        if (Responsive.isMobile(context)) const SideBar(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
