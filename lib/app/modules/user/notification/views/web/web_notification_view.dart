import 'package:flutter/material.dart';
import 'package:imminex/base/colors.dart';
import 'package:imminex/widgets/web_customized_view.dart';

class WebNotifcationView extends StatelessWidget {
  const WebNotifcationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebCustomizedView(
      title: "Notifications",
      body: ListView.builder(
          itemCount: 100,
          padding: EdgeInsets.zero,
          itemBuilder: ((context, index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: appBlueColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RichText(
                              textScaleFactor: 1,
                              text: TextSpan(
                                text: '',
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: 'Zuch Marian ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: 'sent proposal request on ',
                                      style:
                                          TextStyle(color: appMediumGreyColor)),
                                  TextSpan(
                                      text: 'Student Visa ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: 'Post',
                                      style:
                                          TextStyle(color: appMediumGreyColor)),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "34 min Ago",
                              style: TextStyle(
                                  fontSize: 10, color: appMediumGreyColor),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.cancel))
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 0,
                  )
                ],
              ))),
    );
  }
}
