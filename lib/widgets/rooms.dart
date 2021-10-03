import 'package:facebook_clone_app/config/palette.dart';
import 'package:facebook_clone_app/models/user_model.dart';
import 'package:facebook_clone_app/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  const Rooms({
    Key? key,
    required this.onlineUsers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: _createRoomButton(),
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ProfileAvatar(
              imageUrl: onlineUsers[index - 1].imageUrl,
              isActive: true,
            ),
          );
        },
      ),
    );
  }
}

class _createRoomButton extends StatelessWidget {
  const _createRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                Palette.createRoomGradient.createShader(rect),
            child: const Icon(
              Icons.video_call_rounded,
              size: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 6),
          const Text('Create\nRoom'),
        ],
      ),
      style: OutlinedButton.styleFrom(
        textStyle: const TextStyle(
          color: Palette.facebookBlue,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        side: BorderSide(
          color: (Colors.blueAccent[100])!,
          width: 3,
        ),
      ),
    );
  }
}
