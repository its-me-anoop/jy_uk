import 'package:flutter/material.dart';
import 'package:jy_uk/constants/image_list.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Image.network(imageList[index]),
          );
        });
  }
}
