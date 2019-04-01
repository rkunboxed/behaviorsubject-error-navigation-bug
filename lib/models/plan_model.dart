import 'package:json_annotation/json_annotation.dart';

part 'plan_model.g.dart';

@JsonSerializable()
class PlanModel implements Comparable<PlanModel>{

  @JsonKey(name: 'PlanID')
  final String planId;

  @JsonKey(name: 'PlanName')
  final String name;

  @JsonKey(name: 'Objectives')
  final List<Map<String, String>> objectives;

  @JsonKey(name: 'IntendedAudience')
  final List<String> levels;

  @JsonKey(name: 'PlanPhases') //startDate and endDate are in here
  final Map planPhases;

  @JsonKey(name: 'Description')
  final String description;

  @JsonKey(name: 'State')
  final String state; //[active,completed,abandoned,terminated]

  @JsonKey(name: 'IsTemplate')
  final bool isTemplate; 

  PlanModel({
    this.planId,
    this.name,
    this.objectives,
    this.levels,
    this.planPhases,
    this.description,
    this.state,
    this.isTemplate
  });

  int compareTo(PlanModel other) {
    return DateTime.parse(planPhases['StartDate']).compareTo(DateTime.parse(other.planPhases['StartDate']));
  }

  factory PlanModel.fromJson(Map<String, dynamic> json) => _$PlanModelFromJson(json);

  Map<String, dynamic> toJson() => _$PlanModelToJson(this);
}

class PlanModelHelpers {
  List<PlanModel> plansFromSrc(_plans) {
    List<PlanModel> _planDetails = [];

    for (var _plan in _plans) {
      _planDetails.add( PlanModel.fromJson(_plan) );
    }
    return _planDetails;
  }

  List<Map<String, dynamic>> toMaps(List<PlanModel> plans) {
    List<Map<String, dynamic>> planMaps = [];

    for (var plan in plans) {
      planMaps.add( plan.toJson() );
    }
    return planMaps;
  } 
}

class PlanBuildModel {
  final List<PlanModel> userCurrentPlans;
  final PlanModel selectedPlan;
  final DateTime newPlanStartDate;
  final DateTime newPlanEndDate;

  PlanBuildModel({
    this.userCurrentPlans,
    this.selectedPlan,
    this.newPlanStartDate,
    this.newPlanEndDate
  });
}

class PlanCloneResultsModel {
  final bool success;
  final String errorType;
  final String errorTitle;
  final String errorMessage;
  final String conflictedPlanId;
  final PlanBuildModel planBuildModel;

  PlanCloneResultsModel({this.success, this.errorType, this.errorTitle, this.errorMessage, this.conflictedPlanId, this.planBuildModel});
}

class PlanErrorModel {
  final String errorType;
  final String errorTitle;
  final String errorMessage;

  PlanErrorModel({
    this.errorType,
    this.errorTitle,
    this.errorMessage
  });
}

class PlanApiResponseModel {
  final bool success;
  final PlanErrorModel apiResponseError;
  final List<PlanModel> plans;

  PlanApiResponseModel({
    this.success,
    this.apiResponseError,
    this.plans
  });
}