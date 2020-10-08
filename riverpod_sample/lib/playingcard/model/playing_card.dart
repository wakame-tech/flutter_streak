import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playing_card.freezed.dart';
part 'playing_card.g.dart';

enum CardSuit {
  spades,
  hearts,
  diamonds,
  clubs,
}

enum CardType {
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  ten,
  jack,
  queen,
  king
}

enum CardColor {
  red,
  black,
}

@freezed
abstract class PlayingCard implements _$PlayingCard {
  const PlayingCard._();

  const factory PlayingCard({
    @required CardSuit cardSuit,
    @required CardType cardType,
    @Default(false) bool faceUp,
    @Default(false) bool opened,
  }) = _PlayingCard;

  factory PlayingCard.fromJson(Map<String, dynamic> json) =>
      _$PlayingCardFromJson(json);

  CardColor get cardColor {
    if (this.cardSuit == CardSuit.hearts || cardSuit == CardSuit.diamonds) {
      return CardColor.red;
    } else {
      return CardColor.black;
    }
  }
}
