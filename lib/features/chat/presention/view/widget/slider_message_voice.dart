import 'package:flutter/material.dart';

class SliderMessageVoice extends StatelessWidget {
  const SliderMessageVoice({
    super.key,
    required this.duration,
    required this.position,
    required this.onSeek,
  });

  final Duration duration;
  final Duration position;
  final ValueChanged<double> onSeek;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 5),
          activeTrackColor: Colors.blue,
          inactiveTrackColor: Colors.blue.shade300,
          thumbColor: Colors.blue,
        ),
        child: Slider(
          min: 0,
          max: duration.inSeconds.toDouble(),
          value: position.inSeconds.toDouble(),
          onChanged: onSeek,
        ),
      ),
    );
  }
}
