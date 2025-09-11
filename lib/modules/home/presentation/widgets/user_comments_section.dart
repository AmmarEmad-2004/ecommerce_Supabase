import 'package:ecommerce_app/core/helpers/spaces.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:ecommerce_app/modules/home/presentation/widgets/users_comments_list.dart';
import 'package:flutter/material.dart';

class UserCommentsSection extends StatelessWidget {
  const UserCommentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormFeild(
          hint: 'Type your Feedback',

          suffixIcon: Icon(Icons.send),
        ),
        verticalSpace(8),
        Text('Comments', style: TextStyle(fontSize: 24)),
        UsersCommentsList(),
      ],
    );
  }
}