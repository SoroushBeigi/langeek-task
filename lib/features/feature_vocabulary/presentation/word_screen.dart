import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langeek_task/features/feature_vocabulary/presentation/bloc/word_bloc.dart';
import 'package:langeek_task/features/feature_vocabulary/presentation/widgets/word_details.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WordScreen extends StatefulWidget {
  const WordScreen({super.key, required this.title});
  final String title;

  @override
  State<WordScreen> createState() => _WordScreenState();
}

class _WordScreenState extends State<WordScreen> {
  late PageController controller;
  @override
  void initState() {
    controller = PageController(keepPage: false,initialPage: BlocProvider.of<WordBloc>(context).currentPage);
    BlocProvider.of<WordBloc>(context).add(LoadWordsEvent());
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 30.h,
            child: AppBar(
                  shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  title: Text(widget.title,
              style: Theme.of(context).textTheme.headlineMedium),
                ),
          ),

          SafeArea(
            child: BlocConsumer<WordBloc, WordState>(
              buildWhen: (previous, current) => current is WordLoading || current is WordDone || current is NewWordState || current is PageChangedState,
              listener: (context, state) {
                if(state is PageChangedState){
                  controller.jumpToPage(state.currentPage,);
                }
                if(state is NewWordState){
                  controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.linear);
                }
              },
              builder: (context, state) {
                if (state is WordLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Center(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    SmoothPageIndicator(
                        controller: controller,
                        count: BlocProvider.of<WordBloc>(context).words.length,
                        effect:  SlideEffect(dotHeight: 1.h,spacing: 1,dotColor: Colors.blueGrey[300]!),
                        onDotClicked: (index) {
                          BlocProvider.of<WordBloc>(context).add(ChangePageEvent(page: index));
                        }),
                        SizedBox(
                      height: 2.h,
                    ),
                    Expanded(
                      child: PageView.builder(
                        controller: controller,
                        itemBuilder: (context, index) => WordDetails(word: BlocProvider.of<WordBloc>(context).words[index],index: index,),
                      ),
                    ),
                  ],
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
