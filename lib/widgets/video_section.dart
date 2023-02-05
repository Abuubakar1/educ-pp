import 'package:flutter/material.dart';

class  DescriptionSection extends StatelessWidget {
  List  videolist=[
    'Introduction to Flutter',
    'Installing Flutter on Windows',
    'Setup Emulator On Windows',
    'Creating Our First App'


  ];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: videolist.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true ,
      itemBuilder: (context, index){
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0 ? Color(0xff674AEf): Color(0xff674AEf).withOpacity(0.6),
              shape: BoxShape.circle,

            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(
            videolist[index]),
          subtitle: Text("20 Min 50 sec"),
        );

      },


    );

        }

}
