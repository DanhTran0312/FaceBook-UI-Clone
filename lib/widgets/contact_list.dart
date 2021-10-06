import 'package:facebook_clone_app/models/user_model.dart';
import 'package:facebook_clone_app/widgets/user_card.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final List<User> users;
  const ContactList({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Contatcts',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Icon(Icons.search, color: Colors.grey[600]),
              const SizedBox(width: 8),
              Icon(Icons.more_horiz_rounded, color: Colors.grey[600]),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemBuilder: (BuildContext context, int index) {
                final User user = users[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: UserCard(user: user),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
