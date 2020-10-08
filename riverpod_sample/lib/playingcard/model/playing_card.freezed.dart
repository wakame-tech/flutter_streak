// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'playing_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PlayingCard _$PlayingCardFromJson(Map<String, dynamic> json) {
  return _PlayingCard.fromJson(json);
}

class _$PlayingCardTearOff {
  const _$PlayingCardTearOff();

// ignore: unused_element
  _PlayingCard call(
      {@required CardSuit cardSuit,
      @required CardType cardType,
      bool faceUp = false,
      bool opened = false}) {
    return _PlayingCard(
      cardSuit: cardSuit,
      cardType: cardType,
      faceUp: faceUp,
      opened: opened,
    );
  }
}

// ignore: unused_element
const $PlayingCard = _$PlayingCardTearOff();

mixin _$PlayingCard {
  CardSuit get cardSuit;
  CardType get cardType;
  bool get faceUp;
  bool get opened;

  Map<String, dynamic> toJson();
  $PlayingCardCopyWith<PlayingCard> get copyWith;
}

abstract class $PlayingCardCopyWith<$Res> {
  factory $PlayingCardCopyWith(
          PlayingCard value, $Res Function(PlayingCard) then) =
      _$PlayingCardCopyWithImpl<$Res>;
  $Res call({CardSuit cardSuit, CardType cardType, bool faceUp, bool opened});
}

class _$PlayingCardCopyWithImpl<$Res> implements $PlayingCardCopyWith<$Res> {
  _$PlayingCardCopyWithImpl(this._value, this._then);

  final PlayingCard _value;
  // ignore: unused_field
  final $Res Function(PlayingCard) _then;

  @override
  $Res call({
    Object cardSuit = freezed,
    Object cardType = freezed,
    Object faceUp = freezed,
    Object opened = freezed,
  }) {
    return _then(_value.copyWith(
      cardSuit: cardSuit == freezed ? _value.cardSuit : cardSuit as CardSuit,
      cardType: cardType == freezed ? _value.cardType : cardType as CardType,
      faceUp: faceUp == freezed ? _value.faceUp : faceUp as bool,
      opened: opened == freezed ? _value.opened : opened as bool,
    ));
  }
}

abstract class _$PlayingCardCopyWith<$Res>
    implements $PlayingCardCopyWith<$Res> {
  factory _$PlayingCardCopyWith(
          _PlayingCard value, $Res Function(_PlayingCard) then) =
      __$PlayingCardCopyWithImpl<$Res>;
  @override
  $Res call({CardSuit cardSuit, CardType cardType, bool faceUp, bool opened});
}

class __$PlayingCardCopyWithImpl<$Res> extends _$PlayingCardCopyWithImpl<$Res>
    implements _$PlayingCardCopyWith<$Res> {
  __$PlayingCardCopyWithImpl(
      _PlayingCard _value, $Res Function(_PlayingCard) _then)
      : super(_value, (v) => _then(v as _PlayingCard));

  @override
  _PlayingCard get _value => super._value as _PlayingCard;

  @override
  $Res call({
    Object cardSuit = freezed,
    Object cardType = freezed,
    Object faceUp = freezed,
    Object opened = freezed,
  }) {
    return _then(_PlayingCard(
      cardSuit: cardSuit == freezed ? _value.cardSuit : cardSuit as CardSuit,
      cardType: cardType == freezed ? _value.cardType : cardType as CardType,
      faceUp: faceUp == freezed ? _value.faceUp : faceUp as bool,
      opened: opened == freezed ? _value.opened : opened as bool,
    ));
  }
}

@JsonSerializable()
class _$_PlayingCard extends _PlayingCard {
  const _$_PlayingCard(
      {@required this.cardSuit,
      @required this.cardType,
      this.faceUp = false,
      this.opened = false})
      : assert(cardSuit != null),
        assert(cardType != null),
        assert(faceUp != null),
        assert(opened != null),
        super._();

  factory _$_PlayingCard.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayingCardFromJson(json);

  @override
  final CardSuit cardSuit;
  @override
  final CardType cardType;
  @JsonKey(defaultValue: false)
  @override
  final bool faceUp;
  @JsonKey(defaultValue: false)
  @override
  final bool opened;

  @override
  String toString() {
    return 'PlayingCard(cardSuit: $cardSuit, cardType: $cardType, faceUp: $faceUp, opened: $opened)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayingCard &&
            (identical(other.cardSuit, cardSuit) ||
                const DeepCollectionEquality()
                    .equals(other.cardSuit, cardSuit)) &&
            (identical(other.cardType, cardType) ||
                const DeepCollectionEquality()
                    .equals(other.cardType, cardType)) &&
            (identical(other.faceUp, faceUp) ||
                const DeepCollectionEquality().equals(other.faceUp, faceUp)) &&
            (identical(other.opened, opened) ||
                const DeepCollectionEquality().equals(other.opened, opened)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cardSuit) ^
      const DeepCollectionEquality().hash(cardType) ^
      const DeepCollectionEquality().hash(faceUp) ^
      const DeepCollectionEquality().hash(opened);

  @override
  _$PlayingCardCopyWith<_PlayingCard> get copyWith =>
      __$PlayingCardCopyWithImpl<_PlayingCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayingCardToJson(this);
  }
}

abstract class _PlayingCard extends PlayingCard {
  const _PlayingCard._() : super._();
  const factory _PlayingCard(
      {@required CardSuit cardSuit,
      @required CardType cardType,
      bool faceUp,
      bool opened}) = _$_PlayingCard;

  factory _PlayingCard.fromJson(Map<String, dynamic> json) =
      _$_PlayingCard.fromJson;

  @override
  CardSuit get cardSuit;
  @override
  CardType get cardType;
  @override
  bool get faceUp;
  @override
  bool get opened;
  @override
  _$PlayingCardCopyWith<_PlayingCard> get copyWith;
}
