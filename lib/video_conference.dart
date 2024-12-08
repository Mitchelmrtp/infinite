import 'package:flutter/material.dart';
import 'package:infinite/env.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';


class VideoConferencePage extends StatelessWidget {
  final String conferenceID;

  const VideoConferencePage({
    super.key,
    required this.conferenceID,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    
      child: ZegoUIKitPrebuiltVideoConference(
        appID: 1499786327, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: "b28e86f9327cbb674ebbd57a4995b69ccbd6917c5056846f6d2f0dab1c9f24d0", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: 'user_id',
        userName: 'user_name',
        conferenceID: conferenceID,
        config: ZegoUIKitPrebuiltVideoConferenceConfig(),
      ),

    );
  } 
}
