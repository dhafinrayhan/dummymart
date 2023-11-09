import 'package:dio/dio.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../widgets/button.dart';
import '../models/login.dart';
import '../providers/auth_state.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(false);

    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    Future<void> login() async {
      isLoading.value = true;
      try {
        await ref.read(currentAuthStateProvider.notifier).login(Login(
              username: usernameController.text,
              password: passwordController.text,
            ));
      } on DioException catch (e) {
        if (!context.mounted) return;

        final message = e.response?.data?['message'] as String?;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(message ?? 'Login failed'),
        ));
      } finally {
        isLoading.value = false;
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SeparatedColumn(
          separatorBuilder: () => const Gap(16),
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.next,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
            ),
            AppButton(
              onPressed: login,
              label: 'Login',
              loading: isLoading.value,
            ),
          ],
        ),
      ),
    );
  }
}
