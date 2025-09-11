import 'package:ecommerce_app/core/helpers/spaces.dart';
import 'package:ecommerce_app/core/widgets/custom_elevated_button.dart';
import 'package:ecommerce_app/modules/profile/presentation/widgets/custom_edit_name_feild.dart';
import 'package:flutter/material.dart';

void showEditProfileDialog(BuildContext context, String currentName) {
  // final nameController = TextEditingController(text: currentName);

  showDialog(
    context: context,
    builder:
        (_) => StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              content: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 20,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Edit Name', style: TextStyle(fontSize: 18)),

                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(Icons.close, size: 20),
                        ),
                      ],
                    ),
                    CustomEditNameField(hint: 'Ammar Emad'),
                    verticalSpace(25),

                    CustomElevatedButton(
                      borderRadius: BorderRadius.circular(10),
                      onPressed: () {
                        Navigator.pop(context);
                      },

                      data: 'Edit',
                    ),
                  ],
                ),
              ),
            );
          },
        ),
  );
}
