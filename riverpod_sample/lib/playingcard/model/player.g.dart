// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Player _$_$_PlayerFromJson(Map<String, dynamic> json) {
  return _$_Player(
    name: json['name'] as String,
    deck: (json['deck'] as List)
        ?.map((e) =>
            e == null ? null : PlayingCard.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PlayerToJson(_$_Player instance) => <String, dynamic>{
      'name': instance.name,
      'deck': instance.deck,
    };
