import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:structure_test/Provider/WhiskyOverviewProvider.dart';

class WhiskyOverview extends StatelessWidget {  @override
  const WhiskyOverview({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Consumer<WhiskyOverviewProvider>(
        builder: (context, controller, child) {
          return Column(
            children: [
              Text('Total price: ${controller.whiskyCount}'),
              Switch(
                // This bool value toggles the switch.
                value: controller.onlyAlc,
                activeColor: Colors.red,
                onChanged: (bool value) {
                  print(value);
                // This is called when the user toggles the switch.
                  controller.setOnlyAlc(value);
                }
              ),
              for (var whisky in controller.whiskies) Text(whisky.name)
            ],
          );
        },
      ),
    );
  }
}
