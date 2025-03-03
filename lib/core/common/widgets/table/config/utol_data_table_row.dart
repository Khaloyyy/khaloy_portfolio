import 'package:flutter/material.dart';

import '../../../../constants/utol_colors.dart' as colors;
import '../../../styles/utol_text_styles.dart';
import '../../buttons/utol_button.dart';

Widget buildUtolTableRowText(String text) {
  return SizedBox(
    width: double.infinity,
    child: Text(
      text,
      style: UtolTextStyles.extraSmall.copyWith(color: colors.mainText),
      maxLines: 1,
    ),
  );
}

Widget buildUtolTableRowViewAction(
  VoidCallback onTap,
) {
  return InkWell(
    onTap: onTap,
    child: const Icon(
      Icons.remove_red_eye,
      color: colors.secondary,
      size: 18,
    ),
  );
}

Widget buildUtolTableRowDeactivationAction(
  VoidCallback onTap,
) {
  return InkWell(
    child: UtolButton(
      title: 'Deactivate',
      backgroundColor: colors.tertiary,
      textStyle: UtolTextStyles.smallBoldSp.copyWith(
        color: colors.whiteText,
      ),
      onPressed: onTap,
    ),
  );
}

Widget buildUtolTableRowActivationAction(
  VoidCallback onTap,
) {
  return InkWell(
    child: UtolButton(
      title: 'Activate',
      backgroundColor: colors.statGreen,
      textStyle: UtolTextStyles.smallBoldSp.copyWith(
        color: colors.whiteText,
      ),
      onPressed: onTap,
    ),
  );
}

//Reusable Action Delete and Update in row

Widget buildUtolTableRowActions(VoidCallback onDelete, VoidCallback onEdit) {
  return Row(
    children: <Widget>[
      InkWell(
        onTap: onEdit,
        child: const Icon(
          Icons.edit,
          color: colors.secondary,
          size: 18,
        ),
      ),
      const SizedBox(width: 8), // Add spacing between icons
      InkWell(
        onTap: onDelete,
        child: const Icon(
          Icons.delete,
          color: colors.tertiary,
          size: 18,
        ),
      ),
    ],
  );
}

//Reusable Action View and Update in row

Widget buildUtolTableActions(VoidCallback onView, VoidCallback onEdit) {
  return Row(
    children: <Widget>[
      InkWell(
        onTap: onEdit,
        child: const Icon(
          Icons.edit,
          color: colors.secondary,
          size: 18,
        ),
      ),
      const SizedBox(width: 8), // Add spacing between icons
      InkWell(
        onTap: onView,
        child: const Icon(
          Icons.remove_red_eye,
          color: colors.secondary,
          size: 18,
        ),
      ),
    ],
  );
}

Widget buildUtolTableRowUpdateAction(
  VoidCallback onTap,
) {
  return InkWell(
    child: UtolButton(
      title: 'Update',
      backgroundColor: colors.statGreen,
      textStyle: UtolTextStyles.smallBoldSp.copyWith(
        color: colors.whiteText,
      ),
      onPressed: onTap,
    ),
  );
}
