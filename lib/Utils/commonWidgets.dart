import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meditation_app/Utils/colors.dart';

Text BigText(String text, double size) {
  return Text(
    text,
    style: TextStyle(
      color: bigTextColor,
      fontWeight: FontWeight.bold,
      fontSize: size,
    ),
  );
}

Text mediumText(String text, double size) {
  return Text(
    text,
    style: TextStyle(
      color: mediumtextColor,
      fontWeight: FontWeight.normal,
      fontSize: size,
    ),
  );
}

Text smallText(String text, double size) {
  return Text(
    text,
    style: TextStyle(
      color: smallTextColor,
      fontWeight: FontWeight.normal,
      fontSize: size,
    ),
  );
}

//Sized boxes for Spacing
SizedBox showBigHeight() {
  return const SizedBox(
    height: 20,
  );
}

SizedBox showMediumHeight() {
  return const SizedBox(
    height: 15,
  );
}

SizedBox showsmallHeight() {
  return const SizedBox(
    height: 10,
  );
}
//TextFormFields

TextFormField showTextFormField(
  {
    required IconData? icon,
    required String? hintText,

  }
) {
  return TextFormField(
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      prefixIcon: const Icon(Icons.search_outlined, color: Colors.black12,size: 19,),
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.black12, fontSize: 17),
      suffixIcon: Icon(icon),
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        
        ),
    ),
  );
}
 List itemImages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJWmqxwQGyXVWcVdqO64eX1qK3vRWZAvHyl4LH9PwyEQ&s',
    'https://hips.hearstapps.com/hmg-prod/images/best-15-minute-workout-videos-1606848390.jpg?crop=0.668xw:1.00xh;0.314xw,0&resize=1200:*',
    "https://bcu.imgix.net/stress-133160009467145303.jpg?auto=format&fm=jpg",
    "https://www.shutterstock.com/image-photo/woman-pets-dog-nature-sunset-600nw-1768046714.jpg",
  ];
  List itemTitle = [
    'How to cope with Stress',
        "15 minutes of exercise",
        "Serious Meditation on learning ",
        "Interacting with Pets",
  ];
  List itemsDescription = [
    "Article",
    'Video',
    "Workouts",
    "Dogs",
  ];