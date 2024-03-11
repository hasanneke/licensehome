import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:licensehome/feature/home/home_page.dart';
import 'package:licensehome/feature/login/bloc/login_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loggedIn: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: [
              const Gap(60),
              const FlutterLogo(
                size: 120,
              ),
              const Gap(12),
              FormBuilderTextField(
                name: 'email',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ]),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: 'e-posta',
                ),
              ),
              const Gap(12),
              FormBuilderTextField(
                name: 'password',
                obscureText: true,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                  ),
                  hintText: 'şifre',
                ),
              ),
              const Gap(8),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState!.save();
                    final value = _formKey.currentState?.value;
                    context.read<LoginBloc>().add(
                          LoginEvent.login(
                            email: value!['email'],
                            password: value['password'],
                          ),
                        );
                  }
                },
                child: const Text('Giriş Yap'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
