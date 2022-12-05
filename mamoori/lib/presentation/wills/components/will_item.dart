import 'package:flutter/material.dart';

import '../../../domain/model/will.dart';
import '../../../ui/colors.dart';

class WillItem extends StatelessWidget {
  final Will will;
  Function? onDeleteTap;
  WillItem({Key? key, required this.will, this.onDeleteTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    will.title,
                    style: Theme.of(context).textTheme.headline6,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    will.content,
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: GestureDetector(child: Icon(Icons.delete, color: darkGray,
            ),
            onTap: (){
              onDeleteTap?.call();
            },),
          ),
        ],
      ),
    );
  }
}
