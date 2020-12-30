import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:video_player/video_player.dart';

class VideoContainer extends StatefulWidget {
  final double width;
  final String videoURL;

  const VideoContainer({Key key, @required this.width, @required this.videoURL}) : super(key: key);


  @override
  _VideoContainerState createState() => _VideoContainerState();
}

class _VideoContainerState extends State<VideoContainer> {
  VideoPlayerController _videoPlayerController;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    this.initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(widget.videoURL);
    await _videoPlayerController.initialize();
    _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: false,
        allowPlaybackSpeedChanging: false,
        aspectRatio: _videoPlayerController.value.aspectRatio);
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: Global.videoBoxDecoration,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: _chewieController != null &&
                _chewieController.videoPlayerController.value.initialized
            ? Chewie(
                controller: _chewieController,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                  Text('Loading'),
                ],
              ),
      ),
    );
  }
}