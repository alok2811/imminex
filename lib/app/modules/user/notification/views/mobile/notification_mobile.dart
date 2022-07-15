import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:imminex/base/colors.dart';

class NotificationMobile extends StatelessWidget {
  const NotificationMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(faker.image.image(random: true)),
                ),
                Expanded(
                  child: ListTile(
                    title:  RichText(text: TextSpan(
                      style: TextStyle(color: appBlackColor),
                      children: [
                        TextSpan(text: faker.person.name(), style: TextStyle(fontWeight: FontWeight.w600)),
                        TextSpan(text: " sent proposal request on ", style: TextStyle(fontWeight: FontWeight.w300)),
                        TextSpan(text: "Student Visa ", style: TextStyle(fontWeight: FontWeight.w600)),
                        TextSpan(text: "post", style: TextStyle(fontWeight: FontWeight.w300)),
                      ]
                    ),),//Text("${faker.person.name()} sent proposal request on Student Visa Post"),  sent proposal request on

                    subtitle: Text("34 min Ago"),
                  ),
                )
              ],
            ),
            Divider(),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(faker.image.image(random: true)),
                ),
                Expanded(
                  child: ListTile(
                    title:  RichText(text: TextSpan(
                      style: TextStyle(color: appBlackColor),
                        children: [
                          TextSpan(text: faker.person.name(), style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: " sent proposal request on ", style: TextStyle(fontWeight: FontWeight.w300)),
                          TextSpan(text: "Student Visa ", style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: "post", style: TextStyle(fontWeight: FontWeight.w300)),
                        ]
                    ),),//Text("${faker.person.name()} sent proposal request on Student Visa Post"),  sent proposal request on

                    subtitle: Text("50 min Ago"),
                  ),
                )
              ],
            ),
            Divider(),


            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(faker.image.image(random: true)),
                ),
                Expanded(
                  child: ListTile(
                    title:  RichText(text: TextSpan(
                        style: TextStyle(color: appBlackColor),
                        children: [
                          TextSpan(text: faker.person.name(), style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: " sent proposal request on ", style: TextStyle(fontWeight: FontWeight.w300)),
                          TextSpan(text: "Student Visa ", style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: "post", style: TextStyle(fontWeight: FontWeight.w300)),
                        ]
                    ),),//Text("${faker.person.name()} sent proposal request on Student Visa Post"),  sent proposal request on

                    subtitle: Text("55 min Ago"),
                  ),
                )
              ],
            ),
            Divider(),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(faker.image.image(random: true)),
                ),
                Expanded(
                  child: ListTile(
                    title:  RichText(text: TextSpan(
                        style: TextStyle(color: appBlackColor),
                        children: [
                          TextSpan(text: faker.person.name(), style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: " sent proposal request on ", style: TextStyle(fontWeight: FontWeight.w300)),
                          TextSpan(text: "Student Visa ", style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: "post", style: TextStyle(fontWeight: FontWeight.w300)),
                        ]
                    ),),//Text("${faker.person.name()} sent proposal request on Student Visa Post"),  sent proposal request on

                    subtitle: Text("58 min Ago"),
                  ),
                )
              ],
            ),
            Divider(),

            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(faker.image.image(random: true)),
                ),
                Expanded(
                  child: ListTile(
                    title:  RichText(text: TextSpan(
                        style: TextStyle(color: appBlackColor),
                        children: [
                          TextSpan(text: faker.person.name(), style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: " sent proposal request on ", style: TextStyle(fontWeight: FontWeight.w300)),
                          TextSpan(text: "Student Visa ", style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: "post", style: TextStyle(fontWeight: FontWeight.w300)),
                        ]
                    ),),//Text("${faker.person.name()} sent proposal request on Student Visa Post"),  sent proposal request on

                    subtitle: Text("Yesterday"),
                  ),
                )
              ],
            ),
            Divider(),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(faker.image.image(random: true)),
                ),
                Expanded(
                  child: ListTile(
                    title:  RichText(text: TextSpan(
                        style: TextStyle(color: appBlackColor),
                        children: [
                          TextSpan(text: faker.person.name(), style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: " sent proposal request on ", style: TextStyle(fontWeight: FontWeight.w300)),
                          TextSpan(text: "Student Visa ", style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: "post", style: TextStyle(fontWeight: FontWeight.w300)),
                        ]
                    ),),//Text("${faker.person.name()} sent proposal request on Student Visa Post"),  sent proposal request on

                    subtitle: Text("Yesterday"),
                  ),
                )
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
