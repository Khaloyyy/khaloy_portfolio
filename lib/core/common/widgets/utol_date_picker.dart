import 'package:flutter/material.dart';
import '../../constants/utol_colors.dart' as colors;
import '../styles/utol_text_styles.dart';
import 'utol_text_field.dart';

typedef DatePickerCallBack = void Function(
  DateTime? dt,
  String startDateStr,
);

class UtolDatePicker extends StatefulWidget {
  const UtolDatePicker(
    this.controller, {
    required this.editable,
    super.key,
    this.label,
    required this.onChanged,
    this.formInsetPadding,
    this.onClear,
    this.width,
    this.dateFormat = 'yyyy-MM-dd',
    this.disableClear = false,
    this.enableFloatingLabel = false,
  });
  final bool editable;
  final TextEditingController controller;
  final String? label;
  final DatePickerCallBack onChanged;
  final VoidCallback? onClear;
  final EdgeInsets? formInsetPadding;
  final double? width;
  final String dateFormat;
  final bool disableClear;
  final bool enableFloatingLabel;

  @override
  State<UtolDatePicker> createState() => _UtolDatePickerState();
}

class _UtolDatePickerState extends State<UtolDatePicker> {
  DateTime? _recentlyPickedDates;

  DateTime _thisDateRange() {
    return DateTime.now();
  }

  Future<void> _showPicker() async {
    final DateTime firstDate = DateTime(DateTime.now().year - 70);
    final DateTime lastDate = DateTime(DateTime.now().year + 5);

    final DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: firstDate,
      lastDate: lastDate,
      initialDate: _recentlyPickedDates ?? _thisDateRange(),
      initialEntryMode: DatePickerEntryMode.input,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(useMaterial3: false).copyWith(
            colorScheme: const ColorScheme.dark(
              primary: colors.secondary,
              surface: colors.secondary,
              onSurface: colors.mainText,
            ),
            cardColor: colors.secondary,
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 450,
              maxHeight: 500,
            ),
            child: child,
          ),
        );
      },
    );

    if (pickedDate != null) {
      _recentlyPickedDates = pickedDate;
      updateDateRangeText();
    }
  }

  Future<void> _handleTap() async {
    await _showPicker();

    final String sD =
        _recentlyPickedDates != null ? _recentlyPickedDates.toString() : '';

    widget.onChanged(_recentlyPickedDates, sD);
  }

  void updateDateRangeText() {
    final String sD =
        _recentlyPickedDates != null ? _recentlyPickedDates.toString() : '';

    widget.controller.text = sD;
  }

  @override
  Widget build(BuildContext context) {
    return UtolTextField(
      decoration: InputDecoration(
        label: Text(
          widget.label.toString(),
        ),
        labelStyle: UtolTextStyles.extraSmall,
      ),
      widget.controller,
      width: widget.width,
      readOnly: true,
      enableFloatingLabel: widget.enableFloatingLabel,
      formInsetPadding: widget.formInsetPadding,
      prefixIcon: const Icon(
        Icons.calendar_month,
        color: colors.secondary,
      ),
      onTap: widget.editable ? _handleTap : null,
      textfieldBorderColor: colors.secondary,
      textfieldEnabledBorderColor: colors.lightGrey,
      suffixIcon: widget.disableClear
          ? null
          : IconButton(
              color: colors.mainText,
              icon: const Icon(Icons.clear),
              onPressed: () {
                widget.controller.clear();
                _recentlyPickedDates = null;

                widget.onClear?.call();
              },
            ),
    );
  }
}
