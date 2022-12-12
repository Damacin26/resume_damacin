import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/services.dart';
import 'assets/apple.dart';

// function to trigger build when the app is run
void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {

      '/login': (context) => const LogInRoute(),

      '/forgot_password': (context) => const ForgotPasswordRoute(),

      '/sign-up': (context) => const SignUpRoute(),
      '/sign-up2': (context) => const SignUp2Route(),
      '/last': (context) => const SignUp3Route(),

      '/': (context) => const HomeRoute(),
      '/education': (context) => const EducationRoute(),
      '/professional': (context) => const ProfessionalRoute(),

      '/first': (context) => const Home2Route(),
      '/education_two': (context) => const Education2Route(),
      '/professional_two': (context) => const Professional2Route()
    },
  )); //MaterialApp
}

class LogInRoute extends StatelessWidget {
  const LogInRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          automaticallyImplyLeading: false,
        ),
        body: const MyCustomForm()
    );

  }
}

class SignUpRoute extends StatelessWidget {
  const SignUpRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign-Up Part 1 out of 3'),
          backgroundColor: Colors.lightBlue,
        ),
        body: const SignUpForm()
    );

  }
}

class SignUp2Route extends StatelessWidget {
  const SignUp2Route({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign-Up Part 2 out of 3'),
          backgroundColor: Colors.lightBlue,
        ),
        body: const SignUp2Form()
    );

  }
}

class SignUp3Route extends StatelessWidget {
  const SignUp3Route({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign-Up Part 3 out of 3'),
          backgroundColor: Colors.lightBlue,
        ),
        body: const SignUp3Form()
    );

  }
}

class ForgotPasswordRoute extends StatelessWidget {
  const ForgotPasswordRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Forgot Password'),
          backgroundColor: Colors.blueAccent,
        ),
        body: const ForgotPasswordForm()
    );

  }
}


class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  SignUpFormState createState() {
    return SignUpFormState();
  }
}

class SignUp2Form extends StatefulWidget {
  const SignUp2Form({super.key});

  @override
  SignUp2FormState createState() {
    return SignUp2FormState();
  }
}

class SignUp3Form extends StatefulWidget {
  const SignUp3Form({super.key});

  @override
  SignUp3FormState createState() {
    return SignUp3FormState();
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm ({super.key});

  @override
  ForgotPasswordFormState createState() {
    return ForgotPasswordFormState();
  }
}

TextEditingController emailEditingController = TextEditingController();
TextEditingController passwordEditingController = TextEditingController();

TextEditingController gmailEditingController = TextEditingController();
TextEditingController nameEditingController = TextEditingController();
TextEditingController phoneEditingController = TextEditingController();
TextEditingController addressEditingController = TextEditingController();

TextEditingController tertiaryEditingController = TextEditingController();
TextEditingController tertiary_startEditingController = TextEditingController();
TextEditingController tertiary_endEditingController = TextEditingController();

TextEditingController secondaryEditingController = TextEditingController();
TextEditingController secondary_startEditingController = TextEditingController();
TextEditingController secondary_endEditingController = TextEditingController();

TextEditingController primaryEditingController = TextEditingController();
TextEditingController primary_startEditingController = TextEditingController();
TextEditingController primary_endEditingController = TextEditingController();

TextEditingController certificatesEditingController = TextEditingController();
TextEditingController certificates_startEditingController = TextEditingController();
TextEditingController certificates_endEditingController = TextEditingController();

TextEditingController professional_summaryEditingController = TextEditingController();

TextEditingController skills1_EditingController = TextEditingController();
TextEditingController skills1_description_EditingController = TextEditingController();

TextEditingController skills2_EditingController = TextEditingController();
TextEditingController skills2_descriptionEditingController = TextEditingController();

TextEditingController password2_EditingController = TextEditingController();
TextEditingController password2confirm_EditingController = TextEditingController();

TextEditingController forgot_email_EditingController = TextEditingController();
TextEditingController forgot_password_EditingController = TextEditingController();
TextEditingController forgot_password_confirm_EditingController = TextEditingController();

class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.blueAccent,


            backgroundImage: AssetImage('image/avatar.png'),
          ),
          Text(
            'Login',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.blueAccent,
              fontSize: 20.0,

              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              controller: emailEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                labelText: 'Email',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please enter a valid email address";
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              controller: passwordEditingController,

              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                labelText: 'Password',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white,
              ),
              child: const Text('Log In'),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.

                  if((emailEditingController.text == email) && (passwordEditingController.text == password)){
                    Navigator.pushNamed(context, '/');
                    Flushbar(
                      title: "Alert",
                      message:
                      "Logged in successfully",
                      duration: Duration(seconds: 3),
                    )..show(context);

                  }
                  else if((emailEditingController.text == gmail) && (passwordEditingController.text == password2)){
                    Navigator.pushNamed(context, '/first');
                    Flushbar(
                      title: "Alert",
                      message:
                      "Logged in successfully 2",
                      duration: Duration(seconds: 3),
                    )..show(context);

                  }
                  else{
                    Navigator.pushNamed(context, '/login');
                    showDialog(
                      context : context,
                      builder : (context) => AlertDialog(
                        title: const Text('Alert'),
                        content: const Text('Credentials do not match any record'),
                        actions: <Widget>[

                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  };
                };

              },
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/forgot_password');
            },
            child: Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            child: Text(
              'Sign-Up',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
        ],
      ),

    );
  }
}

class SignUpFormState extends State<SignUpForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.blueAccent[200],
            backgroundImage: AssetImage('image/avatar.png'),
          ),
          Text(
            'Personal Information',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.blueAccent,
              fontSize: 15.0,


              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              controller: nameEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                labelText: 'Name',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              controller: phoneEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                labelText: 'Phone Number',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your phone number';
                }
                if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value)) {
                  return "Please enter a valid phone number";
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              controller: gmailEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                labelText: 'Email',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please enter a valid email address";
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              controller: addressEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                labelText: 'Address',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your address';
                }
                return null;
              },
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white,
              ),
              child: const Text('Next'),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.

                  Navigator.pushNamed(context, '/sign-up2');

                  name = nameEditingController.text;
                  gmail = gmailEditingController.text;
                  phonenumber = phoneEditingController.text;
                  address = addressEditingController.text;


                };

              },
            ),
          ),
        ],
      ),

    );
  }
}

class SignUp2FormState extends State<SignUp2Form> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.blueAccent[200],
            backgroundImage: AssetImage('image/avatar.png'),
          ),
          Text(
            'Educational Background',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.blueAccent,
              fontSize: 15.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              controller: tertiaryEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                labelText: 'Tertiary Education',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your tertiary education';
                }

                return null;
              },
            ),

          ),

          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              controller: secondaryEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                labelText: 'Secondary Education',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your secondary education';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),

            child: TextFormField(
              controller: primaryEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                labelText: 'Primary Education',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your primary education';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              controller: certificatesEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                labelText: 'Certificates',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your certificates';
                }
                return null;
              },
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white,
              ),
              child: const Text('Next'),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.

                  tertiary = tertiaryEditingController.text;
                  secondary = secondaryEditingController.text;
                  primary = primaryEditingController.text;
                  certificate = certificatesEditingController.text;


                  showDialog(
                    context : context,
                    builder : (context) => AlertDialog(
                      title: const Text('Declare year of education at'),
                      actions: <Widget>[
                        Card(
                            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                            child: ListTile(
                              leading: Icon(
                                Icons.school,
                                color: Colors.blueAccent,
                              ),
                              title: Text(
                                tertiary,
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 20.0,
                                ),
                              ),
                            )),

                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: TextFormField(
                            controller: tertiary_startEditingController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],

                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90.0),
                              ),
                              labelText: 'Tertiary Year Start',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: TextFormField(
                            controller: tertiary_endEditingController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90.0),
                              ),
                              labelText: 'Tertiary Year End',
                            ),
                          ),
                        ),

                        Row(
                          children: [

                            Column(
                              children: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('Cancel'),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    if (tertiary_endEditingController.text.isEmpty || tertiary_startEditingController.text.isEmpty ) {
                                      Flushbar(
                                        title: "Alert",
                                        message:
                                        "Please declare the start and end of of tertiary education",
                                        duration: Duration(seconds: 3),
                                      )..show(context);
                                    };
                                    if (int.parse(tertiary_endEditingController.text) < int.parse(tertiary_startEditingController.text) ) {
                                      Flushbar(
                                        title: "Alert",
                                        message:
                                        "Start of tertiary education can't be lesser than it's end",
                                        duration: Duration(seconds: 3),
                                      )..show(context);
                                    }
                                    else{

                                      tertiary_start = tertiary_startEditingController.text;
                                      tertiary_end = tertiary_endEditingController.text;

                                      showDialog(
                                        barrierColor: Colors.white.withOpacity(0),
                                        context : context,
                                        builder : (context) => AlertDialog(
                                          title: const Text('Declare year of education at'),
                                          actions: <Widget>[
                                            Card(
                                                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                                                child: ListTile(
                                                  leading: Icon(
                                                    Icons.school,
                                                    color: Colors.blueAccent,
                                                  ),
                                                  title: Text(
                                                    secondary,
                                                    style: TextStyle(
                                                      color: Colors.blueAccent,
                                                      fontFamily: 'Source Sans Pro',
                                                      fontSize: 20.0,
                                                    ),
                                                  ),
                                                )),

                                            Container(
                                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                              child: TextFormField(
                                                controller: secondary_startEditingController,
                                                keyboardType: TextInputType.number,
                                                inputFormatters: <TextInputFormatter>[
                                                  FilteringTextInputFormatter.digitsOnly
                                                ],

                                                decoration: InputDecoration(

                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(90.0),
                                                  ),
                                                  labelText: 'Secondary Year Start',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                              child: TextFormField(
                                                controller: secondary_endEditingController,
                                                keyboardType: TextInputType.number,
                                                inputFormatters: <TextInputFormatter>[
                                                  FilteringTextInputFormatter.digitsOnly
                                                ],
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(90.0),
                                                  ),
                                                  labelText: 'Secondary Year End',
                                                ),
                                              ),
                                            ),

                                            Row(
                                              children: [

                                                Column(
                                                  children: [
                                                    TextButton(
                                                      onPressed: () => Navigator.pop(context, 'OK'),
                                                      child: const Text('Cancel'),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    TextButton(
                                                      onPressed: () {
                                                        if (secondary_endEditingController.text.isEmpty || secondary_startEditingController.text.isEmpty ) {
                                                          Flushbar(
                                                            title: "Alert",
                                                            message:
                                                            "Please declare the start and end of of secondary education",
                                                            duration: Duration(seconds: 3),
                                                          )..show(context);
                                                        };
                                                        if (int.parse(secondary_endEditingController.text) < int.parse(secondary_startEditingController.text) ) {
                                                          Flushbar(
                                                            title: "Alert",
                                                            message:
                                                            "Start of secondary can't be lesser than it's end",
                                                            duration: Duration(seconds: 3),
                                                          )..show(context);
                                                        }
                                                        else{

                                                          secondary_start = secondary_startEditingController.text;
                                                          secondary_end = secondary_endEditingController.text;

                                                          showDialog(
                                                            barrierColor: Colors.white.withOpacity(0),
                                                            context : context,
                                                            builder : (context) => AlertDialog(
                                                              title: const Text('Declare year of education at'),
                                                              actions: <Widget>[
                                                                Card(
                                                                    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                                                                    child: ListTile(
                                                                      leading: Icon(
                                                                        Icons.school,
                                                                        color: Colors.blueAccent,
                                                                      ),
                                                                      title: Text(
                                                                        primary,
                                                                        style: TextStyle(
                                                                          color: Colors.blueAccent,
                                                                          fontFamily: 'Source Sans Pro',
                                                                          fontSize: 20.0,
                                                                        ),
                                                                      ),
                                                                    )),

                                                                Container(
                                                                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                                                  child: TextFormField(
                                                                    controller: primary_startEditingController,
                                                                    keyboardType: TextInputType.number,
                                                                    inputFormatters: <TextInputFormatter>[
                                                                      FilteringTextInputFormatter.digitsOnly
                                                                    ],

                                                                    decoration: InputDecoration(

                                                                      border: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.circular(90.0),
                                                                      ),
                                                                      labelText: 'Primary Year Start',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                                                  child: TextFormField(
                                                                    controller: primary_endEditingController,
                                                                    keyboardType: TextInputType.number,
                                                                    inputFormatters: <TextInputFormatter>[
                                                                      FilteringTextInputFormatter.digitsOnly
                                                                    ],
                                                                    decoration: InputDecoration(
                                                                      border: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.circular(90.0),
                                                                      ),
                                                                      labelText: 'Primary Year End',
                                                                    ),
                                                                  ),
                                                                ),

                                                                Row(
                                                                  children: [

                                                                    Column(
                                                                      children: [
                                                                        TextButton(
                                                                          onPressed: () => Navigator.pop(context, 'OK'),
                                                                          child: const Text('Cancel'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Spacer(),
                                                                    Column(
                                                                      children: [
                                                                        TextButton(
                                                                          onPressed: () {
                                                                            if (primary_endEditingController.text.isEmpty || primary_startEditingController.text.isEmpty ) {
                                                                              Flushbar(
                                                                                title: "Alert",
                                                                                message:
                                                                                "Please declare the start and end of of primary education",
                                                                                duration: Duration(seconds: 3),
                                                                              )..show(context);
                                                                            };
                                                                            if (int.parse(primary_endEditingController.text) < int.parse(primary_startEditingController.text) ) {
                                                                              Flushbar(
                                                                                title: "Alert",
                                                                                message:
                                                                                "Start of primary can't be lesser than it's end",
                                                                                duration: Duration(seconds: 3),
                                                                              )..show(context);
                                                                            }
                                                                            else{

                                                                              primary_start = primary_startEditingController.text;
                                                                              primary_end = primary_endEditingController.text;

                                                                              showDialog(
                                                                                barrierColor: Colors.white.withOpacity(0),
                                                                                context : context,
                                                                                builder : (context) => AlertDialog(
                                                                                  title: const Text('Declare year of education at'),
                                                                                  actions: <Widget>[
                                                                                    Card(
                                                                                        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                                                                                        child: ListTile(
                                                                                          leading: Icon(
                                                                                            Icons.school,
                                                                                            color: Colors.blueAccent,
                                                                                          ),
                                                                                          title: Text(
                                                                                            certificate,
                                                                                            style: TextStyle(
                                                                                              color: Colors.blueAccent,
                                                                                              fontFamily: 'Source Sans Pro',
                                                                                              fontSize: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                        )),

                                                                                    Container(
                                                                                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                                                                      child: TextFormField(
                                                                                        controller: certificates_startEditingController,
                                                                                        keyboardType: TextInputType.number,
                                                                                        inputFormatters: <TextInputFormatter>[
                                                                                          FilteringTextInputFormatter.digitsOnly
                                                                                        ],

                                                                                        decoration: InputDecoration(

                                                                                          border: OutlineInputBorder(
                                                                                            borderRadius: BorderRadius.circular(90.0),
                                                                                          ),
                                                                                          labelText: 'Certificate Year Start',
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                                                                      child: TextFormField(
                                                                                        controller: certificates_endEditingController,
                                                                                        keyboardType: TextInputType.number,
                                                                                        inputFormatters: <TextInputFormatter>[
                                                                                          FilteringTextInputFormatter.digitsOnly
                                                                                        ],
                                                                                        decoration: InputDecoration(
                                                                                          border: OutlineInputBorder(
                                                                                            borderRadius: BorderRadius.circular(90.0),
                                                                                          ),
                                                                                          labelText: 'Certificate Year End',
                                                                                        ),
                                                                                      ),
                                                                                    ),

                                                                                    Row(
                                                                                      children: [

                                                                                        Column(
                                                                                          children: [
                                                                                            TextButton(
                                                                                              onPressed: () => Navigator.pop(context, 'OK'),
                                                                                              child: const Text('Cancel'),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Spacer(),
                                                                                        Column(
                                                                                          children: [
                                                                                            TextButton(
                                                                                              onPressed: () {
                                                                                                if (certificates_endEditingController.text.isEmpty || certificates_startEditingController.text.isEmpty ) {
                                                                                                  Flushbar(
                                                                                                    title: "Alert",
                                                                                                    message:
                                                                                                    "Please declare the start and end of certificate education",
                                                                                                    duration: Duration(seconds: 3),
                                                                                                  )..show(context);
                                                                                                };
                                                                                                if (int.parse(certificates_endEditingController.text) < int.parse(certificates_startEditingController.text) ) {
                                                                                                  Flushbar(
                                                                                                    title: "Alert",
                                                                                                    message:
                                                                                                    "Start of certificate can't be lesser than it's end",
                                                                                                    duration: Duration(seconds: 3),
                                                                                                  )..show(context);
                                                                                                }
                                                                                                else{

                                                                                                  certificate_start = certificates_startEditingController.text;
                                                                                                  certificate_end = certificates_endEditingController.text;
                                                                                                  Navigator.pushNamed(context, "/last");
                                                                                                };
                                                                                              },
                                                                                              child: const Text('Submit'),
                                                                                            ),
                                                                                          ],
                                                                                        ),

                                                                                      ],
                                                                                    ),


                                                                                  ],
                                                                                ),
                                                                              );
                                                                            };
                                                                          },
                                                                          child: const Text('Submit'),
                                                                        ),
                                                                      ],
                                                                    ),

                                                                  ],
                                                                ),


                                                              ],
                                                            ),
                                                          );
                                                        };
                                                      },
                                                      child: const Text('Submit'),
                                                    ),
                                                  ],
                                                ),

                                              ],
                                            ),


                                          ],
                                        ),
                                      );
                                    };
                                  },
                                  child: const Text('Submit'),
                                ),
                              ],
                            ),

                          ],
                        ),


                      ],
                    ),
                  );

                };

              },
            ),
          ),
        ],
      ),

    );
  }
}

class SignUp3FormState extends State<SignUp3Form> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.blueAccent[200],
            backgroundImage: AssetImage('image/avatar.png'),
          ),
          Text(
            'Professional Background',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.blueAccent,
              fontSize: 15.0,

              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(20,0, 20, 0),
            child: TextFormField(
              maxLength: 300,
              maxLines: 5,
              controller: professional_summaryEditingController,
              decoration: InputDecoration(

                labelText: 'Professional Summary',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your professional summary';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              controller: skills1_EditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                labelText: 'Skill 1',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a skill';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              controller: skills2_EditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                labelText: 'Skill2',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a skill';
                }
                return null;
              },
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white,
              ),
              child: const Text('Next'),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.

                  professional_summary = professional_summaryEditingController.text;
                  skills_1 = skills1_EditingController.text;
                  skills_2 = skills2_EditingController.text;

                  showDialog(
                    barrierColor: Colors.white.withOpacity(0),
                    context : context,
                    builder : (context) => AlertDialog(
                      title: const Text('Add a description'),
                      actions: <Widget>[
                        Card(
                            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                            child: ListTile(
                              leading: Icon(
                                Icons.add_card,
                                color: Colors.blueAccent,
                              ),
                              title: Text(
                                skills_1,
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 20.0,
                                ),
                              ),
                            )),

                        Container(
                          padding: const EdgeInsets.fromLTRB(20,0, 20, 0),
                          child: TextFormField(
                            maxLength: 300,
                            maxLines: 5,
                            controller: skills1_description_EditingController,
                            decoration: InputDecoration(

                              labelText: 'Description',
                            ),

                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please your skill's description";
                              }
                              return null;
                            },
                          ),
                        ),

                        Row(
                          children: [

                            Column(
                              children: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('Cancel'),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    if (skills1_description_EditingController.text.isEmpty ) {
                                      Flushbar(
                                        title: "Alert",
                                        message:
                                        "Please add your skill's description",
                                        duration: Duration(seconds: 3),
                                      )..show(context);
                                    }
                                    else{

                                      skills_1_description =   skills1_description_EditingController.text;

                                      showDialog(
                                        barrierColor: Colors.white.withOpacity(0),
                                        context : context,
                                        builder : (context) => AlertDialog(
                                          title: const Text('Add a description'),
                                          actions: <Widget>[
                                            Card(
                                                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                                                child: ListTile(
                                                  leading: Icon(
                                                    Icons.add_card,
                                                    color: Colors.blueAccent,
                                                  ),
                                                  title: Text(
                                                    skills_2,
                                                    style: TextStyle(
                                                      color: Colors.blueAccent,
                                                      fontFamily: 'Source Sans Pro',
                                                      fontSize: 20.0,
                                                    ),
                                                  ),
                                                )),

                                            Container(
                                              padding: const EdgeInsets.fromLTRB(20,0, 20, 0),
                                              child: TextFormField(
                                                maxLength: 300,
                                                maxLines: 5,
                                                controller: skills2_descriptionEditingController,
                                                decoration: InputDecoration(

                                                  labelText: 'Description',
                                                ),

                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return "Please add your skill's description";
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),

                                            Row(
                                              children: [

                                                Column(
                                                  children: [
                                                    TextButton(
                                                      onPressed: () => Navigator.pop(context, 'OK'),
                                                      child: const Text('Cancel'),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    TextButton(
                                                      onPressed: () {
                                                        if ( skills2_descriptionEditingController.text.isEmpty ) {
                                                          Flushbar(
                                                            title: "Alert",
                                                            message:
                                                            "Please add your skill's description",
                                                            duration: Duration(seconds: 3),
                                                          )..show(context);
                                                        }
                                                        else{

                                                          skills_2_description =   skills2_descriptionEditingController.text;

                                                          showDialog(
                                                            barrierColor: Colors.white.withOpacity(0),
                                                            context : context,
                                                            builder : (context) => AlertDialog(
                                                              title: const Text("Declare your passsword"),
                                                              actions: <Widget>[
                                                                Card(
                                                                    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                                                                    child: ListTile(
                                                                      leading: Icon(
                                                                        Icons.email,
                                                                        color: Colors.blueAccent,
                                                                      ),
                                                                      title: Text(
                                                                        gmail,
                                                                        style: TextStyle(
                                                                          color: Colors.blueAccent,
                                                                          fontFamily: 'Source Sans Pro',
                                                                          fontSize: 20.0,
                                                                        ),
                                                                      ),
                                                                    )),

                                                                Container(
                                                                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                                                  child: TextFormField(
                                                                    controller: password2_EditingController,
                                                                    obscureText: true,
                                                                    decoration: InputDecoration(
                                                                      border: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.circular(90.0),
                                                                      ),
                                                                      labelText: 'Password',
                                                                    ),

                                                                    validator: (value) {
                                                                      if (value == null || value.isEmpty) {
                                                                        return 'Please enter a password';
                                                                      }
                                                                      return null;
                                                                    },
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                                                  child: TextFormField(
                                                                    controller: password2confirm_EditingController,
                                                                    obscureText: true,
                                                                    decoration: InputDecoration(

                                                                      border: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.circular(90.0),
                                                                      ),
                                                                      labelText: 'Confirm Password',
                                                                    ),

                                                                    validator: (value) {
                                                                      if (value == null || value.isEmpty) {
                                                                        return 'Please enter a skill';
                                                                      }
                                                                      return null;
                                                                    },
                                                                  ),
                                                                ),
                                                                Row(
                                                                  children: [

                                                                    Column(
                                                                      children: [
                                                                        TextButton(
                                                                          onPressed: () => Navigator.pop(context, 'OK'),
                                                                          child: const Text('Cancel'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Spacer(),
                                                                    Column(
                                                                      children: [
                                                                        TextButton(
                                                                          onPressed: () {


                                                                            if ((password2_EditingController.text.isEmpty || password2confirm_EditingController.text.isEmpty) ||(password2_EditingController.text.isEmpty && password2confirm_EditingController.text.isEmpty)) {
                                                                              Flushbar(
                                                                                title: "Alert",
                                                                                message:
                                                                                "Please declare your password",
                                                                                duration: Duration(seconds: 3),
                                                                              )..show(context);
                                                                            }
                                                                            else if(password2_EditingController.text != password2confirm_EditingController.text){
                                                                              Flushbar(
                                                                                title: "Alert",
                                                                                message:
                                                                                "Passwords are not the same",
                                                                                duration: Duration(seconds: 3),
                                                                              )..show(context);
                                                                            }
                                                                            else{

                                                                              password2 =  password2_EditingController.text;

                                                                              Navigator.pushNamed(context, '/login');
                                                                              Flushbar(
                                                                                title: "Alert",
                                                                                message:
                                                                                "Signed up sucessfully please log in to continue",
                                                                                duration: Duration(seconds: 3),
                                                                              )..show(context);
                                                                            };
                                                                          },
                                                                          child: const Text('Submit'),
                                                                        ),
                                                                      ],
                                                                    ),

                                                                  ],
                                                                ),


                                                              ],
                                                            ),
                                                          );

                                                        };
                                                      },
                                                      child: const Text('Submit'),
                                                    ),
                                                  ],
                                                ),

                                              ],
                                            ),


                                          ],
                                        ),
                                      );

                                    };
                                  },
                                  child: const Text('Submit'),
                                ),
                              ],
                            ),

                          ],
                        ),


                      ],
                    ),
                  );


                };

              },
            ),
          ),
        ],
      ),

    );
  }
}

class ForgotPasswordFormState extends State<ForgotPasswordForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.blue[200],
            backgroundImage: AssetImage('image/avatar.png'),
          ),
          Text(
            'Reset Password',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.blueAccent,
              fontSize: 15.0,

              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),


          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextFormField(
              controller: forgot_email_EditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                labelText: 'Email',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please enter a valid email address";
                }
                return null;
              },
            ),
          ),

          Container(
            height: 80,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white,
              ),
              child: const Text('Next'),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.

                  if((forgot_email_EditingController.text != email) && (forgot_email_EditingController.text != gmail) ){
                    Flushbar(
                      title: "Alert",
                      message:
                      "Credentials do not match our record",
                      duration: Duration(seconds: 3),
                    )..show(context);
                  }
                  else{
                    showDialog(
                      barrierColor: Colors.white.withOpacity(0),
                      context : context,
                      builder : (context) => AlertDialog(
                        title: const Text("Reset your passsword"),
                        actions: <Widget>[
                          Card(
                              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                              child: ListTile(
                                leading: Icon(
                                  Icons.email,
                                  color: Colors.blueAccent,
                                ),
                                title: Text(
                                  forgot_email_EditingController.text ,
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 12.0,
                                  ),
                                ),
                              )),

                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: TextFormField(
                              controller: forgot_password_EditingController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(90.0),
                                ),
                                labelText: 'Password',
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a password';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: TextFormField(
                              controller: forgot_password_confirm_EditingController,
                              obscureText: true,
                              decoration: InputDecoration(

                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(90.0),
                                ),
                                labelText: 'Confirm Password',
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a skill';
                                }
                                return null;
                              },
                            ),
                          ),
                          Row(
                            children: [

                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'OK'),
                                    child: const Text('Cancel'),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () {


                                      if (forgot_password_EditingController.text.isEmpty && forgot_password_confirm_EditingController.text.isEmpty)  {
                                        Flushbar(
                                          title: "Alert",
                                          message:
                                          "Please declare your password",
                                          duration: Duration(seconds: 3),
                                        )..show(context);
                                      }
                                      if (forgot_password_EditingController.text.isEmpty || forgot_password_confirm_EditingController.text.isEmpty)  {
                                        Flushbar(
                                          title: "Alert",
                                          message:
                                          "Please declare your password",
                                          duration: Duration(seconds: 3),
                                        )..show(context);
                                      }
                                      else if(forgot_password_EditingController.text != forgot_password_confirm_EditingController.text){
                                        Flushbar(
                                          title: "Alert",
                                          message:
                                          "Passwords are not the same",
                                          duration: Duration(seconds: 3),
                                        )..show(context);
                                      }
                                      else {
                                        if (forgot_email_EditingController
                                            .text == email) {
                                          password =
                                              forgot_password_EditingController
                                                  .text;
                                        }

                                        if (forgot_email_EditingController
                                            .text == gmail) {
                                          password2 =
                                              forgot_password_EditingController
                                                  .text;
                                        }

                                        else {
                                          Navigator.pushNamed(
                                              context, '/login');
                                          Flushbar(
                                            title: "Alert",
                                            message:
                                            "Password has been successfully reset",
                                            duration: Duration(seconds: 3),
                                          )
                                            ..show(context);
                                        };
                                      }
                                    },
                                    child: const Text('Submit'),
                                  ),
                                ],
                              ),

                            ],
                          ),


                        ],
                      ),
                    );


                  }




                };

              },
            ),
          ),
        ],
      ),

    );
  }
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
        backgroundColor: Colors.lightBlueAccent[200],
        automaticallyImplyLeading: false,
      ), // AppBar
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'WELCOME BACK',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.blue,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.lightBlueAccent[200],
              backgroundImage: AssetImage('image/profile.png'),
            ),
            Text(
              'Stefanny D. Damacin',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,

                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'IT Consultant',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.blue,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    '+639382918321',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.lightBlueAccent[200],
                ),
                title: Text(
                  'stefdamacin@gmail.com',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue,
                      fontFamily: 'Source Sans Pro'),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.house,
                  color: Colors.blue,
                ),
                title: Text(
                  'Licsi,Manaoag,Pangasinan',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue,
                      fontFamily: 'Source Sans Pro'),
                ),

              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white, // foreground
              ),
              child: const Text('Educational Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/education');
              },
            ), // ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white, // foreground
              ),
              child: const Text('Professional Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/professional');
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white, // foreground
              ),
              child: const Text('Log Out'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],

        ),

      ),
    ); // Scaffold
  }
}

class EducationRoute extends StatelessWidget {
  const EducationRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Colors.blue,
      ), // AppBar
      body: Center(
        child: Column(



          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 15.0,
              width: 150.0,
              child: Divider(
                color: Colors.blueAccent,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),


              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Philippine College of Science and Technology',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text('2020-2024'
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                      fontFamily: 'Source Sans Pro'),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Mangaldan Integrated Sped Center School',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text('Senior High School 2018-2020'
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Mangaldan Integrated Sped Center School',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text('Junior High School 2012-2018'
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Manaoag Central School',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text('2012-2016'
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  'Certificates',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'NCII holder in Computer System Servicing',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text('2022'
                ),
              ),
            ),
          ],

        ),
      ), // Center
    ); // Scaffold
  }
}

class ProfessionalRoute extends StatelessWidget {
  const ProfessionalRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Professional Background"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.blueAccent,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_box_outlined,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  "Professional Summary",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),


                subtitle: Text("I'm a programmer and a freshly graduated out of college"
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(

                title: Text(
                  'Skills and Abilities',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),


            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.web_rounded,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Web-Development',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text("I have a experience to developing website using PHP and knowledge to fron-end"
                ),
              ),
            ),
          ],



        ),
      ), /// AppBar

    ); //


  }
}

class Home2Route extends StatelessWidget {
  const Home2Route({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: false,
      ), // AppBar
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.blueAccent[200],
              backgroundImage: AssetImage('image/avatar.png'),
            ),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              skills_1,
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.blueAccent,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              skills_2,
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.blueAccent,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.blueAccent,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    phonenumber,
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  gmail,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                      fontFamily: 'Source Sans Pro'),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.house,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  address,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueAccent,
                      fontFamily: 'Source Sans Pro'),
                ),

              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white, // foreground
              ),
              child: const Text('Educational Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/education_two');
              },
            ), // ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white, // foreground
              ),
              child: const Text('Professional Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/professional_two');
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white, // foreground
              ),
              child: const Text('Log Out'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],

        ),

      ),
    ); // Scaffold
  }
}

class Education2Route extends StatelessWidget {
  const Education2Route({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Colors.blueAccent,
      ), // AppBar
      body: Center(
        child: Column(



          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 15.0,
              width: 150.0,
              child: Divider(
                color: Colors.blueAccent,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),


              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  tertiary,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text(tertiary_start +'-'+ tertiary_end
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                      fontFamily: 'Source Sans Pro'),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  secondary,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text(secondary_start + '-' + secondary_end
                ),

              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  primary,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text(primary_start + '-' + primary_end
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Certificates',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  certificate,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text(certificate_start + '-' + certificate_end
                ),
              ),
            ),
          ],

        ),
      ), // Center
    ); // Scaffold
  }
}

class Professional2Route extends StatelessWidget {
  const Professional2Route({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Professional Background"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.blueAccent,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_box_outlined,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  "Professional Summary",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),


                subtitle: Text(professional_summary
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(

                title: Text(
                  'Skills',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),


            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.brush,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  skills_1,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text(skills_1_description
                ),
              ),
            ),


            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.web_rounded,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  skills_2,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text(skills_2_description
                ),
              ),
            ),
          ],



        ),
      ), /// AppBar

    ); //


  }
}




























































































































































































































































































































































































































































































//GOD IS WATCHING YOU !!