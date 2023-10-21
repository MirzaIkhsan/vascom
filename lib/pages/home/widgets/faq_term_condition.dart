import 'package:flutter/material.dart';
import 'package:vascom/widgets/default_text_button.dart';

class FAQAndTermCondition extends StatelessWidget {
  const FAQAndTermCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DefaultTextButton(
          title: "FAQ",
          onTap: () {},
        ),
        DefaultTextButton(
          title: "Terms And Condition",
          onTap: () {},
        ),
      ],
    );
  }
}
