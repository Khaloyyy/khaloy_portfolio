import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../config/themes.dart';
import '../../constants/utol_colors.dart' as colors;
import '../styles/utol_text_styles.dart';
import 'utol_ddl.dart';

class UtolTextField extends StatefulWidget {
  const UtolTextField(
    this.controller, {
    super.key,
    this.formInsetPadding,
    this.label,
    this.obscureText = false,
    this.suffixIcon,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.filled = false,
    this.prefix,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    this.enableLabel = true,
    this.textfieldBorderRadius = const BorderRadius.all(Radius.circular(4)),
    this.textfieldBorderColor,
    this.textfieldFocusedBorderColor,
    this.textfieldEnabledBorderColor,
    this.textfieldErrorBorderColor,
    this.textfieldDisabledBorderColor,
    this.prefixWidget,
    this.disable = false,
    this.enabled = true,
    this.fillColor,
    this.prefixIcon,
    this.errorMaxLines = 3,
    this.readOnly = false,
    this.valueAccessor,
    this.subtleText,
    this.cursorColor,
    this.enableFloatingLabel = false,
    this.errorText,
    this.onChanged,
    this.onEditingComplete,
    this.onTapOutside,
    this.validator,
    this.onTap,
    this.decoration,
    this.width,
    this.topLabel,
    // this.validators,
    this.matchingController,
    this.style,
    this.suffixWidget,
    this.tip,
    this.textAlign,
    this.isDropdown = false,
    this.selectedDropdownValue,
    this.dropdownItems,
    this.dropdownInitialValue,
    this.onDropdownChanged,
    this.mustNotExceedBaseValue,
    this.initialVal,
  });

  const UtolTextField.dropdown(
    this.controller, {
    super.key,
    this.formInsetPadding,
    this.label,
    this.obscureText = false,
    this.suffixIcon,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.filled = false,
    this.prefix,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    this.enableLabel = true,
    this.textfieldBorderRadius = const BorderRadius.all(Radius.circular(4)),
    this.textfieldBorderColor,
    this.textfieldFocusedBorderColor,
    this.textfieldEnabledBorderColor,
    this.textfieldErrorBorderColor,
    this.textfieldDisabledBorderColor,
    this.prefixWidget,
    this.disable = false,
    this.enabled = true,
    this.fillColor,
    this.prefixIcon,
    this.errorMaxLines = 3,
    this.readOnly = false,
    this.valueAccessor,
    this.subtleText,
    this.cursorColor,
    this.enableFloatingLabel = false,
    this.errorText,
    this.onChanged,
    this.onEditingComplete,
    this.onTapOutside,
    this.validator,
    this.onTap,
    this.decoration,
    this.width,
    this.topLabel,
    // this.validators,
    this.matchingController,
    this.style,
    this.suffixWidget,
    this.tip,
    this.textAlign,
    this.isDropdown = true,
    this.selectedDropdownValue,
    this.dropdownItems,
    this.dropdownInitialValue,
    this.onDropdownChanged,
    this.mustNotExceedBaseValue,
    this.initialVal,
  });

  final TextEditingController? controller;
  final TextEditingController? matchingController;
  final EdgeInsets? formInsetPadding;
  final String? label;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final bool filled;
  final Widget? prefix;
  final int maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool enableLabel;
  final BorderRadius textfieldBorderRadius;
  final Color? textfieldBorderColor;
  final Color? textfieldFocusedBorderColor;
  final Color? textfieldEnabledBorderColor;
  final Color? textfieldErrorBorderColor;
  final Color? textfieldDisabledBorderColor;
  final Widget? prefixWidget;
  final bool disable;
  final bool enabled;
  final Color? fillColor;
  final Widget? prefixIcon;
  final int errorMaxLines;
  final bool readOnly;
  final dynamic valueAccessor;
  final String? subtleText;
  final Color? cursorColor;
  final bool enableFloatingLabel;
  final String? errorText;
  final void Function(String?)? onChanged;
  final void Function(String?)? onDropdownChanged;
  final VoidCallback? onEditingComplete;
  final TapRegionCallback? onTapOutside;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final InputDecoration? decoration;
  final double? width;
  final String? topLabel;
  // final List<ValidationType>? validators;
  final TextStyle? style;
  final Widget? suffixWidget;
  final String? tip;
  final TextAlign? textAlign;
  final bool isDropdown;
  final String? selectedDropdownValue;
  final List<String>? dropdownItems;
  final String? dropdownInitialValue;
  final double? mustNotExceedBaseValue;
  final String? initialVal;

  @override
  State<UtolTextField> createState() => _UtolTextFieldState();
}

class _UtolTextFieldState extends State<UtolTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (widget.topLabel != null)
          Text(widget.topLabel!, style: UtolTextStyles.extraSmallMedium),
        if (widget.topLabel != null) const SizedBox(height: 10),
        Theme(
          data: AppTheme(context: context).themeData,
          child: Container(
            width: widget.width,
            padding: widget.formInsetPadding ?? EdgeInsets.zero,
            child: widget.isDropdown
                ? UtolDropDown(
                    value: widget.selectedDropdownValue,
                    dropdownInitialText: widget.dropdownInitialValue,
                    items: widget.dropdownItems!,
                    label: widget.label,
                    filled: widget.filled,
                    // validators:
                    //     (widget.validators != null) ? widget.validators : null,
                    onChanged:
                        (!widget.disable) ? widget.onDropdownChanged : null,
                  )
                : TextFormField(
                    initialValue: widget.initialVal,
                    controller: widget.controller,
                    textInputAction: widget.textInputAction,
                    keyboardType: widget.keyboardType,
                    style: widget.style ?? UtolTextStyles.extraSmall,
                    maxLines: widget.maxLines,
                    maxLength: widget.maxLength,
                    readOnly: widget.readOnly,
                    enabled: widget.enableLabel,
                    cursorColor: widget.cursorColor,
                    textAlign: widget.textAlign ?? TextAlign.start,
                    decoration: widget.decoration ??
                        InputDecoration(
                          filled: widget.filled,
                          fillColor: (widget.filled)
                              ? widget.fillColor ?? colors.lightGrey
                              : null,
                          hintText:
                              !widget.enableLabel ? widget.label ?? '' : null,
                          hintStyle: UtolTextStyles.extraSmall,
                          labelText:
                              widget.enableLabel ? widget.label ?? '' : null,
                          labelStyle: UtolTextStyles.extraSmall,
                          errorText: widget.errorText,
                          errorStyle: UtolTextStyles.extraSmall,
                          floatingLabelStyle: UtolTextStyles.title6,
                          floatingLabelBehavior: widget.enableFloatingLabel
                              ? FloatingLabelBehavior.auto
                              : FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: widget.textfieldEnabledBorderColor ??
                                  colors.lightMainText,
                            ),
                            borderRadius: widget.textfieldBorderRadius,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: widget.textfieldBorderColor ??
                                  colors.secondary,
                            ),
                            borderRadius: widget.textfieldBorderRadius,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: widget.textfieldFocusedBorderColor ??
                                  colors.secondary,
                            ),
                            borderRadius: widget.textfieldBorderRadius,
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: widget.textfieldDisabledBorderColor ??
                                  colors.lightGrey,
                            ),
                            borderRadius: widget.textfieldBorderRadius,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: widget.textfieldErrorBorderColor ??
                                  colors.tertiary,
                            ),
                            borderRadius: widget.textfieldBorderRadius,
                          ),
                          prefixIcon: widget.prefixIcon,
                          suffixIcon: widget.tip != null
                              ? Tooltip(
                                  message: widget.tip ?? '',
                                  child: const Icon(
                                    Icons.info,
                                    color: colors.secondary,
                                  ),
                                )
                              : widget.suffixIcon,
                          prefix: widget.prefixWidget,
                          suffix: widget.suffixWidget,
                          errorMaxLines: widget.errorMaxLines,
                          counterText: (widget.maxLength != null)
                              ? ''
                              : widget.subtleText,
                          counterStyle: UtolTextStyles.extraSmall,
                        ),
                    inputFormatters: widget.inputFormatters,
                    // It creates a cursor selection issue, we can use a listener instead.
                    // onChanged: widget.onChanged,
                    onEditingComplete: widget.onEditingComplete,
                    onTapOutside: widget.onTapOutside,
                    validator: widget.validator,
                    onTap: widget.onTap,
                  ),
          ),
        ),
      ],
    );
  }
}
