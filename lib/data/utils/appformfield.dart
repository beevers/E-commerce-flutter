import 'package:flutter/material.dart';
import 'package:shopping_app/data/helpers/style_helper.dart';

class AppFormField extends StatelessWidget {
  final String image;
  final String title;
  const AppFormField({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xffF67952),
      decoration: InputDecoration(
          hintStyle: Styles.smallText(),
          hintText: title,
          prefixIcon: Container(
              margin: const EdgeInsets.only(right: 5, left: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0x1AF67952)),
              width: 48,
              height: 45,
              child: Image(image: AssetImage("assets/images/$image"))),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(width: 1.5, color: Color(0xffF67952))),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}

class SearchAppFormField extends StatelessWidget {
  final Widget icon;
  final String title;
  final String image;
  const SearchAppFormField({
    super.key,
    required this.icon,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xffF67952),
      decoration: InputDecoration(
          hintStyle: Styles.smallText(),
          hintText: title,
          prefixIcon: IconButton(
            icon: icon,
            onPressed: () {},
          ),
          suffixIcon: Container(
              margin: const EdgeInsets.only(right: 5, left: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffF67952)),
              width: 48,
              height: 45,
              child: Image(image: AssetImage("assets/images/$image"))),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(width: 1.5, color: Color(0xffF67952))),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
