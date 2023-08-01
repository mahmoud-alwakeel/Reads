import 'package:flutter/material.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45.0, bottom: 24.0),
      child: Row(
        children: [
          const Text('Reads', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30, fontWeight: FontWeight.w900),),
          const Spacer(),
          IconButton(onPressed: (){},icon: const Icon(Icons.search, size: 30,),)
        ],
      ),
    );
  }
}