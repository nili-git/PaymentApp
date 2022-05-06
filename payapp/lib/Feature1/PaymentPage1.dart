// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payapp/Feature1/PaymentPage2.dart';

class PaymentPage1 extends StatefulWidget {
  
  const PaymentPage1({ Key? key }) : super(key: key);

  @override
  State<PaymentPage1> createState() => _PaymentPage1State();
}

class _PaymentPage1State extends State<PaymentPage1> {
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

             Payments(image: "assets/image1.svg", title: "Payment \n Sucessful!", des: "Thank you for using \n our Service.", buttontitle: " BACK TO HOME",),
         
           ],
           ),
         ),
       ),

        );
  }
}

class Payments extends StatelessWidget {
  String image;
  String title;
  String des;
  String buttontitle;
  
   Payments({
    Key? key, required this.image, required this.title, required this.des, required this.buttontitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
               SvgPicture.asset(image,
             ),

            const SizedBox(height: 20,),
            Text(title, 
                textAlign: TextAlign.center,
                style: const  TextStyle(
                color:  Color.fromRGBO(36, 98, 127, 1),
                fontSize: 60,
                fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),

                Text(des,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Color.fromRGBO(47, 122, 137, 1), fontSize: 30),),
          const SizedBox(height: 50,),

           SizedBox(
             width: 250,
             child: MaterialButton(
               onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentPage2(image: "assets/image2.svg", title: " Payment \n Sucessful!", des: " Thank you for Booking \n Appointment.", buttontitle: " UPCOMING APPOINTMENT",  )),);
               },
               color: const Color.fromRGBO(36, 98, 127, 1),
               child:  Text(buttontitle, style: const TextStyle(
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
         
      
      
       
                
                  
       );
  }
}
   