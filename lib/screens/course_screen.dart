import 'package:educ_app/widgets/description_section.dart';
import 'package:educ_app/widgets/video_section.dart';
import 'package:flutter/material.dart';

class CourseSreen extends StatefulWidget {

  String img;
  CourseSreen(this.img);
  @override
  State<CourseSreen> createState() => _CourseSreenState();
}

class _CourseSreenState extends State<CourseSreen> {
  bool isVideosSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Padding(padding:EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Color(0xff674AEf),

            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xfff5f3ff),
                image: DecorationImage(
                  image: AssetImage("images/${widget.img}.png"),
                ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Color(0xff674AEf),
                    size: 45,
                  ),
                ),
              ),

            ),
            SizedBox(height: 15),
            Text(
              "${widget.img} Complete Course",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Created by Dear Programmer",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),

              ),
            ),
          SizedBox(height: 15),
          Text(
              "55 Videos",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),

        ),),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xfff5f3ff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    //if isvideosSection Condition   is true   then other that Color will be on Button and
                    //if condition is false then that color will be shown on button but with some opacity
                    color: isVideosSection ? Color(0xff674AEf) : Color(0xff674AEf).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        //change Value of isvideosSection
                        setState(() {
                          isVideosSection = true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical:15 ,horizontal: 35),
                        child: Text(
                          "Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,

                          ),
                        ),

                      ),

                    ),
                  ),
                  Material(
                    color: isVideosSection? Color(0xff674AEf).withOpacity(0.6): Color(0xff674AEf) ,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideosSection= false;
                        });

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical:15 ,horizontal: 35),
                        child: Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,

                          ),
                        ),

                      ),

                    ),
                  ),
                ],
              ),
            ),
            //Videos And Description Section
            SizedBox(height: 10),
            //if isVideosSection condition  is True  then VideoSection will be shown and
            //if condition is false it means DescriptionSection will be shown
            isVideosSection ? VideoSection() : DescriptionSection() ,

          ],
        ),
      ),
    );
  }
}
