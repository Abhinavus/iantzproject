import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/datalist.dart';

import 'package:flutter_application_4/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

import 'data/data_bloc.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DataBloc(dataRepo: RepositoryProvider.of<DataRepo>(context)),
      child: BlocBuilder<DataBloc, DataState>(
        builder: (context, state) { 
          if(state is DataSending){
            return const Center(
              child: CircularProgressIndicator(),
            );
        
          } else if (state is DataError){
            return const Center(child: Text('errro'),);
          }
          return Scaffold(
     
      body: 
      
      Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: Column(
              children: [
                Text('Farmer Sign In',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 40,
            ),),Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ 
            TextButton(onPressed: (){}, child: Text('Sign In'),), 
                  TextButton(onPressed: (){}, child: Text('Sign Up'),), 
            ],),

            SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
                ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: TextField(
                        controller: emailController,
                        enableSuggestions: false,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your email here'
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
                ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: TextField(
                        controller:passwordController ,
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your password here '
                        ),
                      ),
                    ),
                  ),
                ),SizedBox(height: 10,),
                Container(
                  width: 340, height: 70,
            decoration: BoxDecoration(color: Color.fromARGB(255, 44, 69, 151),
            borderRadius: BorderRadius.circular(12)
            ),
                  child: TextButton(onPressed: () {
                    BlocProvider.of<DataBloc>(context)
            .add(Create(emailController.text, passwordController.text));
            if(state is DataSend){
Navigator.push(context,
     MaterialPageRoute(builder: (context) => const DataList ()));
                  
            }
        
                  },
                    
    //  
                  child: const Text('Sign In',
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
            ),
                  ),
                  ),
                ),
                TextButton(onPressed: () {
                
                },
                 child: Text('Forgot password?'),)
                
              ],
            ),
      ),
    );
        },
      ),
    );
  }
}
