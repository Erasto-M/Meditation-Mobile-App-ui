import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meditation_app/HomeView/Gridview_builder.dart';
import 'package:meditation_app/HomeView/pageview_stacks.dart';

import 'package:meditation_app/Utils/commonWidgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _imageShown = true;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  BigText('Hai , Lucy', 20),
                  const Spacer(),
                  Container(
                    height: 50,width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-"
                        "4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8d29tYW4lMjBwcm9maWxlfGVufDB8fDB8fHww")
                        ),
                      
                      border: Border.all(
                        color: Colors.red,
                        width: 1,
                      )
                    ),
                  ),
              
                ],
              ),
              smallText("Great to see you again", 15),
              showBigHeight(),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: showTextFormField(
                    icon: Icons.record_voice_over_outlined, hintText: "Search"),
              ),
              showBigHeight(),
              BigText("Challenge", 20),
              showMediumHeight(),
              const PageViewStacks(),
              showMediumHeight(),
              Row(
                children: [
                  BigText("Featured Content", 20),
                  const Spacer(),
                  const Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.w200),
                  )
                ],
              ),
              showMediumHeight(),
              const GridViewBuilder(),
            ],
          ),
        ),
      ),
    );
  }

 
}
