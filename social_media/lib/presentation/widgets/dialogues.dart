import 'package:flutter/material.dart';
import 'package:social_media/core/colors/colors.dart';

showSimpleDialogue({required BuildContext context, required String message}) {
  showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Close"))
            ],
          ));
}

showLoadingDialogue({required BuildContext context}) {
  showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
            content: Center(
                child: CircularProgressIndicator(
              color: primary,
            )),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Cancel")),
                ],
              )
            ],
          ));
}
