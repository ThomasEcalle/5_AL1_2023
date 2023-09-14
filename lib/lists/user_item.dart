import 'package:al_2023/lists/user.dart';
import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  const UserItem({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        print('coucou');
      },
      title: Text(
        '${user.firstName} ${user.lastName}',
      ),
      subtitle: Text(
        user.address,
      ),
      leading: const Icon(Icons.people),
    );

    // return Container(
    //   height: 100,
    //   width: 200,
    //   color: Colors.orange,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Text(
    //         '${user.firstName} ${user.lastName}',
    //         style: Theme.of(context).textTheme.bodyMedium,
    //       ),
    //       Text(
    //         user.address,
    //         style: Theme.of(context).textTheme.bodyMedium,
    //       ),
    //     ],
    //   ),
    // );
  }
}
