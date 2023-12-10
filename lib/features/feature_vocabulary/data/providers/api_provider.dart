import 'package:dio/dio.dart';
import 'package:langeek_task/core/constants.dart';
import 'package:langeek_task/features/feature_vocabulary/data/models/word_model.dart';
import 'package:langeek_task/features/feature_vocabulary/domain/entities/word.dart';

class ApiProvider {
  final Dio _dio = Dio();

  Future<List<Word>> getWords() async {
    final response =
        await _dio.get(Constants.baseUrl + Constants.wordsEndpoint);
    List<Word> words =
        (response.data['cards'] as List<dynamic>).map<Word>((e) => WordModel.fromJson(e)).toList();
    return words;
  }
}
