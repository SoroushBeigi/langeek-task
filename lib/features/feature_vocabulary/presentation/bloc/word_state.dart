part of 'word_bloc.dart';

@immutable
sealed class WordState {}

final class WordInitial extends WordState {}

final class WordLoading extends WordState {}

final class WordDone extends WordState {}

final class PageChangedState extends WordState {
  final int currentPage;
  PageChangedState({required this.currentPage});
}

final class NewWordState extends WordState{}
