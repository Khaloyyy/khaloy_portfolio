import 'package:flutter/material.dart';
import '../../../constants/utol_colors.dart' as colors;

class EmptyTableWidget extends StatelessWidget {
  const EmptyTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: screenSize.height * .35,
            width: screenSize.width * .35,
            child: Image.asset(
              'assets/images/empty_images/empty_placeholder.png',
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Woopsies!',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: colors.mainText,
                  fontSize: 24,
                ),
          ),
          Text(
            'Walang laman table natin tol!',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: colors.lightMainText,
                ),
          ),
        ],
      ),
    );
  }
}
