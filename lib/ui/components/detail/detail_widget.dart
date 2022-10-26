import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_size_constant.dart';
import 'package:test_project/models/users/user_model.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({Key? key, required this.userModel}) : super(key: key);

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: Sizes.p100,
                  backgroundImage: NetworkImage("${userModel.avatar}"),
                ),
                gapHeight10,
                Text(
                  "${userModel.name} ${userModel.surname}",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            gapHeight10,
            ListTile(
              title: const Text(
                "Information",
                textAlign: TextAlign.center,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(Sizes.p8),
                child: Text(
                  "${userModel.description}",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
