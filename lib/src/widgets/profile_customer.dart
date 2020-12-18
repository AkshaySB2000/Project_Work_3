import 'dart:io';

import 'package:farmers_market/src/blocs/auth_bloc.dart';
import 'package:farmers_market/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileCustomer extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
     var authBloc = Provider.of<AuthBloc>(context);
    return Container(
      height: 50.0,
            child: (Platform.isIOS)?
          CupertinoButton(
            child: Text('Click here to Logout', style: TextStyle(color: AppColors.straw, fontSize: 22.0, fontWeight: FontWeight.bold)), 
            onPressed: () => authBloc.logout(),
          ):
          FlatButton(
            child: Text('Click here to Logout', style: TextStyle(color: AppColors.straw, fontSize: 22.0, fontWeight: FontWeight.bold)),
            onPressed: () => authBloc.logout(),
          )
    );
  }
}