import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imminex/app/routes/app_pages.dart';

class WebHomeView extends StatelessWidget {
  const WebHomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(Get.width, 70),
        child: Container(
          padding: const EdgeInsets.only(left:20, right: 20, top: 25, bottom: 25),
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hi, H.K. Gandhi"),
              Row(
                children: [
                   InkWell(
                     onTap: () => {},
                    child: Image.asset('assets/icons/google-translate.png',),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: () => Get.toNamed(Routes.NOTIFICATION),
                    child: Icon(Icons.notifications_none_rounded, size: 30,),
                  )
                ],
              )
            ],
          ),
        ), ),
       body: Container(
         color: Colors.blue,
       ),
      
    );
  }
}