import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langeek_task/core/theme.dart';
import 'package:langeek_task/features/feature_vocabulary/presentation/bloc/word_bloc.dart';
import 'package:langeek_task/features/feature_vocabulary/presentation/word_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(ResponsiveSizer(builder: (context, orientation, screenType) => const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: BlocProvider(
        create: (context) => WordBloc(),
        child: const WordScreen(title: 'Hello & Goodbye'),
      ),
    );
  }
}
