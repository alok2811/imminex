import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../../../../../base/colors.dart';

class ConsultationsDetailMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhiteColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text('Consultations Detail'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: appViewGreyColor,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Business immigration',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: appBlackColor),
                    )),
                    Text(
                      '34 mins',
                      style: TextStyle(fontSize: 10, color: appBlackColor),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      'For most people, the best thing to do is work with an attorney who’s a member of AILA.'
                      ' Immigration laws can change quickly, and being part of a professional'
                      ' association helps ensure that the attorney you’re working with is continually receiving new information.',
                      style: TextStyle(fontSize: 13, color: appGreyColor),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10, top: 5, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/ic_study_visa.png',
                      width: 18,
                      height: 18,
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        'Student Visa',
                        style: TextStyle(
                            fontSize: 10,
                            color: appBlackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                width: Get.width,
                height: 1,
                color: appViewGreyColor,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Replies',
                          style: TextStyle(color: appBlackColor, fontSize: 13)),
                      TextSpan(
                          text: ' 25,356,852',
                          style: TextStyle(color: appRedInfo, fontSize: 13))
                    ])),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Text('Filter',
                          style: TextStyle(color: appBlackColor, fontSize: 13)),
                    ),
                    Image.asset(
                      'assets/icons/ic_filter.png',
                      width: 12,
                      height: 12,
                    )
                  ],
                ),
              ),
              Container(
                width: Get.width,
                height: 1,
                color: appViewGreyColor,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: returnConsultantProposalList(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget returnConsultantProposalList() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int itemIndex) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25, // Image radius
                    backgroundImage: NetworkImage(
                        'https://m.media-amazon.com/images/M/MV5BZTdkYThhMmMtMTBhOS00MzI3LThmOWItMzBiN2QyMjFhMDk0XkEyXkFqcGdeQXVyNzk1OTg5Nzc@._V1_.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'H.K Gandhi',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            )),
                            RatingBar.builder(
                              itemSize: 15,
                              itemPadding: EdgeInsets.zero,
                              wrapAlignment: WrapAlignment.start,
                              initialRating: 5,
                              minRating: 5,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemCount: 5,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0).copyWith(top: 0,bottom: 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  maxLines: 3,
                                  'Hi Dear Hope you are doing well!! '
                                  'Student Visa: Foreign citizens who come to study in the U.S. '
                                  'are required to be accepted by the school or program',
                                  style: TextStyle(
                                    color: appBlackColor,
                                    fontSize: 10,
                                    height: 1.2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: InkWell(
                            onTap: (){

                            },
                            child: Text('View proposal',
                                style: TextStyle(
                                    color: appRedInfo, fontSize: 10)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('34 mins',style: TextStyle(fontSize: 10),),
                              Spacer(),
                              Image.asset('assets/icons/ic_pdf.png',height: 12,width: 12,)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          );
        });
  }
}
