import 'package:flutter/material.dart';
import 'package:live_class_22/widgets/header_widget.dart';
import 'package:live_class_22/widgets/user_profile_widget.dart';

import '../widgets/card_item_widget.dart';
import '../widgets/footer_widget.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(device: 'Mobile',),
        UserProfileWidget(),
        Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1),
                itemCount: 15,
                itemBuilder: (_, index) => card_item_widget(index: index,)
            )
        ),
        footer_widget(),

      ],
    );
  }
}


