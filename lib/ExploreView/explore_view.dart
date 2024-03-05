import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meditation_app/Utils/commonWidgets.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: BigText("Explore", 22),
            ),
            showMediumHeight(),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: showTextFormField(icon: null, hintText: "Search"),
            ),
            showMediumHeight(),
            Container(
              height:150,
              child: Expanded(
                child: ListView.builder(
                    itemCount: exploreActivitiesList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 240, 194, 191),
                                shape: BoxShape.circle,
                              ),
                            ),
                            showMediumHeight(),
                            Text(
                              exploreActivitiesList[index],
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 18),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
            showMediumHeight(),
            Expanded(
              child: ListView.builder(
                itemCount: exploreDescriptions.length,
                itemBuilder: (context, index){
                    return Container(
                        margin: const EdgeInsets.all(15),
                        padding: const EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height / 3.25,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 253, 243, 243),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(255, 231, 229, 229),
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  offset: Offset.zero),
                            ]),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(exploreTitles[index], 18),
                                showsmallHeight(),
                                mediumText(exploreDescriptions[index], 15),
                              ],
                            ),
                            const SizedBox(width: 40,),
                           const CircleAvatar(
                            radius: 20,
                          backgroundColor: const Color.fromARGB(255, 235, 226, 226),
                          child: CircleAvatar(
                            radius: 10,
                          backgroundColor: Colors.red,
                          child: Center(child: Icon(Icons.play_arrow, color: Colors.white,size: 9,)),
                           )  ,
                           )                       
                          ],
                        ),
                      );
                    
                }))
          ],
        ),
      ),
    );
  }

  List exploreActivitiesList = [
    "Meditate",
    "Exercise",
    "Sleep",
    "Focus",
    "Self Exercise",
  ];
  List exploreTitles = [
    "Beginning Meditation",
    "Breathing Work Guide",
    "15 Minutes of Exercise",
  ];
  List exploreDescriptions = [
    "Instructions for Beginners who are new\n to meditation",
    "Guidelines for organizing proper work of\n the respiratory system",
    "Make time 15 minutes of exercise every \n day for those of you who are busy with\n activities"
  ];
}
