import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final bool loading;
  final bool enable;
  final String lable;
  final Widget? icon;
  final Color? color;
  final Color? loadingColor;
  final double borderRadius;
  final Color? textColor;
  final TextStyle? textStyle;
  final Function() onPressed;
  final Widget? spacer;
  final ButtonType type;
  final Widget? lableWidget;

  const Button({
    super.key,
    this.loading = false,
    this.enable = true,
    this.lable = 'Button',
    this.borderRadius = 5,
    this.color,
    this.loadingColor,
    this.icon,
    this.textColor,
    this.textStyle,
    required this.onPressed,
    this.spacer,
    this.lableWidget,
    this.type = ButtonType.elevated,
  });

  @override
  Widget build(BuildContext context) {
    return _builder(context);
  }

  Widget _builder(BuildContext context) {
    return IgnorePointer(
      ignoring: !enable,
      child: _buildBtn(context),
    );
  }

  Widget _buildBtn(BuildContext context) {
    final buttons = {
      ButtonType.elevated: ElevatedButton(
        style: style(context),
        onPressed: onPressed,
        child: child(context),
      ),
      ButtonType.outlined: OutlinedButton(
        style: style(context),
        onPressed: onPressed,
        child: child(context),
      ),
      ButtonType.text: TextButton(
        onPressed: onPressed,
        child: child(context),
      )
    };
    return buttons[type]!;
  }

  Widget child(BuildContext context) {
    List<Widget> children = [];
    if (!loading) {
      children.add(lableWidget ??
          Text(
            lable,
            style: textStyle ??
                Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: textColor),
          ));
      if (icon != null) {
        children.add(spacer ??
            const SizedBox(
              width: 10,
            ));
        children.add(icon!);
      }
    }
    if (loading) {
      children.add(SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: loadingColor ?? Theme.of(context).progressIndicatorTheme.color,
        ),
      ));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }

  ButtonStyle style(BuildContext context) => ButtonStyle(
        overlayColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return Colors.black.withOpacity(.5);
          }
          return color;
        }),
        foregroundColor:
            WidgetStatePropertyAll(textColor ?? Theme.of(context).focusColor),
        textStyle: WidgetStatePropertyAll(textStyle),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.all(15),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        backgroundColor: color != null
            ? WidgetStatePropertyAll(enable ? color : color?.withOpacity(.5))
            : null,
      );
}

enum ButtonType {
  elevated,
  outlined,
  text,
}
