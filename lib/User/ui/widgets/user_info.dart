import 'package:cached_network_image/cached_network_image.dart';
import 'package:day30/User/model/user.dart';
import 'package:flutter/material.dart';
class UserInf extends StatelessWidget {

  final User user;
  UserInf(this.user);

  @override
  Widget build(BuildContext context) {

    final userPhoto = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 10.0)
          ],
          border: Border.all(
              color: Colors.white,
              width: 2.0,
              style: BorderStyle.solid
          ),
          shape: BoxShape.circle,
          image: DecorationImage(
              image: CachedNetworkImageProvider(user.photoURL)
              // image: NetworkImage(user.photoURL)
          )
      ),
    );

    final userInfo = Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(
                bottom: 5.0,
                top: 5.0
            ),
            child: Text(
                user.name,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  // fontFamily: 'Lato',
                )
            )
        ),
        Text(
            user.email,
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.white30,
            )
        ),
      ],
    );

    return Container(
      height: 150,
      child: Column(
        children: <Widget>[
          userPhoto,
          userInfo
        ],
      ),
    );
  }

}