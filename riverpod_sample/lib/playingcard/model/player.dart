// Copyright © 2020 WorldRIZe. All rights reserved.

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_sample/playingcard/model/playing_card.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
abstract class Player implements _$Player {
  const Player._();

  const factory Player({
    @required String name,
    @required List<PlayingCard> deck,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
