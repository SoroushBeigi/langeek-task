import 'package:langeek_task/features/feature_vocabulary/domain/entities/word.dart';

class WordModel extends Word {
  WordModel({
    int? id,
    MainTranslation? mainTranslation,
    String? type,
    String? description,
    int? position,
    String? updatedAt,
    String? title,
    String? phonetic,
  }) : super(
          id: id,
          mainTranslation: mainTranslation,
          type: type,
          description: description,
          position: position,
          updatedAt: updatedAt,
          title: title,
          phonetic: phonetic,
        );

  WordModel.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["mainTranslation"] is Map) {
      mainTranslation = json["mainTranslation"] == null
          ? null
          : MainTranslation.fromJson(json["mainTranslation"]);
    }
    if (json["type"] is String) {
      type = json["type"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["position"] is int) {
      position = json["position"];
    }
    if (json["updatedAt"] is String) {
      updatedAt = json["updatedAt"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["phonetic"] is String) {
      phonetic = json["phonetic"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    if (mainTranslation != null) {
      data["mainTranslation"] = mainTranslation?.toJson();
    }
    data["type"] = type;
    data["description"] = description;
    data["position"] = position;
    data["updatedAt"] = updatedAt;
    data["title"] = title;
    data["phonetic"] = phonetic;
    return data;
  }
}

class MainTranslation {
  int? id;
  PartOfSpeech? partOfSpeech;
  WordPhoto? wordPhoto;
  int? position;
  String? translation;
  String? otherTranslations;
  String? pronunciation;
  String? descriptionTitle;
  String? description;
  List<Synonyms>? synonyms;
  List<dynamic>? antonyms;
  List<dynamic>? tags;
  String? level;
  bool? hideNlpExamples;
  String? visibility;
  String? updatedAt;
  LocalizedProperties? localizedProperties;
  String? title;
  String? type;
  HashedFields? hashedFields;
  String? titleVoice;

  MainTranslation(
      {this.id,
      this.partOfSpeech,
      this.wordPhoto,
      this.position,
      this.translation,
      this.otherTranslations,
      this.pronunciation,
      this.descriptionTitle,
      this.description,
      this.synonyms,
      this.antonyms,
      this.tags,
      this.level,
      this.hideNlpExamples,
      this.visibility,
      this.updatedAt,
      this.localizedProperties,
      this.title,
      this.type,
      this.hashedFields,
      this.titleVoice});

  MainTranslation.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["partOfSpeech"] is Map) {
      partOfSpeech = json["partOfSpeech"] == null
          ? null
          : PartOfSpeech.fromJson(json["partOfSpeech"]);
    }
    if (json["wordPhoto"] is Map) {
      wordPhoto = json["wordPhoto"] == null
          ? null
          : WordPhoto.fromJson(json["wordPhoto"]);
    }
    if (json["position"] is int) {
      position = json["position"];
    }
    if (json["translation"] is String) {
      translation = json["translation"];
    }
    if (json["otherTranslations"] is String) {
      otherTranslations = json["otherTranslations"];
    }
    if (json["pronunciation"] is String) {
      pronunciation = json["pronunciation"];
    }
    if (json["descriptionTitle"] is String) {
      descriptionTitle = json["descriptionTitle"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["synonyms"] is List) {
      synonyms = json["synonyms"] == null
          ? null
          : (json["synonyms"] as List)
              .map((e) => Synonyms.fromJson(e))
              .toList();
    }
    if (json["antonyms"] is List) {
      antonyms = json["antonyms"] ?? [];
    }
    if (json["tags"] is List) {
      tags = json["tags"] ?? [];
    }
    if (json["level"] is String) {
      level = json["level"];
    }
    if (json["hideNLPExamples"] is bool) {
      hideNlpExamples = json["hideNLPExamples"];
    }
    if (json["visibility"] is String) {
      visibility = json["visibility"];
    }
    if (json["updatedAt"] is String) {
      updatedAt = json["updatedAt"];
    }
    if (json["localizedProperties"] is Map) {
      localizedProperties = json["localizedProperties"] == null
          ? null
          : LocalizedProperties.fromJson(json["localizedProperties"]);
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["type"] is String) {
      type = json["type"];
    }
    if (json["hashedFields"] is Map) {
      hashedFields = json["hashedFields"] == null
          ? null
          : HashedFields.fromJson(json["hashedFields"]);
    }
    if (json["titleVoice"] is String) {
      titleVoice = json["titleVoice"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    if (partOfSpeech != null) {
      data["partOfSpeech"] = partOfSpeech?.toJson();
    }
    if (wordPhoto != null) {
      data["wordPhoto"] = wordPhoto?.toJson();
    }
    data["position"] = position;
    data["translation"] = translation;
    data["otherTranslations"] = otherTranslations;
    data["pronunciation"] = pronunciation;
    data["descriptionTitle"] = descriptionTitle;
    data["description"] = description;
    if (synonyms != null) {
      data["synonyms"] = synonyms?.map((e) => e.toJson()).toList();
    }
    if (antonyms != null) {
      data["antonyms"] = antonyms;
    }
    if (tags != null) {
      data["tags"] = tags;
    }
    data["level"] = level;
    data["hideNLPExamples"] = hideNlpExamples;
    data["visibility"] = visibility;
    data["updatedAt"] = updatedAt;
    if (localizedProperties != null) {
      data["localizedProperties"] = localizedProperties?.toJson();
    }
    data["title"] = title;
    data["type"] = type;
    if (hashedFields != null) {
      data["hashedFields"] = hashedFields?.toJson();
    }
    data["titleVoice"] = titleVoice;
    return data;
  }
}

class HashedFields {
  String? title;

  HashedFields({this.title});

  HashedFields.fromJson(Map<String, dynamic> json) {
    if (json["title"] is String) {
      title = json["title"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["title"] = title;
    return data;
  }
}

class LocalizedProperties {
  Fr? fr;
  Tr? tr;
  De? de;
  Es? es;
  Fa? fa;
  It? it;
  Ru? ru;
  Uk? uk;

  LocalizedProperties(
      {this.fr, this.tr, this.de, this.es, this.fa, this.it, this.ru, this.uk});

  LocalizedProperties.fromJson(Map<String, dynamic> json) {
    if (json["fr"] is Map) {
      fr = json["fr"] == null ? null : Fr.fromJson(json["fr"]);
    }
    if (json["tr"] is Map) {
      tr = json["tr"] == null ? null : Tr.fromJson(json["tr"]);
    }
    if (json["de"] is Map) {
      de = json["de"] == null ? null : De.fromJson(json["de"]);
    }
    if (json["es"] is Map) {
      es = json["es"] == null ? null : Es.fromJson(json["es"]);
    }
    if (json["fa"] is Map) {
      fa = json["fa"] == null ? null : Fa.fromJson(json["fa"]);
    }
    if (json["it"] is Map) {
      it = json["it"] == null ? null : It.fromJson(json["it"]);
    }
    if (json["ru"] is Map) {
      ru = json["ru"] == null ? null : Ru.fromJson(json["ru"]);
    }
    if (json["uk"] is Map) {
      uk = json["uk"] == null ? null : Uk.fromJson(json["uk"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (fr != null) {
      data["fr"] = fr?.toJson();
    }
    if (tr != null) {
      data["tr"] = tr?.toJson();
    }
    if (de != null) {
      data["de"] = de?.toJson();
    }
    if (es != null) {
      data["es"] = es?.toJson();
    }
    if (fa != null) {
      data["fa"] = fa?.toJson();
    }
    if (it != null) {
      data["it"] = it?.toJson();
    }
    if (ru != null) {
      data["ru"] = ru?.toJson();
    }
    if (uk != null) {
      data["uk"] = uk?.toJson();
    }
    return data;
  }
}

class Uk {
  String? translation;

  Uk({this.translation});

  Uk.fromJson(Map<String, dynamic> json) {
    if (json["translation"] is String) {
      translation = json["translation"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["translation"] = translation;
    return data;
  }
}

class Ru {
  String? translation;

  Ru({this.translation});

  Ru.fromJson(Map<String, dynamic> json) {
    if (json["translation"] is String) {
      translation = json["translation"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["translation"] = translation;
    return data;
  }
}

class It {
  String? translation;

  It({this.translation});

  It.fromJson(Map<String, dynamic> json) {
    if (json["translation"] is String) {
      translation = json["translation"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["translation"] = translation;
    return data;
  }
}

class Fa {
  String? translation;

  Fa({this.translation});

  Fa.fromJson(Map<String, dynamic> json) {
    if (json["translation"] is String) {
      translation = json["translation"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["translation"] = translation;
    return data;
  }
}

class Es {
  String? translation;

  Es({this.translation});

  Es.fromJson(Map<String, dynamic> json) {
    if (json["translation"] is String) {
      translation = json["translation"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["translation"] = translation;
    return data;
  }
}

class De {
  String? translation;

  De({this.translation});

  De.fromJson(Map<String, dynamic> json) {
    if (json["translation"] is String) {
      translation = json["translation"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["translation"] = translation;
    return data;
  }
}

class Tr {
  String? otherTranslations;
  String? translation;

  Tr({this.otherTranslations, this.translation});

  Tr.fromJson(Map<String, dynamic> json) {
    if (json["otherTranslations"] is String) {
      otherTranslations = json["otherTranslations"];
    }
    if (json["translation"] is String) {
      translation = json["translation"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["otherTranslations"] = otherTranslations;
    data["translation"] = translation;
    return data;
  }
}

class Fr {
  String? otherTranslations;
  String? translation;

  Fr({this.otherTranslations, this.translation});

  Fr.fromJson(Map<String, dynamic> json) {
    if (json["otherTranslations"] is String) {
      otherTranslations = json["otherTranslations"];
    }
    if (json["translation"] is String) {
      translation = json["translation"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["otherTranslations"] = otherTranslations;
    data["translation"] = translation;
    return data;
  }
}

class Synonyms {
  String? word;

  Synonyms({this.word});

  Synonyms.fromJson(Map<String, dynamic> json) {
    if (json["word"] is String) {
      word = json["word"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["word"] = word;
    return data;
  }
}

class WordPhoto {
  String? originalTitle;
  String? updatedAt;
  String? description;
  String? urlId;
  String? webTitle;
  String? photo;
  String? photoThumbnail;

  WordPhoto(
      {this.originalTitle,
      this.updatedAt,
      this.description,
      this.urlId,
      this.webTitle,
      this.photo,
      this.photoThumbnail});

  WordPhoto.fromJson(Map<String, dynamic> json) {
    if (json["originalTitle"] is String) {
      originalTitle = json["originalTitle"];
    }
    if (json["updatedAt"] is String) {
      updatedAt = json["updatedAt"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["urlId"] is String) {
      urlId = json["urlId"];
    }
    if (json["webTitle"] is String) {
      webTitle = json["webTitle"];
    }
    if (json["photo"] is String) {
      photo = json["photo"];
    }
    if (json["photoThumbnail"] is String) {
      photoThumbnail = json["photoThumbnail"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["originalTitle"] = originalTitle;
    data["updatedAt"] = updatedAt;
    data["description"] = description;
    data["urlId"] = urlId;
    data["webTitle"] = webTitle;
    data["photo"] = photo;
    data["photoThumbnail"] = photoThumbnail;
    return data;
  }
}

class PartOfSpeech {
  String? partOfSpeechType;

  PartOfSpeech({this.partOfSpeechType});

  PartOfSpeech.fromJson(Map<String, dynamic> json) {
    if (json["partOfSpeechType"] is String) {
      partOfSpeechType = json["partOfSpeechType"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["partOfSpeechType"] = partOfSpeechType;
    return data;
  }
}
