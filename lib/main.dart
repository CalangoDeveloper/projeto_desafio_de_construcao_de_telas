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
              padding: EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('NAME',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                  SizedBox(height: 8),
                  widgetTextFieldName(),
                  SizedBox(height: 20),
                  Text('PASSWORD',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                  SizedBox(height: 8),
                  widgetTextFieldPassword(),
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

widgetTextFieldName(){
  return TextField(
    decoration: InputDecoration(
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      filled: true,
      fillColor: Colors.white,
      hintText: 'Francois Mercer',
      hintStyle: TextStyle(
        color: Colors.black
      )
    ),
  );
}
widgetTextFieldPassword(){
  return TextField(
    decoration: InputDecoration(
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      filled: true,
      fillColor: Colors.white,
      hintText: '***********',
      hintStyle: TextStyle(
        color: Colors.black
      )
    ),
  );
}

class TelaCriarConta extends StatelessWidget {
  const TelaCriarConta({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(

    );
  }
}