import 'package:flutter/material.dart';
import 'package:live_class_22/widgets/user_profile_widget.dart';

import '../widgets/card_item_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(device: 'Tablet',),
        UserProfileWidget(),
        Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 1),
                itemCount: 15,
                itemBuilder: (_, index) => card_item_widget(index: index,)
            )
        ),
        footer_widget(),
      ],
    );
  }
}
