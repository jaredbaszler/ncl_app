// ignore_for_file: sort_constructors_first

import 'dart:convert';

import 'package:equatable/equatable.dart';

class ShipFacts extends Equatable {
  final String? passengerCapacity;
  final String? grossRegisterTonnage;
  final String? overallLength;
  final String? maxBeam;
  final String? draft;
  final String? engines;
  final String? cruiseSpeed;
  final String? crew;
  final String? inauguralDate;
  final String? remodeledDate;

  const ShipFacts({
    this.passengerCapacity,
    this.grossRegisterTonnage,
    this.overallLength,
    this.maxBeam,
    this.draft,
    this.engines,
    this.cruiseSpeed,
    this.crew,
    this.inauguralDate,
    this.remodeledDate,
  });

  factory ShipFacts.fromMap(Map<String, Object?> data) => ShipFacts(
        passengerCapacity: data['passengerCapacity'] as String?,
        grossRegisterTonnage: data['grossRegisterTonnage'] as String?,
        overallLength: data['overallLength'] as String?,
        maxBeam: data['maxBeam'] as String?,
        draft: data['draft'] as String?,
        engines: data['engines'] as String?,
        cruiseSpeed: data['cruiseSpeed'] as String?,
        crew: data['crew'] as String?,
        inauguralDate: data['inauguralDate'] as String?,
        remodeledDate: data['remodeledDate'] as String?,
      );

  Map<String, Object?> toMap() => {
        'passengerCapacity': passengerCapacity,
        'grossRegisterTonnage': grossRegisterTonnage,
        'overallLength': overallLength,
        'maxBeam': maxBeam,
        'draft': draft,
        'engines': engines,
        'cruiseSpeed': cruiseSpeed,
        'crew': crew,
        'inauguralDate': inauguralDate,
        'remodeledDate': remodeledDate,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ShipFacts].
  factory ShipFacts.fromJson(String data) {
    return ShipFacts.fromMap(json.decode(data) as Map<String, Object?>);
  }

  /// `dart:convert`
  ///
  /// Converts [ShipFacts] to a JSON string.
  String toJson() => json.encode(toMap());

  ShipFacts copyWith({
    String? passengerCapacity,
    String? grossRegisterTonnage,
    String? overallLength,
    String? maxBeam,
    String? draft,
    String? engines,
    String? cruiseSpeed,
    String? crew,
    String? inauguralDate,
    String? remodeledDate,
  }) {
    return ShipFacts(
      passengerCapacity: passengerCapacity ?? this.passengerCapacity,
      grossRegisterTonnage: grossRegisterTonnage ?? this.grossRegisterTonnage,
      overallLength: overallLength ?? this.overallLength,
      maxBeam: maxBeam ?? this.maxBeam,
      draft: draft ?? this.draft,
      engines: engines ?? this.engines,
      cruiseSpeed: cruiseSpeed ?? this.cruiseSpeed,
      crew: crew ?? this.crew,
      inauguralDate: inauguralDate ?? this.inauguralDate,
      remodeledDate: remodeledDate ?? this.remodeledDate,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      passengerCapacity,
      grossRegisterTonnage,
      overallLength,
      maxBeam,
      draft,
      engines,
      cruiseSpeed,
      crew,
      inauguralDate,
      remodeledDate,
    ];
  }
}
