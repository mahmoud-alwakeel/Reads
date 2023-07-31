import 'package:flutter/material.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 50),
      child: Row(
        children: [
          const Text('Reads', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30,),),
          const Spacer(),
          IconButton(onPressed: (){},icon: const Icon(Icons.search, size: 30,),)
        ],
      ),
    );
  }
}