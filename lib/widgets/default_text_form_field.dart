import 'package:control_style/decorated_input_border.dart';
import 'package:flutter/material.dart';
import 'package:vascom/utils/color.utils.dart';
import 'package:vascom/utils/text.utils.dart';

class DefaultTextFormField extends StatefulWidget {
  const DefaultTextFormField({
    super.key,
    required this.controller,
    this.hint,
    this.isObsecure = false,
    this.validator,
  })  : named = null,
        suffixNamed = null;

  const DefaultTextFormField.named({
    super.key,
    required this.controller,
    required this.named,
    this.suffixNamed,
    this.hint,
    this.isObsecure = false,
    this.validator,
  });

  final TextEditingController controller;
  final String? named;
  final String? suffixNamed;
  final String? hint;
  final bool isObsecure;
  final String? Function(String?)? validator;

  @override
  State<DefaultTextFormField> createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  late bool obsecure = widget.isObsecure;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.named != null) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.named!,
                style: TextUtils.gilroyStyle.semiBold16NileBlue,
              ),
              if (widget.suffixNamed != null)
                Text(
                  widget.suffixNamed!,
                  style: TextUtils.proximaNovaStyle.semiBold14PaleBlue,
                ),
            ],
          ),
          const SizedBox(height: 16),
        ],
        TextFormField(
          controller: widget.controller,
          cursorColor: Colors.black,
          obscureText: obsecure,
          validator: widget.validator,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: DecoratedInputBorder(
              shadow: const [
                BoxShadow(
                  color: Color.fromARGB(41, 190, 190, 190),
                  blurRadius: 20,
                  offset: Offset(0, 16),
                ),
              ],
              child: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
            isDense: true,
            hintText: widget.hint,
            suffixIcon: widget.isObsecure
                ? IconButton(
                    onPressed: onTapObsecureIcon,
                    splashColor: Colors.transparent,
                    color: ColorUtils.carbonGrey,
                    icon: obsecure
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  )
                : null,
          ),
        ),
      ],
    );
  }

  void onTapObsecureIcon() {
    obsecure = !obsecure;
    setState(() {});
  }
}
