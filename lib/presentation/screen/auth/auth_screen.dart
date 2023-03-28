import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/bloc/login/login_form_cubit.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/bloc/login/login_form_state.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/widgets/button/app_flat_button.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/widgets/dialog/loading_dialog.dart';
import 'package:pacifico_sin_limites_silicon_senpais/presentation/widgets/textfield/app_textfield.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/colors.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/font_styles.dart';
import 'package:pacifico_sin_limites_silicon_senpais/resources/strings.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late TextEditingController _dniController;
  late LoadingDialog _loadingDialog;
  late LoginFormCubit _loginFormCubit;

  @override
  void initState() {
    super.initState();
    _loginFormCubit = LoginFormCubit();
    _loadingDialog = LoadingDialog(context: context);

    _dniController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    if (_dniController.text != _loginFormCubit.state.dni) {
      _dniController.text = _loginFormCubit.state.dni;
    }

    return BlocProvider(
      create: (context) => _loginFormCubit,
      child: BlocConsumer<LoginFormCubit, LoginFormState>(
          bloc: _loginFormCubit,
          listener: (context, state) {
            if (state.submiting) {
              _loadingDialog.show();
            } else {
              _loadingDialog.hide();
            }
          },
          builder: (context, state) {
            return Scaffold(
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.auth.authTitle,
                      style: AppFontStyles.primaryTextBold16,
                    ),
                    Text(
                      AppStrings.auth.authTitle2,
                      style: AppFontStyles.secondaryTextBold16,
                    ),
                    SizedBox(height: 20.h),
                    AppTextField(
                      hintText: 'Ingresa tu DNI',
                      errorText: state.dniError,
                      onChange: _loginFormCubit.changeDni,
                      controller: _dniController,
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Expanded(
                          child: AppFlatButton(
                            text: 'Iniciar Sesión',
                            backgroundColor: AppColors.secondaryColor,
                            textColor: AppColors.primaryTextColor,
                            onPressed: state.isValidForm ? () {
                              _loginFormCubit.submit();
                            } : null,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
