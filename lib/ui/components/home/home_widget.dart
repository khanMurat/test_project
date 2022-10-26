import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_size_constant.dart';
import 'package:test_project/core/extension/context_extension.dart';
import 'package:test_project/models/users/user_model.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key, required this.userModel, this.onPressed})
      : super(key: key);

  final UserModel userModel;
  final void Function()? onPressed;
  final String _elevatedButtonText = "DETAIL";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p8, vertical: Sizes.p8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: Sizes.p40,
                backgroundImage: NetworkImage(userModel.avatar.toString()),
              ),
              gapHeight10,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${userModel.name} ${userModel.surname}",
                      style: context.textTheme.titleLarge),
                  gapHeight10,
                  Text("Email: ${userModel.email}",
                      style: context.textTheme.subtitle2),
                  Text("Phone: ${userModel.phone}",
                      style: context.textTheme.subtitle2),
                ],
              ),
              gapHeight10,
              ElevatedButton(
                onPressed: onPressed,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Sizes.p40),
                  child: Text(_elevatedButtonText),
                ),
              ),
              // Optional For Id Value
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Text(
              //       "${userModel.id}",
              //       style: Theme.of(context).textTheme.labelSmall,
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
