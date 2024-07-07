
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key, required this.callID,required this.userId,required this.userName});
  final String callID;
  final String userName;
  final String userId;

  @override
  Widget build(BuildContext context)  {
    return ZegoUIKitPrebuiltCall(
      appID: 348774479, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: "f015e2af5ef626e013a0c0cd9a988db7d1bff812e7536b70b2520b45962e9a3e", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userId,
      userName: userName,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
