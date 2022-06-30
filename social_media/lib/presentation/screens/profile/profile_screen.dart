import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/core/colors/colors.dart';
import 'package:social_media/core/constants/constants.dart';
import 'package:social_media/presentation/screens/post/post_texture.dart';
import 'package:social_media/presentation/widgets/gap.dart';

import '../../../logic/user_data/user_data_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UserDataBloc>().add(GetCurrentUser());
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: appBarHeight,
        child: ProfileAppBar(),
      ),
      body: ProfileBody(),
    );
  }
}

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: IconTheme(
          data: Theme.of(context).iconTheme,
          child: Icon(
            Icons.keyboard_arrow_left,
            size: 25,
          ),
        ),
        onPressed: () {
          // Get.back();
          Navigator.of(context).pop();
        },
      ),
      titleSpacing: -5.sm,
      title: Text(
        "Profile",
        style: Theme.of(context).textTheme.titleMedium,
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: IconTheme(
                data: Theme.of(context).iconTheme, child: Icon(Icons.settings)))
      ],
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 998.sm),
        height: double.infinity,
        child: Padding(
          padding: constPadding,
          child: ListView(
            children: [
              Container(
                height: 240.sm,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: primaryBlue.withOpacity(0.15),
                    gradient: LinearGradient(colors: [
                      primary.withOpacity(0.3),
                      primaryBlue.withOpacity(0.3)
                    ]),
                    borderRadius: BorderRadius.circular(10.sm)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.sm, horizontal: 20.sm),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CircleAvatar(
                                    radius: 60.sm,
                                    backgroundImage:
                                        AssetImage("assets/dummy/dummyDP.png"),
                                  ),
                                  Container(
                                    width: 35.sm,
                                    height: 35.sm,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.sm),
                                        color: primary),
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 19,
                                      color: pureWhite,
                                    ),
                                  )
                                ],
                              ),
                              Gap(
                                H: 20.sm,
                              ),
                              Text(
                                "User Name",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontSize: 20.sm,
                                        fontWeight: FontWeight.w500),
                              ),
                              Gap(
                                H: 5.sm,
                              ),
                              Text(
                                "User Email",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontSize: 16.sm,
                                        fontWeight: FontWeight.w500),
                              ),
                            ]),
                        // Gap(W: 10.sm),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 70.sm,
                                width: 70.sm,
                                decoration: BoxDecoration(
                                    // color: smoothWhite,
                                    borderRadius: BorderRadius.circular(10.sm)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Followers",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(fontSize: 15.sm),
                                    ),
                                    Text(
                                      "10324",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(fontSize: 17.sm),
                                    )
                                  ],
                                ),
                              ),
                              Gap(
                                W: 20.sm,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 70.sm,
                                    width: 70.sm,
                                    decoration: BoxDecoration(
                                        // color: smoothWhite,
                                        borderRadius:
                                            BorderRadius.circular(10.sm)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Following",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(fontSize: 15.sm),
                                        ),
                                        Text(
                                          "10324",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(fontSize: 17.sm),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 70.sm,
                                    width: 70.sm,
                                    decoration: BoxDecoration(
                                        // color: smoothWhite,
                                        borderRadius:
                                            BorderRadius.circular(10.sm)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Posts",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(fontSize: 15.sm),
                                        ),
                                        Text(
                                          "100",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(fontSize: 17.sm),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                ),
              ),
              Gap(
                H: 20.sm,
              ),
              Text(
                dummyLongText,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 14.5.sm),
              ),
              Gap(
                H: 10.sm,
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(primary)),
                    child: Text(
                      "Follow",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    onPressed: () {},
                  )),
                  Gap(
                    W: 30.sm,
                  ),
                  Expanded(
                      child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(primary)),
                    child: Text(
                      "Message",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    onPressed: () {},
                  ))
                ],
              ),
              Gap(H: 10.sm),
              Text(
                "POSTS",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: primary,
                    fontSize: 18.sm,
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                color: primary,
                thickness: 1.5,
              ),
              Gap(H: 10.sm),

              // SingleChildScrollView(
              //   child: ListView.builder(
              //     // shrinkWrap: true,
              //     itemBuilder: (context, index) => PostTexture(),
              //     itemCount: 10,
              //   ),
              // )
              // ListView.builder(
              //   shrinkWrap: true,
              //   itemBuilder: (ctx, ind) => PostTexture(),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

const List<Widget> list = [
  PostTexture(),
  PostTexture(),
  PostTexture(),
  PostTexture(),
  PostTexture(),
  PostTexture(),
  PostTexture(),
  PostTexture(),
  PostTexture(),
  PostTexture(),
  PostTexture(),
  PostTexture(),
];
