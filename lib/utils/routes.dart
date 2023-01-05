
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

newpage(Widget pagename, BuildContext context) {
  Navigator.pushReplacement(context, CupertinoPageRoute(builder: ((context) => pagename)));
}

newnextpage(Widget pagename, BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder:  ((context) =>  pagename))
  );

}

