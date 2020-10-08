import 'package:riverpod_sample/playingcard/model/playing_card.dart';

abstract class PlayingCardRepository {
  List<List<PlayingCard>> getPlayersDecks(int players);
}

class PlayingCardRepositoryImpl implements PlayingCardRepository {
  @override
  List<List<PlayingCard>> getPlayersDecks(int players) {
    final decks = <PlayingCard>[];
    CardSuit.values.forEach((suit) {
      CardType.values.forEach((type) {
        decks.add(PlayingCard(cardType: type, cardSuit: suit, faceUp: false));
      });
    });

    final playerDecks = List.generate(players, (index) => <PlayingCard>[]);
    for (int i; i < decks.length; i++) {
      playerDecks[i % players].add(decks[i]);
    }

    return playerDecks;
  }
}
