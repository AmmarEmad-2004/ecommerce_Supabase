import 'package:ecommerce_app/modules/home/presentation/widgets/custom_user_comment.dart';
import 'package:flutter/material.dart';

class UsersCommentsList extends StatelessWidget {
  const UsersCommentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CustomUserComment();
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: 5,
    );
  }
}