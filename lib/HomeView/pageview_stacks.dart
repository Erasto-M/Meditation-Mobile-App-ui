import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/Utils/commonWidgets.dart';

class PageViewStacks extends StatefulWidget {
  const PageViewStacks({super.key});

  @override
  State<PageViewStacks> createState() => _PageViewStacksState();
}

class _PageViewStacksState extends State<PageViewStacks> {
  int? selectedContainer;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        children: [
          Expanded(
              child: PageView(
            onPageChanged: (index) {
              setState(() {
                selectedContainer = index;
              });
            },
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: MediaQuery.of(context).size.height / 3.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(31, 246, 166, 166),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText("Beginner Level", 20),
                          mediumText("If you are Completely Beginner", 17),
                          showsmallHeight(),
                          Container(
                            margin: const EdgeInsets.all(20),
                            padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              left: 20,
                              right: 20,
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Text(
                              "Learn More",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 20,
                      child: Container(
                        height: 180,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(90),
                              bottomRight: Radius.circular(90),
                            ),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://images.pexels.com/photos/3076509/pexels-"
                                  "photo-3076509.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                ))),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: MediaQuery.of(context).size.height / 3.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(31, 246, 166, 166),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText("Intermediate Level", 20),
                          mediumText("If you  have some basics", 17),
                          showsmallHeight(),
                          Container(
                            margin: const EdgeInsets.all(20),
                            padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              left: 20,
                              right: 20,
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Text(
                              "Learn More",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 20,
                      child: Container(
                        height: 180,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(90),
                              bottomRight: Radius.circular(90),
                            ),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSW3VVqnNyKzF2AyaREkiGoC3d8o2q-FGAd7O1wigOLQ&s"))),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: MediaQuery.of(context).size.height / 3.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(31, 246, 166, 166),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText("Experienced Level ", 20),
                          mediumText("If you are Experienced", 17),
                          showsmallHeight(),
                          Container(
                            margin: const EdgeInsets.all(20),
                            padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              left: 20,
                              right: 20,
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Text(
                              "Learn More",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 20,
                      child: Container(
                        height: 180,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(90),
                              bottomRight: Radius.circular(90),
                            ),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://st.depositphotos.com/1905705/2292/v/450/depositphotos"
                                  "_22927726-stock-illustration-beautiful-girl-making-exercises.jpg",
                                ))),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                Padding(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedContainer = i;
                      });
                    },
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            selectedContainer == i ? Colors.red : Colors.grey,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
