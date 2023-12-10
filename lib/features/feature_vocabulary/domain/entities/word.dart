import 'package:langeek_task/features/feature_vocabulary/data/models/word_model.dart';

class Word {
   int? id;
   MainTranslation? mainTranslation;
   String? type;
   String? description;
   int? position;
   String? updatedAt;
   String? title;
   String? phonetic;
  
   Word({this.id, this.mainTranslation, this.type, this.description, this.position, this.updatedAt, this.title, this.phonetic});
}
