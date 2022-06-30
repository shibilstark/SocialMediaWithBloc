import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_media/core/colors/colors.dart';
import 'package:social_media/core/constants/constants.dart';
import 'package:social_media/core/themes/themes.dart';
import 'package:social_media/presentation/widgets/custom_text_field.dart';
import 'package:social_media/presentation/widgets/dialogues.dart';
import 'package:social_media/presentation/widgets/gap.dart';
import 'package:social_media/utility/validators/form_validators.dart';

import '../../../logic/authentication/login/login_bloc.dart';

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: LoginBody()),
    );
  }
}

final dialogueKey = GlobalKey<NavigatorState>();

class LoginBody extends StatelessWidget {
  LoginBody({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  bool _loginFormValidate() {
    final validate = _formKey.currentState!.validate();

    if (validate) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: secondaryBlue,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [primary, primaryBlue],
      )),
      child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          height: double.infinity,
          child: Padding(
            padding: constPadding,
            child: Center(
              child: Column(
                children: [
                  Gap(H: 50.sm),
                  Text(
                    "Application Name",
                    style: titleLarge,
                  ),
                  Gap(
                    H: 40.sm,
                  ),
                  SvgPicture.asset(
                    "assets/svg/account access.svg",
                    width: 250.sm,
                  ),
                  Gap(
                    H: 60.sm,
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: 350.sm),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          CustomTextField(
                            controller: _emailController,
                            validators: FormValidators.emailValidator,
                            type: "Email",
                            inputType: TextInputType.emailAddress,
                            prefixIcon: Icons.email,
                          ),
                          Gap(
                            H: 20.sm,
                          ),
                          CustomTextFieldForPassword(
                              controller: _passwordController,
                              validators: null,
                              type: "Password",
                              inputType: TextInputType.visiblePassword),
                          Gap(
                            H: 40.sm,
                          ),
                        ],
                      ),
                    ),
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      if (state.loginStateIsSuccess) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          Navigator.pushReplacementNamed(context, "/home");
                        });
                      } else if (state.loginStateIsError) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          showSimpleDialogue(
                              context: context, message: "Error Happened");
                        });
                      }

                      return Builder(builder: (context) {
                        return MaterialButton(
                            color: pureWhite,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.sm)),
                            onPressed: () async {
                              if (_loginFormValidate()) {
                                final email = _emailController.text.trim();
                                final password =
                                    _passwordController.text.trim();
                                context.read<LoginBloc>().add(LoginToAccount(
                                    email: email, password: password));

                                log("$email    $password");
                              }
                            },
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15.sm, horizontal: 50.sm),
                                child: Text(
                                  "Sign In",
                                  style: roundedButtonStyle,
                                )));
                      });
                    },
                  ),
                  Gap(
                    H: 20.sm,
                  ),
                  GestureDetector(
                    onTap: () async {
                      Navigator.of(context).pushReplacementNamed("/signup");
                    },
                    child: RichText(
                        text: TextSpan(children: [
                      // InlineSpan("Don't Have an Account?  ", style: smallTextureStyle),
                      TextSpan(
                          text: "Not a member? ", style: smallTextureStyle),
                      TextSpan(
                          text: "Sign up",
                          style: smallTextureStyle.copyWith(
                              fontWeight: FontWeight.bold))
                    ])),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

clearLoginController() {
  _emailController.clear();
  _passwordController.clear();
}
