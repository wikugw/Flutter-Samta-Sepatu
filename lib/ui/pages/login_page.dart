part of 'pages.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return BlocBuilder<UserloginBloc, UserloginState>(
      builder: (context, state) {
        return BlocListener<UserloginBloc, UserloginState>(
          listener: (context, state) {
            // IF state is user loaded, go to next page
            if (state is UserLoaded) {
              Navigator.pushReplacementNamed(context, ProductListRoute);
            } else if (state is UserError) {
              // If state is user error, show error message
              flushMessage(state.message.toString(), context);
            }
          },
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Welcome \n Back!",
                                style: blackFonts.copyWith(
                                    fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Cari Sepatu favoritmu gak pake ribet!",
                                style: blackFonts.copyWith(fontSize: 16),
                              ),
                              Text(
                                "Yuk login sekarang ....",
                                style: blackFonts.copyWith(fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "Email",
                              hintText: "Email"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: !isPasswordVisible,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                  icon: Icon(isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      isPasswordVisible = !isPasswordVisible;
                                    });
                                  }),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "Password",
                              hintText: "Password"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        // Call shared button widget
                        state is UserLoading
                            ? SpinKitFadingCircle(
                                color: mainColor,
                              )
                            : ButtonWidget(
                                title: "Login",
                                color: mainColor,
                                onClickState: () {
                                  context.read<UserloginBloc>().add(LoginUser(
                                      emailController.text,
                                      passwordController.text));
                                }),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RegisterRoute);
                          },
                          child: Text("Register", style: blackFonts),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
