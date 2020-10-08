// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

class _$PlayerTearOff {
  const _$PlayerTearOff();

// ignore: unused_element
  _Player call({@required String name, @required List<PlayingCard> deck}) {
    return _Player(
      name: name,
      deck: deck,
    );
  }
}

// ignore: unused_element
const $Player = _$PlayerTearOff();

mixin _$Player {
  String get name;
  List<PlayingCard> get deck;

  Map<String, dynamic> toJson();
  $PlayerCopyWith<Player> get copyWith;
}

abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res>;
  $Res call({String name, List<PlayingCard> deck});
}

class _$PlayerCopyWithImpl<$Res> implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  final Player _value;
  // ignore: unused_field
  final $Res Function(Player) _then;

  @override
  $Res call({
    Object name = freezed,
    Object deck = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      deck: deck == freezed ? _value.deck : deck as List<PlayingCard>,
    ));
  }
}

abstract class _$PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$PlayerCopyWith(_Player value, $Res Function(_Player) then) =
      __$PlayerCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<PlayingCard> deck});
}

class __$PlayerCopyWithImpl<$Res> extends _$PlayerCopyWithImpl<$Res>
    implements _$PlayerCopyWith<$Res> {
  __$PlayerCopyWithImpl(_Player _value, $Res Function(_Player) _then)
      : super(_value, (v) => _then(v as _Player));

  @override
  _Player get _value => super._value as _Player;

  @override
  $Res call({
    Object name = freezed,
    Object deck = freezed,
  }) {
    return _then(_Player(
      name: name == freezed ? _value.name : name as String,
      deck: deck == freezed ? _value.deck : deck as List<PlayingCard>,
    ));
  }
}

@JsonSerializable()
class _$_Player extends _Player {
  const _$_Player({@required this.name, @required this.deck})
      : assert(name != null),
        assert(deck != null),
        super._();

  factory _$_Player.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayerFromJson(json);

  @override
  final String name;
  @override
  final List<PlayingCard> deck;

  @override
  String toString() {
    return 'Player(name: $name, deck: $deck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Player &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.deck, deck) ||
                const DeepCollectionEquality().equals(other.deck, deck)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(deck);

  @override
  _$PlayerCopyWith<_Player> get copyWith =>
      __$PlayerCopyWithImpl<_Player>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayerToJson(this);
  }
}

abstract class _Player extends Player {
  const _Player._() : super._();
  const factory _Player(
      {@required String name, @required List<PlayingCard> deck}) = _$_Player;

  factory _Player.fromJson(Map<String, dynamic> json) = _$_Player.fromJson;

  @override
  String get name;
  @override
  List<PlayingCard> get deck;
  @override
  _$PlayerCopyWith<_Player> get copyWith;
}
