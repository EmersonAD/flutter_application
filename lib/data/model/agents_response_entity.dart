import 'package:flutter_application/generated/json/base/json_field.dart';
import 'package:flutter_application/generated/json/agents_response_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class AgentsResponseEntity {
  late int status;
  late List<AgentsResponseData> data;

  AgentsResponseEntity();

  factory AgentsResponseEntity.fromJson(Map<String, dynamic> json) =>
      $AgentsResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => $AgentsResponseEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AgentsResponseData {
  late String uuid;
  late String displayName;
  late String description;
  late String developerName;
  late List<String> characterTags;
  late String displayIcon;
  late String displayIconSmall;
  late String bustPortrait;
  late String fullPortrait;
  late String fullPortraitV2;
  late String killfeedPortrait;
  late String background;
  late List<String> backgroundGradientColors;
  late String assetPath;
  late bool isFullPortraitRightFacing;
  late bool isPlayableCharacter;
  late bool isAvailableForTest;
  late bool isBaseContent;
  late AgentsResponseDataRole role;
  late List<AgentsResponseDataAbilities> abilities;
  late AgentsResponseDataVoiceLine voiceLine;

  AgentsResponseData();

  factory AgentsResponseData.fromJson(Map<String, dynamic> json) =>
      $AgentsResponseDataFromJson(json);

  Map<String, dynamic> toJson() => $AgentsResponseDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AgentsResponseDataRole {
  late String uuid;
  late String displayName;
  late String description;
  late String displayIcon;
  late String assetPath;

  AgentsResponseDataRole();

  factory AgentsResponseDataRole.fromJson(Map<String, dynamic> json) =>
      $AgentsResponseDataRoleFromJson(json);

  Map<String, dynamic> toJson() => $AgentsResponseDataRoleToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AgentsResponseDataAbilities {
  late String slot;
  late String displayName;
  late String description;
  String displayIcon = '';

  AgentsResponseDataAbilities();

  factory AgentsResponseDataAbilities.fromJson(Map<String, dynamic> json) =>
      $AgentsResponseDataAbilitiesFromJson(json);

  Map<String, dynamic> toJson() => $AgentsResponseDataAbilitiesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AgentsResponseDataVoiceLine {
  late double minDuration;
  late double maxDuration;
  late List<AgentsResponseDataVoiceLineMediaList> mediaList;

  AgentsResponseDataVoiceLine();

  factory AgentsResponseDataVoiceLine.fromJson(Map<String, dynamic> json) =>
      $AgentsResponseDataVoiceLineFromJson(json);

  Map<String, dynamic> toJson() => $AgentsResponseDataVoiceLineToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AgentsResponseDataVoiceLineMediaList {
  late int id;
  late String wwise;
  late String wave;

  AgentsResponseDataVoiceLineMediaList();

  factory AgentsResponseDataVoiceLineMediaList.fromJson(
          Map<String, dynamic> json) =>
      $AgentsResponseDataVoiceLineMediaListFromJson(json);

  Map<String, dynamic> toJson() =>
      $AgentsResponseDataVoiceLineMediaListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
