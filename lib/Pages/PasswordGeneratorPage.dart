import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:password_cloud/Widgets/Background.dart';
import 'dart:math';

class PasswordGeneratorPage extends StatefulWidget {

  @override
  _PasswordGeneratorPage createState() => new _PasswordGeneratorPage();
}

class _PasswordGeneratorPage extends State<PasswordGeneratorPage> {
  String generatedPassword = "";
  BuildContext _scaffoldContext;

  final String LOWER = "abcdefghijklmnopqrstuvwxyz";
  final String UPPER = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  final String DIGITS = "0123456789";
  final String PUNCTUATION = "!@#\$%&*()_+-=[]|,./?><";

  var sliderValue = 8.0;

  Map<String, bool> values = {
    'Use Lower Case Letters': true,
    'Use Upper Case Letters': false,
    'Use Digits': false,
    'Use Punctuation': false,
  };

  Widget horizontalLine() =>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(120),
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()
      ..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1600, allowFontScaling: true);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Generating Password'),
              backgroundColor: Color(0xFFFD7267),
            ),
            body: Builder(
                builder: (BuildContext context) {
                  _scaffoldContext = context;
                  return Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Background(),
                      Column(
                          children: <Widget>[

                            Container(
                              child: new ListView(
                                  shrinkWrap: true,
                                  children: values.keys.map((String key) {
                                    return new CheckboxListTile(
                                      title: new Text(key),
                                      value: values[key],
                                      onChanged: (bool value) {
                                        setState(() {
                                          values[key] = value;
                                        });
                                      },
                                    );
                                  }).toList()),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(child: Slider(
                                min: 8.0,
                                max: 20.0,
                                divisions: 12,
                                value: sliderValue,
                                activeColor: Color(0xffe05f2c),
                                inactiveColor: Colors.deepOrange,
                                onChanged: (newValue) {
                                  setState(() {
                                    sliderValue = newValue;
                                  });
                                },
                              ),),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                  child: Text("Password Length : $sliderValue",
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),)),
                            ),

                            InkWell(
                              child: Container(
                                width: ScreenUtil.getInstance().setWidth(600),
                                height: ScreenUtil.getInstance().setHeight(
                                    200),
                                decoration: BoxDecoration(
                                    gradient: RadialGradient(colors: [
                                      Color(0xFF17ead9),
                                      Color(0xFF6078ea)
                                    ]),
                                    borderRadius: BorderRadius.circular(6.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xFF6078ea)
                                              .withOpacity(
                                              .3),
                                          offset: Offset(0.0, 8.0),
                                          blurRadius: 8.0)
                                    ]),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    child: Center(
                                      child: Text(generatedPassword,
                                        style: TextStyle(
                                          fontSize: 25,
                                          color: Color(0xFF000000),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                height: ScreenUtil.getInstance().setHeight(50)),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                InkWell(
                                  child: Container(
                                    width: ScreenUtil.getInstance().setWidth(
                                        600),
                                    height: ScreenUtil.getInstance().setHeight(
                                        100),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color(0xFF17ead9),
                                          Color(0xFF6078ea)
                                        ]),
                                        borderRadius: BorderRadius.circular(
                                            6.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0xFF6078ea)
                                                  .withOpacity(.3),
                                              offset: Offset(0.0, 8.0),
                                              blurRadius: 8.0)
                                        ]),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {
                                          setState(() => generatedPassword =
                                              generate(sliderValue.round(),
                                                  values['Use Lower Case Letters'],
                                                  values['Use Upper Case Letters'],
                                                  values['Use Digits'],
                                                  values['Use Punctuation']));
                                        },
                                        child: Center(
                                          child: Text("GENERATE A PASSWORD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Poppins-Bold",
                                                  fontSize: 18,
                                                  letterSpacing: 1.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                                height: ScreenUtil.getInstance().setHeight(50)),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                InkWell(
                                  child: Container(
                                    width: ScreenUtil.getInstance().setWidth(
                                        600),
                                    height: ScreenUtil.getInstance().setHeight(
                                        100),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color(0xFF17ead9),
                                          Color(0xFF6078ea)
                                        ]),
                                        borderRadius: BorderRadius.circular(
                                            6.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0xFF6078ea)
                                                  .withOpacity(.3),
                                              offset: Offset(0.0, 8.0),
                                              blurRadius: 8.0)
                                        ]),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {
                                          if (generatedPassword.isNotEmpty)
                                            Navigator.pop(
                                                this.context, generatedPassword);
                                          else {
                                            final snackBar = SnackBar(
                                              content: Text(
                                                  'You need to generate a password'),
                                              action: SnackBarAction(
                                                label: 'Hide',
                                                onPressed: () {},
                                              ),
                                            );
                                            Scaffold.of(_scaffoldContext)
                                                .showSnackBar(snackBar);
                                          }
                                        },
                                        child: Center(
                                          child: Text("USE THIS PASSWORD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Poppins-Bold",
                                                  fontSize: 18,
                                                  letterSpacing: 1.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                                height: ScreenUtil.getInstance().setHeight(50)),
                          ]
                      ),
                    ],
                  );
                },
            ),
        ),
    );
  }

  String generate(int length, bool isLower, bool isUpper, bool isDigits, bool isPunctuation) {
    // Argument Validation.
    if (length <= 0) {
      return "";
    }

    if (!isLower && !isUpper && !isDigits && !isPunctuation) {
      final snackBar = SnackBar(
        content: Text('You need to Select at least one'),
        action: SnackBarAction(
          label: 'Hide',
          onPressed: () {},
        ),
      );
      Scaffold.of(_scaffoldContext).showSnackBar(snackBar);
      return "";
    }

    // Variables.
    StringBuffer password = new StringBuffer();
    Random random = new Random();

    // Collect the categories to use.
    List<String> charCategories = new List();
    if (isLower) {
      charCategories.add(LOWER);
    }
    if (isUpper) {
      charCategories.add(UPPER);
    }
    if (isDigits) {
      charCategories.add(DIGITS);
    }
    if (isPunctuation) {
      charCategories.add(PUNCTUATION);
    }

    // Build the password.
    for (int i = 0; i < length; i++) {
      String charCategory = charCategories.elementAt(
          random.nextInt(charCategories.length));
      int position = random.nextInt(charCategory.length);
      password.write(charCategory[position]);
    }
    return password.toString();
  }
}
