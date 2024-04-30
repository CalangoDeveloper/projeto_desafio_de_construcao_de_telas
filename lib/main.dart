import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaLogin(),
    )
  );
}

class TelaLogin extends StatelessWidget{
  const TelaLogin({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Colors.blue
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.zero,
              child: Image.network(
                'https://lh3.googleusercontent.com/drive-storage/AJQWtBMXFrOnwKyDqIO-ivXGgpMwR-uirV8UTrU5xywC44qLGPZW8WP0ACqNGYgyeNlr45R3iNWu_J5nNHQxN-H382kFLcF9wUbzI_SFJjm5SdxitQ=w1868-h932',
                height: 350,
              ),
            ),

            Container(
              child: Column(
                children: [
                  Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 48
                  ),),
                  Text('Sing in to continue.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                  ),)
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('NAME',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Francois Mercer',
                        fillColor: Colors.white,
                        filled: true,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text('PASSWORD',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: '***********',
                        fillColor: Colors.white,
                        filled: true,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(40),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.yellow,
                      minimumSize: Size(double.infinity, 60),
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text('LOGIN',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const TelaCriarConta()),);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TelaCriarConta extends StatelessWidget {
  const TelaCriarConta({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 238, 238),
      body: Column(
        children: [
          Container(
            height: 300,
            color: Colors.blue,
            padding: EdgeInsets.only(top: 80, left: 42),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create new account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Already Registered? Log in here.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text('NAME',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        fillColor: Colors.white,
                        filled: true,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Text('EMAIL',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        fillColor: Colors.white,
                        filled: true,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Text('PASSWORD',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        fillColor: Colors.white,
                        filled: true,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Text('DATE OF BIRTH',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        labelText: 'Date of Birth',
                        hintText: 'DD/MM/YYYY',
                        fillColor: Colors.white,
                        filled: true,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          
          Container(
            margin: EdgeInsets.only(top: 70),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 231, 235, 4),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            height: 130,
            child: Center(
              child: SizedBox(
                width: 280,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 12, 60, 216),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/terceira');
                  },
                  child: Text(
                    'SING UP',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 237, 238, 238),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}