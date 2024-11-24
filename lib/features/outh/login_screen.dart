import 'package:auto_route/auto_route.dart';
import 'package:et_driver/themes/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'login_notifier.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginForm = ref.watch(loginFormProvider);

    return SafeArea(
      child: Scaffold(
        backgroundColor: HColor.black,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  color: HColor.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                focusNode: emailFocusNode,
                onChanged: (value) =>
                    ref.read(loginFormProvider.notifier).updateUsername(value),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(passwordFocusNode);
                },
                decoration: InputDecoration(
                  hintText: 'Enter your username',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  prefixIcon:
                      const Icon(Icons.email_outlined, color: HColor.blue500),
                  filled: true,
                  fillColor: HColor.white,
                  focusColor: HColor.black,
                  hoverColor: HColor.blue500,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 15),

              TextFormField(
                focusNode: passwordFocusNode,
                obscureText: !loginForm.isPasswordVisible,
                onChanged: (value) =>
                    ref.read(loginFormProvider.notifier).updatePassword(value),
                textInputAction:
                    TextInputAction.done, // "Done" button on the keyboard
                onFieldSubmitted: (_) {
                  FocusScope.of(context).unfocus();
                  // Handle the "Done" action (e.g., submit the form)
                  // ref.read(loginFormProvider.notifier).submitLogin();
                },
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  prefixIcon:
                      const Icon(Icons.lock_outline, color: HColor.blue500),
                  suffixIcon: IconButton(
                    icon: Icon(
                      loginForm.isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: HColor.blue500,
                    ),
                    onPressed: () => ref
                        .read(loginFormProvider.notifier)
                        .togglePasswordVisibility(),
                  ),
                  filled: true,
                  fillColor: HColor.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),
              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Implement Forgot Password action
                  },
                  child: const Center(
                    child: Text(
                      'Forgot Your Password?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: HColor.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: loginForm.isValid
                    ? () {
                        // Implement login logic
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Logged In!')),
                        );
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: HColor.green25,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
