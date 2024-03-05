import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meditation_app/Utils/commonWidgets.dart';

class ActivitiesView extends StatefulWidget {
  const ActivitiesView({super.key});

  @override
  State<ActivitiesView> createState() => _ActivitiesViewState();
}

class _ActivitiesViewState extends State<ActivitiesView> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 239, 239),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText("Cheer up , Lucy", 20),
              showsmallHeight(),
              mediumText(
                  "Start the day with enthusiasm."
                  "  Tick off everthing on your to-do list and make a great dat!",
                  16),
              showBigHeight(),
              Expanded(
                child: ListView.builder(
                    itemCount: activitiesTitle.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(15),
                        padding: const EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height / 3.25,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
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
                            index <=1 ?
                            Container(
                              height: 23,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 231, 163, 158),
                                  width: 1,
                                ),
                              ),
                              child: const Icon(
                                Icons.check_box,
                                color: const Color.fromARGB(255, 241, 144, 137),
                              ),
                            ):
                            Container(
                              height: 23,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color:
                                      Color.fromARGB(255, 231, 122, 114),
                                  width: 1,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(activitiesTitle[index], 18),
                                showsmallHeight(),
                                mediumText(activitiesDescription[index], 15),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: 150,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(images[index])),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List activitiesTitle = [
    "Mindful Meditation",
    "Active Lifestyle",
    "Healthy Food",
    "Running",
    "Walking,",
  ];
  List activitiesDescription = [
    "Doing mediatation to \n improve my focus",
    "Engaging in an active\n lifestyle to improve overall \nquality of my life",
    "Consume nutritious food \n for my healthy body",
    "Run at least\n 30 minutes a day",
    " Walk at least\n 2 kilometres a day",
  ];
  List images = [
    "https://st2.depositphotos.com/1594308/9579/i/450/depositphotos_95793324-stock-photo-beautiful-woman-meditating.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRggM4olTEhbuj4TK_6BuQWAlJFnX_kAdxHJowDoX4u6Q&s",
    "https://parade.com/.image/t_share/MTkwNTgxMjkxNjk3NTc5OTAw/istock-1203599963-jpg.jpg",
    "https://hips.hearstapps.com/hmg-prod/images/gettyimages-1341854189-6540f8266a2ef.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWY04Jo_I0P1dBdnTIR7DuYYjiEEyosz3iUHSzXyW9Qg&s",
  ];
}
