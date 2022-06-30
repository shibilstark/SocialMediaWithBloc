import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_media/core/colors/colors.dart';
import 'package:social_media/core/constants/app_constant_strings.dart';
import 'package:social_media/core/constants/constants.dart';
import 'package:social_media/core/themes/themes.dart';
import 'package:social_media/presentation/widgets/custom_text_field.dart';
import 'package:social_media/presentation/widgets/dialogues.dart';
import 'package:social_media/presentation/widgets/gap.dart';
import 'package:social_media/utility/validators/form_validators.dart';
import 'package:uuid/uuid.dart';
import '../../../data/models/user_model/user_model.dart';
import '../../../logic/authentication/create_account/create_account_bloc.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: SignUpBody()),
    );
  }
}

TextEditingController _nameController = TextEditingController();
TextEditingController _emailtController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _conformPasswordController = TextEditingController();
final dialogueKey = GlobalKey<NavigatorState>();

class SignUpBody extends StatelessWidget {
  SignUpBody({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  bool _signUpFormValidate() {
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
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [primaryBlue, primary],
      )),
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Padding(
            padding: constPadding,
            child: SingleChildScrollView(
                child: Column(
              children: [
                SvgPicture.asset(
                  "assets/svg/account.svg",
                  width: 350.sm,
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
                          controller: _nameController,
                          validators: FormValidators.nameValidator,
                          type: "Name",
                          inputType: TextInputType.name,
                          prefixIcon: Icons.badge,
                        ),
                        Gap(
                          H: 15.sm,
                        ),
                        CustomTextField(
                            controller: _emailtController,
                            validators: FormValidators.emailValidator,
                            type: "Email",
                            inputType: TextInputType.emailAddress,
                            prefixIcon: Icons.email),
                        Gap(
                          H: 15.sm,
                        ),
                        CustomTextFieldForPassword(
                          controller: _passwordController,
                          validators: FormValidators.nameValidator,
                          type: "Password",
                          inputType: TextInputType.name,
                          //  prefixIcon: Icons.badge,
                        ),
                        Gap(
                          H: 15.sm,
                        ),
                        const ConformPasswordTextField(),
                        Gap(
                          H: 20.sm,
                        ),
                        const CheckBoxWidget(),
                        Gap(
                          H: 40.sm,
                        ),
                      ],
                    ),
                  ),
                ),
                BlocBuilder<CreateAccountBloc, CreateAccountState>(
                  builder: (context, state) {
                    if (state.createAccountIsSuccess) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        Navigator.pushReplacementNamed(context, "/home");
                      });
                    } else if (state.createAccountIsError) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        showSimpleDialogue(
                            context: context, message: "Error Happened");
                      });
                    } else if (state.createAccountIsLoading) {
                    } else {}
                    return Builder(builder: (context) {
                      return MaterialButton(
                          color: pureWhite,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.sm)),
                          onPressed: () async {
                            if (_signUpFormValidate() && _checkBoxValue.value) {
                              final userId = Uuid();
                              final currentDateTime = DateTime.now();
                              final model = UserModel(
                                name: _nameController.text.trim(),
                                email: _emailtController.text.trim(),
                                password: _passwordController.text.trim(),
                                isAgreed: true,
                                isPrivate: false,
                                isBlocked: false,
                                creationDate: currentDateTime,
                                isVerified: false,
                                userId: userId.v4(),
                                discription: profileDiscriptionAuto,
                                followers: [],
                                following: [],
                                posts: [],
                                profileImage: null,
                              );

                              context
                                  .read<CreateAccountBloc>()
                                  .add(CreateNewAccount(model: model));
                            }
                          },
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15.sm, horizontal: 50.sm),
                              child: state.createAccountIsLoading
                                  ? Center(
                                      child: CircularProgressIndicator(
                                          color: primaryBlue),
                                    )
                                  : Text(
                                      "Create Account",
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
                    Navigator.of(context).pushReplacementNamed("/login");
                  },
                  child: RichText(
                      text: TextSpan(children: [
                    // InlineSpan("Don't Have an Account?  ", style: smallTextureStyle),
                    TextSpan(
                        text: "Already memeber? ", style: smallTextureStyle),
                    TextSpan(
                        text: "Log in",
                        style: smallTextureStyle.copyWith(
                            fontWeight: FontWeight.bold))
                  ])),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}

class ConformPasswordTextField extends StatelessWidget {
  const ConformPasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _conformPasswordController,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 15.sm),
      validator: (value) {
        return _conformPasswordController.text.trim() !=
                    _conformPasswordController.text.trim() ||
                _conformPasswordController.text.trim().isEmpty
            ? "Password must be same"
            : null;
      },
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock,
          color: pureWhite,
        ),
        hintText: "Conform Password",
        contentPadding:
            EdgeInsets.symmetric(vertical: 18.sm, horizontal: 10.sm),
        hintStyle: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: pureWhite.withOpacity(0.6)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: pureWhite, width: 1.sm),
          borderRadius: BorderRadius.circular(5.sm),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: pureWhite, width: 1.sm),
          borderRadius: BorderRadius.circular(5.sm),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: pureWhite, width: 1.sm),
          borderRadius: BorderRadius.circular(5.sm),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: pureWhite, width: 1.sm),
          borderRadius: BorderRadius.circular(5.sm),
        ),
      ),
    );
  }
}

ValueNotifier<bool> _checkBoxValue = ValueNotifier(false);

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _checkBoxValue,
        builder: (context, bool value, _) {
          return Row(
            children: [
              SizedBox(
                height: 20.sm,
                width: 20.sm,
                child: Checkbox(
                  fillColor:
                      MaterialStateProperty.all(pureWhite.withOpacity(0.8)),
                  checkColor: primaryBlue,
                  value: _checkBoxValue.value,
                  activeColor: primaryBlue,
                  onChanged: (value) {
                    _checkBoxValue.value = value!;
                    _checkBoxValue.notifyListeners();
                  },
                ),
              ),
              Gap(W: 10.sm),
              Text(
                "I Accept all Terms and Conditions & Privacy Policy",
                style: _checkBoxValue.value
                    ? smallTextureStyle
                    : smallTextureStyle.copyWith(
                        color: pureWhite.withOpacity(0.7)),
              )
            ],
          );
        });
  }
}
