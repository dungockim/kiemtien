import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget{
   const FormHeaderWidget({
     Key? key,
     required this.image,
     required this.title,
     required this.subtitle,
   }) : super(key : key);

   final String image, title , subtitle;

   @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;

     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Image(image: AssetImage(image), height: size.height * 0.22),
         const SizedBox(height: 8,),
         Text(title, style: Theme.of(context).textTheme.headline2),
         Text(subtitle, style: Theme.of(context).textTheme.bodyText1),
       ],
     );
   }
}