import 'package:flutter/material.dart';

import '../styles/utol_text_styles.dart';
import 'utol_text_field.dart';

class UtolRemarksField extends StatelessWidget {
  const UtolRemarksField({
    required this.controller,
    super.key,
    this.topLabel,
    this.hint,
    this.initialValue,
    this.maxLines = 5, // Large text area
    this.keyboardType = TextInputType.multiline,
    this.readOnly = false,
    this.enabled = true,
    this.onChanged,
    this.onTap,
  });

  final TextEditingController controller;
  final String? topLabel;
  final String? hint;
  final String? initialValue;
  final int maxLines;
  final TextInputType keyboardType;
  final bool readOnly;
  final bool enabled;
  final void Function(String)? onChanged;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (topLabel != null)
          Text(topLabel!, style: UtolTextStyles.extraSmallMedium),
        if (topLabel != null) const SizedBox(height: 10),
        UtolTextField(
          controller,
          label: topLabel,
          maxLines: maxLines,
          keyboardType: keyboardType,
          readOnly: readOnly,
          enabled: enabled,
          //onChanged: ,
          onTap: onTap,
          fillColor: Colors.grey[200], // Background color for a text area style
          filled: true,
          textfieldBorderRadius: BorderRadius.circular(8),
          textfieldBorderColor: Colors.grey[400],
          textfieldFocusedBorderColor: Colors.blue,
          decoration: InputDecoration(
            hintText: hint ?? 'Enter your remarks here...',
            alignLabelWithHint: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          ),
        ),
      ],
    );
  }
}
