import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payapp/Feature1/PaymentPage5.dart';


class PaymentPage4 extends StatefulWidget {
  String image;
  String title;
  String des;
  String buttontitle;
  PaymentPage4({ Key? key,  required this.image, required this.title, required this.des, required this.buttontitle,}) : super(key: key);

  @override
  State<PaymentPage4> createState() => _PaymentPage4State();
}

class _PaymentPage4State extends State<PaymentPage4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
     backgroundColor: const Color.fromRGBO(36, 98, 127, 1),

       body:  SafeArea(
         child: SingleChildScrollView(
           physics: const NeverScrollableScrollPhysics(),
           child: Column(
              children:  [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: 
                  [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),),
                     const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text("Payment",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                    )
                  ],
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list_rounded, color: Colors.white,))
                ],
              ),

      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height ,
         decoration: const BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.only(
           topRight: Radius.circular(40.0),
           topLeft: Radius.circular(40.0),
         ),
      ),
      
       child: Padding(
         padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
         child: Column(
           children: 
             [
               SvgPicture.asset(widget.image,
             ),

            const SizedBox(height: 20,),
              Text(widget.title, 
             textAlign: TextAlign.center,
             style: const TextStyle(
               color:  Color.fromRGBO(36, 98, 127, 1),
               fontSize: 60,
               fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                 Text(widget.des,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Color.fromRGBO(47, 122, 137, 1), fontSize: 30),),
          const SizedBox(height: 50,),

           SizedBox(
             width: 250,
             child: MaterialButton(
               onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentPage5(image: "assets/image5.svg", title: " Payment \n Failed", des: " Looks Like, You Didn't Entered\n Card Sucessfully.", buttontitle: " BACK", )),);    
               },
               color: const Color.fromRGBO(36, 98, 127, 1),
               child:  Text(widget.buttontitle, style: const TextStyle(
                 color: Colors.white, 
                 fontWeight: FontWeight.bold),),
                 shape:  RoundedRectangleBorder
                 (
                   borderRadius:  BorderRadius.circular(20.0),),
               ),
           ),
        

           ],
         
           
         ),
       ),
         
      
      
       
                
                  
        ),
         
           ],
           ),
         ),
       ),

        );
  }
}
