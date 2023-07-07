import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Data/ObjectBox/ObjectBox.dart';
import 'Provider/WhiskyOverviewProvider.dart';
import 'View/Pages/WhiskyOverview.dart';

late ObjectBox objectbox;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  objectbox = await ObjectBox.create();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => WhiskyOverviewProvider())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const WhiskyOverview(),
    );
  }
}