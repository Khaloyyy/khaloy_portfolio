import 'package:flutter/material.dart';

import '../../config/themes.dart';
import '../../constants/utol_colors.dart' as colors;
import '../styles/utol_text_styles.dart';

class UtolDropDown extends StatefulWidget {
  const UtolDropDown({
    super.key,
    this.value,
    required this.items,
    this.hint,
    this.onChanged,
    this.width,
    this.height,
    this.formInsetPadding,
    this.enableLabel = true,
    this.enableFloatingLabel = false,
    this.label,
    this.errorText,
    this.topLabel,
    this.filled = false,
    this.fillColor,
    // this.validators,
    this.textfieldBorderRadius = const BorderRadius.all(Radius.circular(4)),
    this.textfieldBorderColor,
    this.textfieldFocusedBorderColor,
    this.textfieldEnabledBorderColor,
    this.textfieldErrorBorderColor,
    this.textfieldDisabledBorderColor,
    this.suffixIcon,
    this.tip,
    this.itemTextStyle,
    this.enabled = true,
    this.dropdownInitialText,
  });

  final String? value;
  final List<String> items;
  final String? hint;
  final ValueChanged<String?>? onChanged;
  final double? width;
  final double? height;
  final EdgeInsets? formInsetPadding;
  final bool enableLabel;
  final bool enableFloatingLabel;
  final String? label;
  final String? errorText;
  final String? topLabel;
  final bool filled;
  final Color? fillColor;
  final BorderRadius textfieldBorderRadius;
  final Color? textfieldBorderColor;
  final Color? textfieldFocusedBorderColor;
  final Color? textfieldEnabledBorderColor;
  final Color? textfieldErrorBorderColor;
  final Color? textfieldDisabledBorderColor;
  // final List<ValidationType>? validators;
  final TextStyle? itemTextStyle;
  final Widget? suffixIcon;
  final String? tip;
  final bool enabled;
  final String? dropdownInitialText;

  @override
  State<UtolDropDown> createState() => _UtolDropDownState();
}

class _UtolDropDownState extends State<UtolDropDown> {
  final List<DropdownMenuItem<String>> _tmpItems = <DropdownMenuItem<String>>[];

  void _preloadItems() {
    _tmpItems.clear();

    for (final String item in widget.items) {
      _tmpItems.add(
        DropdownMenuItem<String>(
          value: item,
          enabled: widget.enabled,
          child: Text(
            item,
            style: widget.itemTextStyle ??
                UtolTextStyles.small.copyWith(
                  overflow: TextOverflow.fade,
                ),
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    _preloadItems();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant UtolDropDown oldWidget) {
    _preloadItems();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (widget.topLabel != null)
          Text(widget.topLabel!, style: UtolTextStyles.extraSmallMedium),
        if (widget.topLabel != null) const SizedBox(height: 10),
        Container(
          width: widget.width,
          height: widget.height,
          padding: widget.formInsetPadding ?? EdgeInsets.zero,
          child: Theme(
            data: AppTheme(context: context).themeData,
            child: DropdownButtonFormField<String>(
              value: widget.value,
              hint: Text(
                widget.dropdownInitialText ??
                    'Select ${widget.label?.toLowerCase() ?? ''}',
                style: UtolTextStyles.small.copyWith(
                  color: !widget.enabled ? colors.lightGrey : null,
                ),
              ),
              items: _tmpItems,
              onChanged: widget.enabled ? widget.onChanged : null,
              isExpanded: true,
              // validator: (widget.validators != null)
              //     ? (value) => validate(
              //           value ?? '',
              //           field: widget.label,
              //           validators: widget.validators!,
              //         )
              //     : null,
              style: UtolTextStyles.small,
              decoration: InputDecoration(
                filled: widget.filled,
                fillColor: (widget.filled)
                    ? widget.fillColor ?? colors.lightGrey
                    : null,
                hintText:
                    !widget.enableLabel ? 'Select ${widget.label ?? ''}' : null,
                hintStyle: UtolTextStyles.small,
                labelText: widget.enableLabel ? widget.label ?? '' : null,
                labelStyle: UtolTextStyles.small,
                errorText: widget.errorText,
                errorStyle: UtolTextStyles.small,
                floatingLabelBehavior: widget.enableFloatingLabel
                    ? FloatingLabelBehavior.auto
                    : FloatingLabelBehavior.never,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:
                        widget.textfieldEnabledBorderColor ?? colors.lightGrey,
                  ),
                  borderRadius: widget.textfieldBorderRadius,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: widget.textfieldBorderColor ?? colors.secondary,
                  ),
                  borderRadius: widget.textfieldBorderRadius,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:
                        widget.textfieldFocusedBorderColor ?? colors.secondary,
                  ),
                  borderRadius: widget.textfieldBorderRadius,
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:
                        widget.textfieldDisabledBorderColor ?? colors.secondary,
                  ),
                  borderRadius: widget.textfieldBorderRadius,
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: widget.textfieldErrorBorderColor ?? colors.secondary,
                  ),
                  borderRadius: widget.textfieldBorderRadius,
                ),
                suffixIcon: widget.tip != null
                    ? Tooltip(
                        message: widget.tip ?? '',
                        child: const Icon(
                          Icons.info,
                          color: colors.secondary,
                        ),
                      )
                    : widget.suffixIcon,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
