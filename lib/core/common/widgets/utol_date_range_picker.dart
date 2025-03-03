import 'package:flutter/material.dart';
import '../../constants/utol_colors.dart' as colors;
import '../utils/string_utils.dart';
import 'utol_text_field.dart';

typedef DateRangePickerCallBack = void Function(
  DateTimeRange? dt,
  String startDateStr,
  String endDateStr,
);

class UtolDateRangePicker extends StatefulWidget {
  const UtolDateRangePicker(
    this.controller, {
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

  final TextEditingController controller;

  final String? label;

  final DateRangePickerCallBack onChanged;

  final VoidCallback? onClear;

  final EdgeInsets? formInsetPadding;

  final double? width;

  final String dateFormat;

  final bool disableClear;

  final bool enableFloatingLabel;

  @override
  State<UtolDateRangePicker> createState() => _UtolDateRangePickerState();
}

class _UtolDateRangePickerState extends State<UtolDateRangePicker> {
  DateTimeRange? _recentlyPickedDates;

  DateTimeRange _thisDateRange() {
    return DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(
        Duration(
          days: DateTime.daysPerWeek - DateTime.now().weekday,
        ),
      ),
    );
  }

  Future<void> _showPicker() async {
    final DateTimeRange? recent = _recentlyPickedDates;

    final DateTime firstDate = DateTime(DateTime.now().year - 5);
    final DateTime lastDate = DateTime(DateTime.now().year + 5);

    _recentlyPickedDates = await showDateRangePicker(
      context: context,
      firstDate: firstDate,
      lastDate: lastDate,
      initialDateRange: recent ?? _thisDateRange(),
      initialEntryMode: DatePickerEntryMode.input,
      builder: (BuildContext context, Widget? child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: ThemeData(useMaterial3: false).copyWith(
                colorScheme: const ColorScheme.dark(
                  primary: colors.secondary,
                  surface: colors.secondary,
                ),
              ),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 450,
                  maxHeight: 500,
                ),
                child: child,
              ),
            ),
          ],
        );
      },
    );

    _recentlyPickedDates ??= recent;

    updateDateRangeText();
  }

  Future<void> _handleTap() async {
    await _showPicker();

    final String sD = _recentlyPickedDates != null
        ? StringUtils.getFormattedDate(
            _recentlyPickedDates!.start,
            dateFormat: widget.dateFormat,
          )
        : '';

    final String eD = _recentlyPickedDates != null
        ? StringUtils.getFormattedDate(
            _recentlyPickedDates!.end,
            dateFormat: widget.dateFormat,
          )
        : '';

    widget.onChanged(_recentlyPickedDates, sD, eD);
  }

  void updateDateRangeText() {
    DateTime? startDate;
    DateTime? endDate;

    if (_recentlyPickedDates != null) {
      startDate = _recentlyPickedDates!.start;
      endDate = _recentlyPickedDates!.end;
    }

    final String sD = StringUtils.getFormattedDate(
      startDate,
      dateFormat: widget.dateFormat,
    );

    final String eD = StringUtils.getFormattedDate(
      endDate,
      dateFormat: widget.dateFormat,
    );

    widget.controller.text = '$sD - $eD';
  }

  @override
  Widget build(BuildContext context) {
    return UtolTextField(
      widget.controller,
      width: widget.width,
      readOnly: true,
      enableFloatingLabel: widget.enableFloatingLabel,
      formInsetPadding: widget.formInsetPadding,
      prefixIcon: const Icon(
        Icons.calendar_month,
        color: colors.secondary,
      ),
      onTap: _handleTap,
      label: widget.label,
      textfieldBorderColor: colors.secondary,
      textfieldEnabledBorderColor: colors.lightGrey,
      suffixIcon: widget.disableClear
          ? null
          : IconButton(
              color: colors.mainText,
              icon: const Icon(Icons.clear),
              onPressed: () {
                widget.controller.clear();

                if (widget.onClear != null) {
                  widget.onClear?.call();
                }
              },
            ),
    );
  }
}
