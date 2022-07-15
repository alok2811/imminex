import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imminex/app/routes/app_pages.dart';

class ConsultationsMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consultations"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        child: Icon(Icons.add),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListTile(
            title: Text("Business immigration"),
            onTap: ()=> Get.toNamed(Routes.CONSULTATIONS_DETAIL),
            subtitle: Text("For most people, the best thing to do is work with an attorney who’s a member of AILA....", maxLines: 3, overflow: TextOverflow.ellipsis,),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Replies", style: TextStyle(fontSize: 12),textAlign: TextAlign.right,),
                Text('25,356,852', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),)
              ],
            ),
          ),
          Divider(),

          ListTile(
            title: Text("Green cards"),
            onTap: ()=> Get.toNamed(Routes.CONSULTATIONS_DETAIL),
            subtitle: Text("For most people, the best thing to do is work with an attorney who’s a member of AILA....", maxLines: 3, overflow: TextOverflow.ellipsis,),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Replies", style: TextStyle(fontSize: 12),textAlign: TextAlign.right,),
                Text('2,008', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),)
              ],
            ),
          ),
          Divider(),

          ListTile(
            title: Text("Deportation defense"),
            onTap: ()=> Get.toNamed(Routes.CONSULTATIONS_DETAIL),
            subtitle: Text("For most people, the best thing to do is work with an attorney who’s a member of AILA....", maxLines: 3, overflow: TextOverflow.ellipsis,),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Replies", style: TextStyle(fontSize: 12),textAlign: TextAlign.right,),
                Text('85,456', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),)
              ],
            ),
          ),
          Divider(),

          ListTile(
            title: Text("Best Strategy For My Case"),
            onTap: ()=> Get.toNamed(Routes.CONSULTATIONS_DETAIL),
            subtitle: Text("For most people, the best thing to do is work with an attorney who’s a member of AILA....", maxLines: 3, overflow: TextOverflow.ellipsis,),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Replies", style: TextStyle(fontSize: 12),textAlign: TextAlign.right,),
                Text('95,254', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),)
              ],
            ),
          ),
          Divider(),

          ListTile(
            title: Text("Family immigration"),
            onTap: ()=> Get.toNamed(Routes.CONSULTATIONS_DETAIL),
            subtitle: Text("For most people, the best thing to do is work with an attorney who’s a member of AILA....", maxLines: 3, overflow: TextOverflow.ellipsis,),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Replies", style: TextStyle(fontSize: 12),textAlign: TextAlign.right,),
                Text('230', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),)
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
