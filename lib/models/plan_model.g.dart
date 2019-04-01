// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanModel _$PlanModelFromJson(Map<String, dynamic> json) {
  return PlanModel(
      planId: json['PlanID'] as String,
      name: json['PlanName'] as String,
      objectives: (json['Objectives'] as List)
          ?.map((e) => (e as Map<String, dynamic>)
              ?.map((k, e) => MapEntry(k, e as String)))
          ?.toList(),
      levels:
          (json['IntendedAudience'] as List)?.map((e) => e as String)?.toList(),
      planPhases: json['PlanPhases'] as Map<String, dynamic>,
      description: json['Description'] as String,
      state: json['State'] as String,
      isTemplate: json['IsTemplate'] as bool);
}

Map<String, dynamic> _$PlanModelToJson(PlanModel instance) => <String, dynamic>{
      'PlanID': instance.planId,
      'PlanName': instance.name,
      'Objectives': instance.objectives,
      'IntendedAudience': instance.levels,
      'PlanPhases': instance.planPhases,
      'Description': instance.description,
      'State': instance.state,
      'IsTemplate': instance.isTemplate
    };
