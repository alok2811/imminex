import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:imminex/base/colors.dart';

class MessageMobile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: appBlackColor,))
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
              decoration: BoxDecoration(
                color: appBlueColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: appWhiteColor,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('assets/icons/chats_us.png'),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        maxLines: 2,
                          text: TextSpan(
                            style: TextStyle(
                              color: appWhiteColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w300
                            ),
                          children:[
                          TextSpan(text: "Chat with an "),
                          TextSpan(text: "internal reprenesentative ", style: TextStyle(fontWeight: FontWeight.w600,  fontSize: 26,)),
                          TextSpan(text: "now"),
                        ]
                      )),
                      SizedBox(height: 15,),
                      ElevatedButton(onPressed: (){}, child: Text("Start Conversation", style: TextStyle(color: appGreyColor),), style: ElevatedButton.styleFrom(primary: appWhiteColor),)
                    ],
                  ))
                ],
              ),
            ),

            ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 20,
                shrinkWrap: true,
                itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(faker.image.image(random: true)),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text(faker.person.name()),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(faker.lorem.sentence(), style: TextStyle(color: appBlackColor), maxLines: 2, overflow: TextOverflow.ellipsis,),
                                  SizedBox(height: 5,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("2m ago"),
                                      Row(
                                        children: [
                                          Text("Read "),
                                          Icon(Icons.check)
                                        ],
                                      ),

                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                );
                }),
          ],
        ),
      ),
    );
  }
}

//Center(
//       child: ElevatedButton(onPressed: (){
//         print(faker.person.prefix());
//         print(faker.image.image());
//       }, child: Text("press me"),),
//     );