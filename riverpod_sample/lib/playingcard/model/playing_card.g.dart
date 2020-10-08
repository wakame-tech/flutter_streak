// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playing_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayingCard _$_$_PlayingCardFromJson(Map<String, dynamic> json) {
  return _$_PlayingCard(
    cardSuit: _$enumDecodeNullable(_$CardSuitEnumMap, json['cardSuit']),
    cardType: _$enumDecodeNullable(_$CardTypeEnumMap, json['cardType']),
    faceUp: json['faceUp'] as bool ?? false,
    opened: json['opened'] as bool ?? false,
  );
}

Map<String, dynamic> _$_$_PlayingCardToJson(_$_PlayingCard instance) =>
    <String, dynamic>{
      'cardSuit': _$CardSuitEnumMap[instance.cardSuit],
      'cardType': _$CardTypeEnumMap[instance.cardType],
      'faceUp': instance.faceUp,
      'opened': instance.opened,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$CardSuitEnumMap = {
  CardSuit.spades: 'spades',
  CardSuit.hearts: 'hearts',
  CardSuit.diamonds: 'diamonds',
  CardSuit.clubs: 'clubs',
};

const _$CardTypeEnumMap = {
  CardType.one: 'one',
  CardType.two: 'two',
  CardType.three: 'three',
  CardType.four: 'four',
  CardType.five: 'five',
  CardType.six: 'six',
  CardType.seven: 'seven',
  CardType.eight: 'eight',
  CardType.nine: 'nine',
  CardType.ten: 'ten',
  CardType.jack: 'jack',
  CardType.queen: 'queen',
  CardType.king: 'king',
};
