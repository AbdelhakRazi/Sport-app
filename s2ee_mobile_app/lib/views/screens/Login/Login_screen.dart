import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:s2ee_mobile_app/config/colors.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
      final screen_height = MediaQuery.of(context).size.height;
      final screen_width = MediaQuery.of(context).size.width;
    return  Scaffold(resizeToAvoidBottomInset: true,
            body: SingleChildScrollView(    
                child: Stack_filter(screen_height: screen_height, screen_width: screen_width),
          ),
              
      
    );
  }
}

class Stack_filter extends StatelessWidget {
  const Stack_filter({
    Key key,
    @required this.screen_height,
    @required this.screen_width,
  }) : super(key: key);

  final double screen_height;
  final double screen_width;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
                     Container(height:screen_height,
      width:screen_width,
            decoration:BoxDecoration(
      image:DecorationImage(image: AssetImage('assets/pictures/Login_image.png')
      ,fit: BoxFit.fill)),
                
      ),
Container(height:screen_height,width: screen_width,
  decoration:BoxDecoration(gradient: LinearGradient(begin: FractionalOffset.topCenter,
end:FractionalOffset.bottomCenter,
  colors: [
  AppColors.blackAccent.withOpacity(0.5),
  AppColors.black,
])),
child:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
        
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(aspectRatio:5.5/2,
            child:SvgPicture.asset("assets/pictures/Logo.svg")),
                        SizedBox(height:screen_height*0.08),

            Padding(
              padding:EdgeInsets.only(left:35,right:35),
                                  child: Container(
                                    child:Form_widget(screen_height: screen_height),),
            ),
        ],),)
    ],
    );
  }
}

class Form_widget extends StatelessWidget {
  const Form_widget({
    Key key,
    @required this.screen_height,
  }) : super(key: key);

  final double screen_height;

  @override
  Widget build(BuildContext context) {
    return Form(
    child: Column(
      mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[ Email_field(),
                            SizedBox(height: screen_height*0.08,),
                            SizedBox(width: double.maxFinite,
                            height: screen_height*0.07,
                            child: RaisedButton(
                              onPressed: (){},
                          child:Text("SE CONNECTER") ,
                          ),
                            ),
                                            ]),);
  }
}

class Email_field extends StatelessWidget {
  const Email_field({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(textAlignVertical: TextAlignVertical.center,
  
                              keyboardType: TextInputType.emailAddress,
      
                              style:Theme.of(context).textTheme.subtitle1.copyWith(color:AppColors.white),
                              decoration:InputDecoration(
                              hintText: "Email",
                              hintStyle:Theme.of(context).textTheme.subtitle1,
                              prefixIcon: Icon(Icons.email,color: AppColors.white, size: 35,                   
                              ),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.white)),
                              ),
                            );
  }
}