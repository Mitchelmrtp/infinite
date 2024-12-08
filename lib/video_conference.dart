import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

class VideoConferencePage extends StatelessWidget {
  final String conferenceID;

  const VideoConferencePage({
    super.key,
    required this.conferenceID,
  });

  final _uuid = const Uuid();

  @override
  Widget build(BuildContext context) {
    final userID = _uuid.v4(); 
    final userName = "User_${userID.substring(0, 6)}";

    return SafeArea(
      child: ZegoUIKitPrebuiltVideoConference(
        appID: 1499786327,
        appSign: "b28e86f9327cbb674ebbd57a4995b69ccbd6917c5056846f6d2f0dab1c9f24d0",
        userID: userID,
        userName: userName,
        conferenceID: conferenceID,
        config: ZegoUIKitPrebuiltVideoConferenceConfig(),
      ),
    );
  }
}
