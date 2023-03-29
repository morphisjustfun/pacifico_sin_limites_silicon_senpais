import 'package:freezed_annotation/freezed_annotation.dart';

part 'workshop_model.freezed.dart';

@freezed
class WorkshopModel with _$WorkshopModel {
  const factory WorkshopModel({
    required String name,
    required String description,
    required int participants,
    required List<String> participantsList,
    required String state,
  }) = _WorkshopModel;
}
