// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:langeek_task/features/feature_vocabulary/data/providers/api_provider.dart';
import 'package:langeek_task/features/feature_vocabulary/domain/entities/word.dart';
import 'package:meta/meta.dart';

part 'word_event.dart';
part 'word_state.dart';

class WordBloc extends Bloc<WordEvent, WordState> {
  ApiProvider apiProvider = ApiProvider();
  List<Word> words = [];
  List<String> knownWords=[];
  List<String> dontKnowWord=[];
  int currentPage = 0;


  WordBloc() : super(WordInitial()) {
    on<LoadWordsEvent>(_loadWords);
    on<ChangePageEvent>(_changePage);
    on<KnowEvent>(_knowWord);
    on<DontKnowEvent>(_dontKnowWord);
  }

  Future<void> _loadWords(LoadWordsEvent event, Emitter<WordState> emit) async {
  
      emit(WordLoading());
      words = await apiProvider.getWords();
      emit(WordDone());
   
  }

  void _changePage(ChangePageEvent event, Emitter<WordState> emit) {
    emit(PageChangedState(currentPage: event.page));
  }

  void _knowWord(KnowEvent event, Emitter<WordState> emit) {
    knownWords.add(event.title);
    words.removeWhere((element) => element.title==event.title);
    emit(NewWordState());
  }

  void _dontKnowWord(DontKnowEvent event, Emitter<WordState> emit) {
     words.add(event.word);
     words.removeAt(event.currentIndex);
     currentPage++;
     emit(NewWordState());
  }
}
