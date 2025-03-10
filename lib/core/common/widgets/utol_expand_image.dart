import 'dart:io';
import 'package:flutter/material.dart';
import '../../../../../core/constants/utol_colors.dart' as colors;
import 'buttons/utol_button.dart';

class ExpandImageDialog extends StatelessWidget {
  const ExpandImageDialog({
    super.key,
    required this.screenSize,
    required this.fileName,
    required this.filePath,
    this.file,
    required this.isNetwork,
  });
  final Size screenSize;
  final String fileName;
  final String filePath;
  final File? file;
  final bool isNetwork;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: colors.background,
      contentPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      content: SizedBox(
        width: screenSize.width * .40,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // =================== Close Icon =================== //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      fileName,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colors.mainText,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.close,
                      color: Color(0xFF363636),
                      size: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              // ================= Image ================= //
              Center(
                child: SizedBox(
                  width: screenSize.width * .40,
                  height: screenSize.height * .50,
                  child: ClipRRect(
                    child:
                        isNetwork ? Image.network(filePath) : Image.file(file!),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              // =================== Buttons =================== //
              SizedBox(
                width: double.infinity,
                height: 44,
                child: UtolButton(
                  title: 'Okay',
                  backgroundColor: colors.secondary,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to show the dialog
  static Future<void> show(
    BuildContext context, {
    required Size screenSize,
    required String fileName,
    required String filePath,
    File? file,
    required bool isNetwork,
  }) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return ExpandImageDialog(
          screenSize: screenSize,
          fileName: fileName,
          filePath: filePath,
          file: file,
          isNetwork: isNetwork,
        );
      },
    );
  }
}
