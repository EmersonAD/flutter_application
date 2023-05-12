import 'package:flutter_application/generated/json/base/json_convert_content.dart';
import 'package:flutter_application/data/model/agents_response_entity.dart';

AgentsResponseEntity $AgentsResponseEntityFromJson(Map<String, dynamic> json) {
  final AgentsResponseEntity agentsResponseEntity = AgentsResponseEntity();
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    agentsResponseEntity.status = status;
  }
  final List<AgentsResponseData>? data =
      jsonConvert.convertListNotNull<AgentsResponseData>(json['data']);
  if (data != null) {
    agentsResponseEntity.data = data;
  }
  return agentsResponseEntity;
}

Map<String, dynamic> $AgentsResponseEntityToJson(AgentsResponseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['data'] = entity.data.map((v) => v.toJson()).toList();
  return data;
}

AgentsResponseData $AgentsResponseDataFromJson(Map<String, dynamic> json) {
  final AgentsResponseData agentsResponseData = AgentsResponseData();
  final String? uuid = jsonConvert.convert<String>(json['uuid']);
  if (uuid != null) {
    agentsResponseData.uuid = uuid;
  }
  final String? displayName = jsonConvert.convert<String>(json['displayName']);
  if (displayName != null) {
    agentsResponseData.displayName = displayName;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    agentsResponseData.description = description;
  }
  final String? developerName =
      jsonConvert.convert<String>(json['developerName']);
  if (developerName != null) {
    agentsResponseData.developerName = developerName;
  }
  final List<String>? characterTags =
      jsonConvert.convertListNotNull<String>(json['characterTags']);
  if (characterTags != null) {
    agentsResponseData.characterTags = characterTags;
  }
  final String? displayIcon = jsonConvert.convert<String>(json['displayIcon']);
  if (displayIcon != null) {
    agentsResponseData.displayIcon = displayIcon;
  }
  final String? displayIconSmall =
      jsonConvert.convert<String>(json['displayIconSmall']);
  if (displayIconSmall != null) {
    agentsResponseData.displayIconSmall = displayIconSmall;
  }
  final String? bustPortrait =
      jsonConvert.convert<String>(json['bustPortrait']);
  if (bustPortrait != null) {
    agentsResponseData.bustPortrait = bustPortrait;
  }
  final String? fullPortrait =
      jsonConvert.convert<String>(json['fullPortrait']);
  if (fullPortrait != null) {
    agentsResponseData.fullPortrait = fullPortrait;
  }
  final String? fullPortraitV2 =
      jsonConvert.convert<String>(json['fullPortraitV2']);
  if (fullPortraitV2 != null) {
    agentsResponseData.fullPortraitV2 = fullPortraitV2;
  }
  final String? killfeedPortrait =
      jsonConvert.convert<String>(json['killfeedPortrait']);
  if (killfeedPortrait != null) {
    agentsResponseData.killfeedPortrait = killfeedPortrait;
  }
  final String? background = jsonConvert.convert<String>(json['background']);
  if (background != null) {
    agentsResponseData.background = background;
  }
  final List<String>? backgroundGradientColors =
      jsonConvert.convertListNotNull<String>(json['backgroundGradientColors']);
  if (backgroundGradientColors != null) {
    agentsResponseData.backgroundGradientColors = backgroundGradientColors;
  }
  final String? assetPath = jsonConvert.convert<String>(json['assetPath']);
  if (assetPath != null) {
    agentsResponseData.assetPath = assetPath;
  }
  final bool? isFullPortraitRightFacing =
      jsonConvert.convert<bool>(json['isFullPortraitRightFacing']);
  if (isFullPortraitRightFacing != null) {
    agentsResponseData.isFullPortraitRightFacing = isFullPortraitRightFacing;
  }
  final bool? isPlayableCharacter =
      jsonConvert.convert<bool>(json['isPlayableCharacter']);
  if (isPlayableCharacter != null) {
    agentsResponseData.isPlayableCharacter = isPlayableCharacter;
  }
  final bool? isAvailableForTest =
      jsonConvert.convert<bool>(json['isAvailableForTest']);
  if (isAvailableForTest != null) {
    agentsResponseData.isAvailableForTest = isAvailableForTest;
  }
  final bool? isBaseContent = jsonConvert.convert<bool>(json['isBaseContent']);
  if (isBaseContent != null) {
    agentsResponseData.isBaseContent = isBaseContent;
  }
  final AgentsResponseDataRole? role =
      jsonConvert.convert<AgentsResponseDataRole>(json['role']);
  if (role != null) {
    agentsResponseData.role = role;
  }
  final List<AgentsResponseDataAbilities>? abilities = jsonConvert
      .convertListNotNull<AgentsResponseDataAbilities>(json['abilities']);
  if (abilities != null) {
    agentsResponseData.abilities = abilities;
  }
  final AgentsResponseDataVoiceLine? voiceLine =
      jsonConvert.convert<AgentsResponseDataVoiceLine>(json['voiceLine']);
  if (voiceLine != null) {
    agentsResponseData.voiceLine = voiceLine;
  }
  return agentsResponseData;
}

Map<String, dynamic> $AgentsResponseDataToJson(AgentsResponseData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['uuid'] = entity.uuid;
  data['displayName'] = entity.displayName;
  data['description'] = entity.description;
  data['developerName'] = entity.developerName;
  data['characterTags'] = entity.characterTags;
  data['displayIcon'] = entity.displayIcon;
  data['displayIconSmall'] = entity.displayIconSmall;
  data['bustPortrait'] = entity.bustPortrait;
  data['fullPortrait'] = entity.fullPortrait;
  data['fullPortraitV2'] = entity.fullPortraitV2;
  data['killfeedPortrait'] = entity.killfeedPortrait;
  data['background'] = entity.background;
  data['backgroundGradientColors'] = entity.backgroundGradientColors;
  data['assetPath'] = entity.assetPath;
  data['isFullPortraitRightFacing'] = entity.isFullPortraitRightFacing;
  data['isPlayableCharacter'] = entity.isPlayableCharacter;
  data['isAvailableForTest'] = entity.isAvailableForTest;
  data['isBaseContent'] = entity.isBaseContent;
  data['role'] = entity.role.toJson();
  data['abilities'] = entity.abilities.map((v) => v.toJson()).toList();
  data['voiceLine'] = entity.voiceLine.toJson();
  return data;
}

AgentsResponseDataRole $AgentsResponseDataRoleFromJson(
    Map<String, dynamic> json) {
  final AgentsResponseDataRole agentsResponseDataRole =
      AgentsResponseDataRole();
  final String? uuid = jsonConvert.convert<String>(json['uuid']);
  if (uuid != null) {
    agentsResponseDataRole.uuid = uuid;
  }
  final String? displayName = jsonConvert.convert<String>(json['displayName']);
  if (displayName != null) {
    agentsResponseDataRole.displayName = displayName;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    agentsResponseDataRole.description = description;
  }
  final String? displayIcon = jsonConvert.convert<String>(json['displayIcon']);
  if (displayIcon != null) {
    agentsResponseDataRole.displayIcon = displayIcon;
  }
  final String? assetPath = jsonConvert.convert<String>(json['assetPath']);
  if (assetPath != null) {
    agentsResponseDataRole.assetPath = assetPath;
  }
  return agentsResponseDataRole;
}

Map<String, dynamic> $AgentsResponseDataRoleToJson(
    AgentsResponseDataRole entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['uuid'] = entity.uuid;
  data['displayName'] = entity.displayName;
  data['description'] = entity.description;
  data['displayIcon'] = entity.displayIcon;
  data['assetPath'] = entity.assetPath;
  return data;
}

AgentsResponseDataAbilities $AgentsResponseDataAbilitiesFromJson(
    Map<String, dynamic> json) {
  final AgentsResponseDataAbilities agentsResponseDataAbilities =
      AgentsResponseDataAbilities();
  final String? slot = jsonConvert.convert<String>(json['slot']);
  if (slot != null) {
    agentsResponseDataAbilities.slot = slot;
  }
  final String? displayName = jsonConvert.convert<String>(json['displayName']);
  if (displayName != null) {
    agentsResponseDataAbilities.displayName = displayName;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    agentsResponseDataAbilities.description = description;
  }
  final String? displayIcon = jsonConvert.convert<String>(json['displayIcon']);
  if (displayIcon != null) {
    agentsResponseDataAbilities.displayIcon = displayIcon;
  }
  return agentsResponseDataAbilities;
}

Map<String, dynamic> $AgentsResponseDataAbilitiesToJson(
    AgentsResponseDataAbilities entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['slot'] = entity.slot;
  data['displayName'] = entity.displayName;
  data['description'] = entity.description;
  data['displayIcon'] = entity.displayIcon;
  return data;
}

AgentsResponseDataVoiceLine $AgentsResponseDataVoiceLineFromJson(
    Map<String, dynamic> json) {
  final AgentsResponseDataVoiceLine agentsResponseDataVoiceLine =
      AgentsResponseDataVoiceLine();
  final double? minDuration = jsonConvert.convert<double>(json['minDuration']);
  if (minDuration != null) {
    agentsResponseDataVoiceLine.minDuration = minDuration;
  }
  final double? maxDuration = jsonConvert.convert<double>(json['maxDuration']);
  if (maxDuration != null) {
    agentsResponseDataVoiceLine.maxDuration = maxDuration;
  }
  final List<AgentsResponseDataVoiceLineMediaList>? mediaList =
      jsonConvert.convertListNotNull<AgentsResponseDataVoiceLineMediaList>(
          json['mediaList']);
  if (mediaList != null) {
    agentsResponseDataVoiceLine.mediaList = mediaList;
  }
  return agentsResponseDataVoiceLine;
}

Map<String, dynamic> $AgentsResponseDataVoiceLineToJson(
    AgentsResponseDataVoiceLine entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['minDuration'] = entity.minDuration;
  data['maxDuration'] = entity.maxDuration;
  data['mediaList'] = entity.mediaList.map((v) => v.toJson()).toList();
  return data;
}

AgentsResponseDataVoiceLineMediaList
    $AgentsResponseDataVoiceLineMediaListFromJson(Map<String, dynamic> json) {
  final AgentsResponseDataVoiceLineMediaList
      agentsResponseDataVoiceLineMediaList =
      AgentsResponseDataVoiceLineMediaList();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    agentsResponseDataVoiceLineMediaList.id = id;
  }
  final String? wwise = jsonConvert.convert<String>(json['wwise']);
  if (wwise != null) {
    agentsResponseDataVoiceLineMediaList.wwise = wwise;
  }
  final String? wave = jsonConvert.convert<String>(json['wave']);
  if (wave != null) {
    agentsResponseDataVoiceLineMediaList.wave = wave;
  }
  return agentsResponseDataVoiceLineMediaList;
}

Map<String, dynamic> $AgentsResponseDataVoiceLineMediaListToJson(
    AgentsResponseDataVoiceLineMediaList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['wwise'] = entity.wwise;
  data['wave'] = entity.wave;
  return data;
}
