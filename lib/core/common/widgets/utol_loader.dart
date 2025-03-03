import 'package:flutter/material.dart';

import 'utol_circular_progress.dart';

// ==================== Utol Loader =================== //

class UtolLoader {
  // Factory method to create an instance of the UtolLoader
  factory UtolLoader.of(BuildContext context) => UtolLoader._create(context);
  UtolLoader._create(this._context);

  BuildContext _context;
  bool shouldPop = false;
  bool _isVisible = false;

  // Hides the loader and optionally pops the previous route if `shouldPop` is true
  void hide() {
    shouldPop = true;
    _isVisible = false;
    Navigator.of(_context, rootNavigator: true).pop();
  }

  // Shows the loader as a dialog
  Future<void> show() async {
    _isVisible = true;

    await showDialog<void>(
      context: _context,
      barrierDismissible: false,
      builder: (BuildContext context) => const LoaderWidget(),
    );

    // Return a Future that completes immediately after showing the dialog
    return Future<void>.value();
  }

  // Executes a future function with the loader visible, then hides the loader
  Future<T> during<T>(Future<T> future) async {
    await show();

    // ignore: unnecessary_lambdas
    return future.whenComplete(() => hide());
  }

  // Getter for the visibility state of the loader
  bool get isVisible => _isVisible;
}

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      // Allows popping the previous route if `shouldPop` is true
      canPop: UtolLoader.of(context).shouldPop,
      child: const DecoratedBox(
        decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5)),
        child: Center(
          child: UtolCircularProgess(),
        ),
      ),
    );
  }
}
