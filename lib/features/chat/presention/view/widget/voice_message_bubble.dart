import 'package:flutter/material.dart';

class AudioMessageCard extends StatelessWidget {
  final String profileImage;
  final bool isPlaying;
  final Duration duration;
  final Duration position;
  final VoidCallback onPlayPause;
  final ValueChanged<double> onSeek;

  const AudioMessageCard({
    super.key,
    required this.profileImage,
    required this.isPlaying,
    required this.duration,
    required this.position,
    required this.onPlayPause,
    required this.onSeek,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          height: 47,
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          constraints: BoxConstraints(maxWidth: 260),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage(profileImage),
              ),
              SizedBox(width: 5),
              _buildPlayPauseButton(),
              _buildSliderWithTime(context: context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlayPauseButton() {
    return IconButton(
      icon: Icon(
        isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
        color: Colors.blue,
        size: 24,
      ),
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(),
      onPressed: onPlayPause,
    );
  }

  Widget _buildSliderWithTime({required BuildContext context}) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 15),
          SizedBox(
            height: 5,
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 2,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                activeTrackColor: Colors.blue,
                inactiveTrackColor: Colors.blue.shade200,
                thumbColor: Colors.blue,
              ),
              child: Slider(
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: onSeek,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              _formatDuration(duration),
              style: TextStyle(fontSize: 10, color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String minutes = duration.inMinutes.toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }
}
