import 'package:flutter/material.dart';
import 'package:flutter_awesome_app/views/home_ui.dart';
import 'package:flutter_awesome_app/views/singup_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          //เลื่อนหน้าจอได้
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () {
                         Navigator.push( // ไปยังหน้า SingupUi
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeUi(),
                      ),
                    ); // กลับไปยังหน้า HomeUi
                      },
                      child: Icon(
                        //ไอคอนลูกศรย้อนกลับ
                        Icons.arrow_back_ios_new,
                        size: 35.0,
                      ),
                    ),
                  ),
                  Align(
                    //จัดตำแหน่งรูปให้อยู่ซ้าย
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    //จัดตำแหน่งข้อความให้อยู่ซ้าย
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Welcome Back!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Align(
                    //จัดตำแหน่งข้อความให้อยู่ซ้าย
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Make it work, made it right, make it fast.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    //ช่องกรอกอีเมล
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: Icon(
                          Icons.person_2_outlined, //ไอคอนรูปคน
                          color: Colors.grey,
                        ),
                        hintText: 'Email',
                        helperStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.all(20.0)),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    obscureText: true,
                    //ช่องกรอกพาสเวิร์ด
                    //ซ่อนข้อความพาสเวิร์ด
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: Icon(
                          FontAwesomeIcons.fingerprint, //ไอคอนลายนิ้วมือ
                          color: Colors.grey,
                        ),
                        hintText: 'Password',
                        helperStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.all(20.0),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.visibility_off_outlined, //ไอคอนรูปตา
                            color: Colors.grey,
                          ),
                        )),
                  ),
                  
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 37, 124, 247),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  ElevatedButton( // ปุ่ม LOGIN
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width,
                        55.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('OR'),

                  SizedBox(
                    height: 20.0,
                  ),


                  OutlinedButton(// ปุ่ม Sign in with Google
                    onPressed: () {
                      Navigator.push(
                        // ไปยังหน้า LoginUi
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginUi(),
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width,
                        55.0,),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/1.png',
                          width: 20.0,
                          height: 20.0,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(//ข้อความบนปุ่ม
                          'Sign in with Google',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                         Navigator.push( // ไปยังหน้า SingupUi
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingupUi(),
                      ),
                    );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 37, 124, 247),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                
                ],
              ),
            ),
          ),
        ));
  }
}
