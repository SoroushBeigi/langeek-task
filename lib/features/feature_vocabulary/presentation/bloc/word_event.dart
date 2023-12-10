part of 'word_bloc.dart';

@immutable
sealed class WordEvent {}

class LoadWordsEvent extends WordEvent{}
class ChangePageEvent extends WordEvent{
  final int page;
  ChangePageEvent({required this.page});
}
class KnowEvent extends WordEvent{
  final String title;
  KnowEvent({required this.title});
}
class DontKnowEvent extends WordEvent{
  final Word word;
  final int currentIndex;
  DontKnowEvent({required this.word,required this.currentIndex});
}
