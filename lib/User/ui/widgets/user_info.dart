import 'package:day30/User/model/user.dart';
import 'package:flutter/material.dart';
class UserInf extends StatelessWidget {

  User user;
  UserInf(@required this.user);

  @override
  Widget build(BuildContext context) {

    final userPhoto = Container(
      width: 100.0,
      height: 100.0,
      // margin: EdgeInsets.only(
      //     right: 20.0
      // ),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white,
              width: 2.0,
              style: BorderStyle.solid
          ),
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              // image: AssetImage(user.photoURL)
              image: NetworkImage(user.photoURL)
          )
      ),
    );

    final userInfo = Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(
                // bottom: 5.0
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
                // fontFamily: 'Lato'
            )
        ),
      ],
    );

    return Container(
      // color: Colors.red,
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