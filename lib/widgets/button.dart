import 'package:flextras/flextras.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import '../utils/extensions.dart';
import '../utils/hooks.dart';

/// A button that shows a circular progress indicator when the [onPressed] callback
/// is pending.
class AppButton extends HookWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  final AsyncCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    final (:pending, :snapshot, hasError: _) = useAsyncTask();

    return FilledButton(
      onPressed: onPressed == null ? null : () => pending.value = onPressed!(),
      child: SeparatedRow(
        separatorBuilder: () => const Gap(12),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (snapshot.connectionState == ConnectionState.waiting)
            SizedBox.square(
              dimension: 12,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: context.colorScheme.onPrimary,
              ),
            ),
          Text(label),
        ],
      ),
    );
  }
}
