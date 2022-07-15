import 'package:flutter/material.dart';
import 'package:imminex/base/colors.dart';
import '../../../../../../widgets/web_customized_view.dart';

class WebMoreView extends StatelessWidget {
  const WebMoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebCustomizedView(
        title: "More",
        actions: [
          InkWell(
            child: Row(
              children: [
                Image.asset(
                  "assets/web/icons/logout.png",
                  height: 25,
                  width: 25,
                  color: appPrimaryColor,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Logout",
                  style: TextStyle(),
                )
              ],
            ),
          )
        ],
        body: ListView(
          children: [
            _MoreTile(
              assetValue: 'profile.png',
              title: "Profile",
              onCardTap: () {},
            ),
            _MoreTile(
              assetValue: 'payment.png',
              title: "Subscription And Payment",
              onCardTap: () {},
            ),
            _MoreTile(
             
              assetValue: 'testimonials.png',
              title: "Testimonials",
              onCardTap: () {},
            ),
            _MoreTile(
              assetValue: 'about_us.png',
              title: "About Us",
              onCardTap: () {},
            ),
            _MoreTile(
              assetValue: 'phone.png',
              title: "Contact Us",
              onCardTap: () {},
            ),
            _MoreTile(
              assetValue: 'privacy_policy.png',
              title: "Privacy Policy",
              onCardTap: () {},
            ),
            _MoreTile(
              assetValue: 'Terms_condition.png',
              title: "Terms And Conditions",
              onCardTap: () {},
            ),
          ],
        ));
  }
}

class _MoreTile extends StatelessWidget {
  final String title, assetValue;
  final void Function()? onCardTap;
  const _MoreTile(
      {Key? key, required this.title, required this.assetValue, this.onCardTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding:
              const EdgeInsets.only(left: 25, right: 20, top: 15, bottom: 15),
          leading: Image.asset(
            "assets/web/icons/$assetValue",
            height: 30,
            width: 30,
          ),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          onTap: onCardTap,
        ),
        Divider(
          height: 0,
        )
      ],
    );
  }
}
