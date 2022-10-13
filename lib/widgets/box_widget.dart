import 'package:flutter/material.dart';

import '../enums/all_state.dart';

class BoxWidget extends StatelessWidget {
  late var state;
  BoxWidget({Key? key, box}) : super(key: key) {
    state = box;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 254, 75, 75),
          boxShadow: const [
            BoxShadow(
                color: Colors.black54,
                blurRadius: 15.0,
                offset: Offset(0.0, 0.75))
          ],
          border: Border.all(
            color: const Color.fromARGB(255, 254, 75, 75),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: state == BoxState.circle
          ? const Icon(
              Icons.lens_outlined,
              size: 100.0,
            )
          : state == BoxState.cross
              ? const Icon(
                  Icons.close,
                  size: 110.0,
                )
              : Container(),
    );
  }
}
