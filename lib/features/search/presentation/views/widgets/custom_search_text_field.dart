import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // by the way this is the default values that will be given to border if not edited or written
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey
          ),

        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white
          ),

        ),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}