import 'package:flutter/material.dart';
import 'package:tones/models/number.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:tones/models/phrase.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.number, required this.color});
  final Item number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 90,
      child: Row(
        children: [
          Container(
            color: const Color(0xfffff6dc),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio(number.sounds),
                );
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem({Key? key, required this.color, required this.phrase})
      : super(key: key);

  final Phrase phrase;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 90,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: const TextStyle(fontSize: 14.4, color: Colors.white),
                ),
                Text(
                  phrase.enName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio(phrase.sound),
                );
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
