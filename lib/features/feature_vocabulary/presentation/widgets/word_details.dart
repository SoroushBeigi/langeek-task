import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:langeek_task/features/feature_vocabulary/domain/entities/word.dart';
import 'package:langeek_task/features/feature_vocabulary/presentation/bloc/word_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WordDetails extends StatefulWidget {
  final Word word;
  final int index;
  const WordDetails({required this.word,required this.index, super.key});

  @override
  State<WordDetails> createState() => _WordDetailsState();
}

class _WordDetailsState extends State<WordDetails> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final word = widget.word;
    return Column(
      children: [
        //Image Card
        Container(
          height: 30.h,
          width: 85.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[700]!.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child:
              Image.network(word.mainTranslation!.wordPhoto!.photo!.toString()),
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          word.title!,
          style: textTheme.headlineLarge,
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          word.mainTranslation!.pronunciation!,
          style: textTheme.displayLarge,
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: BoxDecoration(
              color: Colors.deepPurple[200],
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: Text(
            word.mainTranslation!.partOfSpeech!.partOfSpeechType!,
            style: textTheme.displayMedium,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              Text(
                word.mainTranslation!.translation!,
                style: textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 2.h),
              if (word.mainTranslation!.synonyms!.isNotEmpty)
                Row(
                  children: <Widget>[
                        Text(
                          'Synonym:',
                          style: textTheme.bodyMedium,
                        )
                      ] +
                      word.mainTranslation!.synonyms!
                          .map<Widget>(
                            (e) => Container(
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.lightGreen[200]!.withOpacity(0.5),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Text(
                                e.word!,
                                style: TextStyle(
                                    color: Colors.green[800],
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          )
                          .toList()
                          .take(3)
                          .toList(),
                ),
                SizedBox(height: 5.h,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                ElevatedButton(onPressed: () =>BlocProvider.of<WordBloc>(context).add(KnowEvent(title: word.title!)), child: const Text('I know this')),
                ElevatedButton(
                    onPressed: () =>BlocProvider.of<WordBloc>(context).add(DontKnowEvent(word:word,currentIndex: widget.index)), child: const Text('I do not know this')),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
