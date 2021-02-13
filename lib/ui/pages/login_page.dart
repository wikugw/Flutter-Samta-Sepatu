part of 'pages.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              body: Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text("Samta Sepatu", style: blackFonts,),
                        SizedBox(
                          height: 50,
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
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
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "Password",
                              hintText: "Password"),
                        ),
                        SizedBox(
                          height: 10,
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
                        )
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
