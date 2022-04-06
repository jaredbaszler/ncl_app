// ignore_for_file: sort_constructors_first

import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:ncl_app/data/models/ship_facts.dart';

class ShipInfo extends Equatable {
  final String? shipName;
  final String? code;
  final int? allowedGuestCount;
  final String? shipDescription;
  final String? shipDescriptionHtml;
  final String? accessCode;
  final String? wesbCode;
  final String? recategorizationDate;
  final String? recategorizationDefaultView;
  final String? name;
  final ShipFacts? shipFacts;

  const ShipInfo({
    this.shipName,
    this.code,
    this.allowedGuestCount,
    this.shipDescription,
    this.shipDescriptionHtml,
    this.accessCode,
    this.wesbCode,
    this.recategorizationDate,
    this.recategorizationDefaultView,
    this.name,
    this.shipFacts,
  });

  factory ShipInfo.fromMap(Map<String, Object?> data) => ShipInfo(
        shipName: data['shipName'] as String?,
        code: data['code'] as String?,
        allowedGuestCount: data['allowedGuestCount'] as int?,
        shipDescription: data['shipDescription'] as String?,
        shipDescriptionHtml: data['shipDescriptionHtml'] as String?,
        accessCode: data['accessCode'] as String?,
        wesbCode: data['wesbCode'] as String?,
        recategorizationDate: data['recategorizationDate'] as String?,
        recategorizationDefaultView: data['recategorizationDefaultView'] as String?,
        name: data['name'] as String?,
        shipFacts: data['shipFacts'] == null
            ? null
            : ShipFacts.fromMap(data['shipFacts']! as Map<String, Object?>),
      );

  Map<String, Object?> toMap() => {
        'shipName': shipName,
        'code': code,
        'allowedGuestCount': allowedGuestCount,
        'shipDescription': shipDescription,
        'shipDescriptionHtml': shipDescriptionHtml,
        'accessCode': accessCode,
        'wesbCode': wesbCode,
        'recategorizationDate': recategorizationDate,
        'recategorizationDefaultView': recategorizationDefaultView,
        'name': name,
        'shipFacts': shipFacts?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ShipInfo].
  factory ShipInfo.fromJson(String data) {
    return ShipInfo.fromMap(json.decode(data) as Map<String, Object?>);
  }

  /// `dart:convert`
  ///
  /// Converts [ShipInfo] to a JSON string.
  String toJson() => json.encode(toMap());

  ShipInfo copyWith({
    String? shipName,
    String? code,
    int? allowedGuestCount,
    String? shipDescription,
    String? shipDescriptionHtml,
    String? accessCode,
    String? wesbCode,
    String? recategorizationDate,
    String? recategorizationDefaultView,
    String? name,
    dynamic storiesHeadlineHtml,
    dynamic answersHeadlineHtml,
    ShipFacts? shipFacts,
  }) {
    return ShipInfo(
      shipName: shipName ?? this.shipName,
      code: code ?? this.code,
      allowedGuestCount: allowedGuestCount ?? this.allowedGuestCount,
      shipDescription: shipDescription ?? this.shipDescription,
      shipDescriptionHtml: shipDescriptionHtml ?? this.shipDescriptionHtml,
      accessCode: accessCode ?? this.accessCode,
      wesbCode: wesbCode ?? this.wesbCode,
      recategorizationDate: recategorizationDate ?? this.recategorizationDate,
      recategorizationDefaultView: recategorizationDefaultView ?? this.recategorizationDefaultView,
      name: name ?? this.name,
      shipFacts: shipFacts ?? this.shipFacts,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      shipName,
      code,
      allowedGuestCount,
      shipDescription,
      shipDescriptionHtml,
      accessCode,
      wesbCode,
      recategorizationDate,
      recategorizationDefaultView,
      name,
      shipFacts,
    ];
  }
}
