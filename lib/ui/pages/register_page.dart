part of 'pages.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController cName = new TextEditingController();
  TextEditingController cEmail = new TextEditingController();
  TextEditingController cPassword = new TextEditingController();
  TextEditingController cConfirmPassword = new TextEditingController();

  bool isChecked = false;
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // --------------------------------------------- //
      // dismiss keyboad on tap outside textbox        //
      // --------------------------------------------- //
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(default_margin),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            }, child: Icon(Icons.arrow_back)),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Create Account",
                          style: blackFonts.copyWith(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: cName,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Full Name",
                        hintText: "Full Name"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: cEmail,
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
                    controller: cPassword,
                    obscureText: !isPasswordVisible,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                        onPressed: (){
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        }
                      ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Password",
                        hintText: "Password"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: cConfirmPassword,
                    obscureText: !isConfirmPasswordVisible,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off),
                        onPressed: (){
                          setState(() {
                            isConfirmPasswordVisible = !isConfirmPasswordVisible;
                          });
                        }
                      ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Confirm Password",
                        hintText: "Confirm Password"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (val) {
                          setState(() {
                            isChecked = val;
                          });
                        },
                        checkColor: Colors.white,
                        activeColor: mainColor,
                      ),
                      Expanded(
                          child: Text(
                        "Dengan ini anda menyetejui semua syarat dan ketentuan yang dimiliki oleh Samta Sepatu",
                        style: blackFonts,
                        overflow: TextOverflow.clip,
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ButtonWidget(
                    color: mainColor,
                    title: "Register",
                    onClickState: () {},
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text("Go to login page"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
