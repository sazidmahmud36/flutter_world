import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_class_22/widgets/user_profile_widget.dart';

import '../widgets/card_item_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        sidebar(),

        Expanded(
          flex: 3,
          child: Column(
            children: [
              HeaderWidget(device: 'Web',),
              UserProfileWidget(),
              Expanded(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 1),
                      itemCount: 15,
                      itemBuilder: (_, index) => card_item_widget(index: index,)
                  )
              ),
              footer_widget(),

            ],
          ),
        ),
      ],
    );
  }
}




