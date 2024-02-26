// import 'package:flutter/material.dart';
// import 'package:hotel_booking_app/app/routes/app_routes.dart';
// import 'package:hotel_booking_app/view/dashboard/tabbar_page.dart';
//
// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int currentPageIndex = 0;
//   final _formKey = GlobalKey<FormState>();
//
//   final TextEditingController _date = TextEditingController();
//
//
//   Future<void> _selectDate() async{
//     DateTime? picked =await showDatePicker(
//         context: context,
//         initialDate: DateTime.now(),
//         firstDate: DateTime(2000),
//         lastDate: DateTime(2100)
//     );
//     if(picked != null){
//       setState(() {
//         _date.text = picked.toString().split("")[0];
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final ThemeData theme = Theme.of(context);
//     return TabBarPage();
//     // return MaterialApp(
//     //   home: Scaffold(
//     //       body: SingleChildScrollView(
//     //         child: Column(
//     //           children: [
//     //             Form(
//     //               key: _formKey,
//     //               child: Padding(
//     //                 padding: EdgeInsets.all(15),
//     //                 child: Column(
//     //                   children: [
//     //                     TextFormField(
//     //                       validator: (value){
//     //                         if(value==null){
//     //                           return 'please enter destination';
//     //                         }
//     //                         return null;
//     //                       },
//     //                       decoration:  const InputDecoration(
//     //                         hintText: 'Enter Destination',
//     //                         prefixIcon: Align(
//     //                           widthFactor: 3,
//     //                           heightFactor: 2,
//     //                           child: Icon(
//     //                             Icons.search,
//     //                           ),
//     //                         ),
//     //                         border: OutlineInputBorder(
//     //                           borderSide: BorderSide(
//     //                             color: Colors.red,
//     //                             width: 5.0
//     //                           )
//     //                         ),
//     //                       ),
//     //                     ),
//     //
//     //                     TextFormField(
//     //                       validator: (value){
//     //                         if(value==null){
//     //                           return 'please enter date';
//     //                         }
//     //                         return null;
//     //                       },
//     //                       controller: _date,
//     //                       decoration:  const InputDecoration(
//     //                         hintText: 'Enter date',
//     //                         prefixIcon: Align(
//     //                           widthFactor: 3,
//     //                           heightFactor: 2,
//     //                           child: Icon(
//     //                             Icons.calendar_month_outlined,
//     //                           ),
//     //                         ),
//     //                         border: OutlineInputBorder(
//     //                             borderSide: BorderSide(
//     //                                 color: Colors.red,
//     //                                 width: 10.0
//     //                             )
//     //                         ),
//     //                       ),
//     //                      readOnly: true,
//     //                       onTap: (){
//     //                         _selectDate();
//     //                       },
//     //                     ),
//     //
//     //                     TextFormField(
//     //                       validator: (value){
//     //                         if(value==null){
//     //                           return 'please enter something';
//     //                         }
//     //                         return null;
//     //                       },
//     //                       decoration:  const InputDecoration(
//     //                         hintText: 'Enter persons',
//     //                         prefixIcon: Align(
//     //                           widthFactor: 3,
//     //                           heightFactor: 2,
//     //                           child: Icon(
//     //                             Icons.person,
//     //                           ),
//     //                         ),
//     //                         border: OutlineInputBorder(
//     //                             borderSide: BorderSide(
//     //                                 color: Colors.red,
//     //                                 width: 5.0,
//     //                             )
//     //                         ),
//     //                       ),
//     //
//     //                     ),
//     //                     SizedBox(
//     //                       width: double.infinity,
//     //                       height: 50.0,
//     //                       child: ElevatedButton(
//     //                         onPressed: (){},
//     //                         style: ButtonStyle(
//     //                           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//     //                               const RoundedRectangleBorder(
//     //                                   borderRadius: BorderRadius.zero,
//     //                                   side: BorderSide(color: Colors.blueGrey)
//     //                               )
//     //                         ),
//     //                       ),
//     //                         child: const Text('Search'),
//     //                     ),),
//     //                   ],
//     //                 ),
//     //               ),
//     //             ),
//     //             const SizedBox(height: 25,),
//     //              const Text(
//     //                  "Get rooms at your desired price",
//     //                style: TextStyle(
//     //                  fontSize: 20,
//     //                  fontWeight: FontWeight.bold,
//     //                ),
//     //              ),
//     //             Container(
//     //               height: 140,
//     //               child: ListView(
//     //                 scrollDirection: Axis.horizontal,
//     //                 children: [
//     //                   Container(
//     //                     width: 170,
//     //                     margin: EdgeInsets.all(10),
//     //                     color: Colors.blueAccent,
//     //                     child: Padding(
//     //                       padding: const EdgeInsets.all(8.0),
//     //                       child: RichText(
//     //                         text:const TextSpan(
//     //                             text: "Welcome again, ",
//     //                             style: TextStyle(
//     //                               fontSize: 16,
//     //                               fontWeight: FontWeight.bold,
//     //                             ),
//     //                             children: [
//     //                               TextSpan(
//     //                                   text: 'Bashyal, you have won 10 points in our loyalty program',
//     //                                   style: TextStyle(
//     //                                     fontSize: 15,
//     //                                     fontWeight: FontWeight.normal,
//     //                                   )
//     //                               )
//     //                             ]
//     //                         ),
//     //                       ),
//     //                     ),
//     //                   ),
//     //                   Container(
//     //                     width: 170,
//     //                     margin: EdgeInsets.all(10),
//     //                     color: Colors.blue,
//     //                     child: Padding(
//     //                       padding: const EdgeInsets.all(8.0),
//     //                       child: RichText(
//     //                         text:const TextSpan(
//     //                             text: "10% discounts ",
//     //                             style: TextStyle(
//     //                               fontSize: 16,
//     //                               fontWeight: FontWeight.bold,
//     //                             ),
//     //                             children: [
//     //                               TextSpan(
//     //                                   text: 'You will get 10% off on your rooms',
//     //                                   style: TextStyle(
//     //                                     fontSize: 15,
//     //                                     fontWeight: FontWeight.normal,
//     //                                   )
//     //                               )
//     //                             ]
//     //                         ),
//     //                       ),
//     //                     ),
//     //                   ),
//     //                   Container(
//     //                     width: 170,
//     //                     margin: EdgeInsets.all(10),
//     //                     color: Colors.blue,
//     //                     child: Padding(
//     //                       padding: const EdgeInsets.all(8.0),
//     //                       child: RichText(
//     //                         text:const TextSpan(
//     //                             text: "20% discount",
//     //                             style: TextStyle(
//     //                               fontSize: 16,
//     //                               fontWeight: FontWeight.bold,
//     //                             ),
//     //                             children: [
//     //                               TextSpan(
//     //                                   text: 'You will get 20% off on your car rental',
//     //                                   style: TextStyle(
//     //                                     fontSize: 15,
//     //                                     fontWeight: FontWeight.normal,
//     //                                   )
//     //                               )
//     //                             ]
//     //                         ),
//     //                       ),
//     //                     ),
//     //                   ),
//     //
//     //                 ]
//     //
//     //               ),
//     //             ),
//     //             SizedBox(height: 5,),
//     //             Container(
//     //               width: double.infinity,
//     //               margin: EdgeInsets.all(10),
//     //               height: 40,
//     //               color: Colors.blueGrey,
//     //               child: Align(
//     //                 alignment: Alignment.center,
//     //                 child: const Text(
//     //                   "Recommended Hotels",
//     //                   style: TextStyle(
//     //                     fontSize: 20,
//     //                     fontWeight: FontWeight.bold,
//     //                     color: Colors.white
//     //                   ),
//     //                 ),
//     //               ),
//     //             ),
//     //                 Padding(
//     //                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//     //                   child: Container(
//     //                     width: double.infinity,
//     //                     child: Row(
//     //                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//     //                       children: [
//     //                         Container(
//     //                           height: 220,
//     //                           width: 200,
//     //                           color: Colors.lightBlue,
//     //                           child: Column(
//     //                             children: [
//     //                               SizedBox(
//     //                                 height:170,
//     //                                 child: FittedBox(
//     //                                   child: Image.asset("assets/images/haha.jpeg"),
//     //                                   fit: BoxFit.fill,
//     //                                 )
//     //                               ),
//     //
//     //                               Container(
//     //                                 height: 50,
//     //                                 width: double.infinity,
//     //                                 color: Colors.white54,
//     //                                 child: Padding(
//     //                                   padding: const EdgeInsets.all(3.0),
//     //                                   child: Column(
//     //                                     children: [
//     //                                       Text("Canvas Hotel",style: TextStyle(fontWeight: FontWeight.bold),),
//     //                                       Row(
//     //                                         children: [
//     //                                           Icon(Icons.location_on,color: Colors.blue,),
//     //                                           Padding(
//     //                                             padding: const EdgeInsets.all(2.0),
//     //                                             child: Text("Pipalbot, Dillibazar"),
//     //                                           )
//     //                                         ],
//     //                                       ),
//     //                                     ],
//     //                                   ),
//     //                                 ),
//     //                               )
//     //                             ],
//     //                           ),
//     //                         ),
//     //                         Container(
//     //                           height: 220,
//     //                           width: 200,
//     //                           color: Colors.lightBlue,
//     //                           child: Column(
//     //                             children: [
//     //                               SizedBox(
//     //                                   height:170,
//     //                                   child: FittedBox(
//     //                                     child: Image.asset("assets/images/haha.jpeg"),
//     //                                     fit: BoxFit.fill,
//     //                                   )
//     //                               ),
//     //
//     //                               Container(
//     //                                 height: 50,
//     //                                 width: double.infinity,
//     //                                 color: Colors.white54,
//     //                                 child: Padding(
//     //                                   padding: const EdgeInsets.all(3.0),
//     //                                   child: Column(
//     //                                     children: [
//     //                                       Text("Canvas Hotel",style: TextStyle(fontWeight: FontWeight.bold),),
//     //                                       Row(
//     //                                         children: [
//     //                                           Icon(Icons.location_on,color: Colors.blue,),
//     //                                           Padding(
//     //                                             padding: const EdgeInsets.all(2.0),
//     //                                             child: Text("Pipalbot, Dillibazar"),
//     //                                           )
//     //                                         ],
//     //                                       ),
//     //                                     ],
//     //                                   ),
//     //                                 ),
//     //                               )
//     //                             ],
//     //                           ),
//     //                         ),
//     //                       ],
//     //                     ),
//     //                   ),
//     //                 ),
//     //             SizedBox(height: 12.0,),
//     //             Padding(
//     //               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//     //               child: Container(
//     //                 width: double.infinity,
//     //                 child: Row(
//     //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//     //                   children: [
//     //                     Container(
//     //                       height: 220,
//     //                       width: 200,
//     //                       color: Colors.lightBlue,
//     //                       child: Column(
//     //                         children: [
//     //                           SizedBox(
//     //                               height:170,
//     //                               child: FittedBox(
//     //                                 child: Image.asset("assets/images/haha.jpeg"),
//     //                                 fit: BoxFit.fill,
//     //                               )
//     //                           ),
//     //
//     //                           Container(
//     //                             height: 50,
//     //                             width: double.infinity,
//     //                             color: Colors.white54,
//     //                             child: Padding(
//     //                               padding: const EdgeInsets.all(3.0),
//     //                               child: Column(
//     //                                 children: [
//     //                                   Text("Canvas Hotel",style: TextStyle(fontWeight: FontWeight.bold),),
//     //                                   Row(
//     //                                     children: [
//     //                                       Icon(Icons.location_on,color: Colors.blue,),
//     //                                       Padding(
//     //                                         padding: const EdgeInsets.all(2.0),
//     //                                         child: Text("Pipalbot, Dillibazar"),
//     //                                       )
//     //                                     ],
//     //                                   ),
//     //                                 ],
//     //                               ),
//     //                             ),
//     //                           )
//     //                         ],
//     //                       ),
//     //                     ),
//     //                     Container(
//     //                       height: 220,
//     //                       width: 200,
//     //                       color: Colors.lightBlue,
//     //                       child: Column(
//     //                         children: [
//     //                           SizedBox(
//     //                               height:170,
//     //                               child: FittedBox(
//     //                                 child: Image.asset("assets/images/haha.jpeg"),
//     //                                 fit: BoxFit.fill,
//     //                               )
//     //                           ),
//     //
//     //                           Container(
//     //                             height: 50,
//     //                             width: double.infinity,
//     //                             color: Colors.white54,
//     //                             child: Padding(
//     //                               padding: const EdgeInsets.all(3.0),
//     //                               child: Column(
//     //                                 children: [
//     //                                   Text("Canvas Hotel",style: TextStyle(fontWeight: FontWeight.bold),),
//     //                                   Row(
//     //                                     children: [
//     //                                       Icon(Icons.location_on,color: Colors.blue,),
//     //                                       Padding(
//     //                                         padding: const EdgeInsets.all(2.0),
//     //                                         child: Text("Pipalbot, Dillibazar"),
//     //                                       )
//     //                                     ],
//     //                                   ),
//     //                                 ],
//     //                               ),
//     //                             ),
//     //                           )
//     //                         ],
//     //                       ),
//     //                     ),
//     //                   ],
//     //                 ),
//     //               ),
//     //             ),
//     //
//     //
//     //           ],
//     //         ),
//     //       ),
//     //
//     //   ),
//     // );
//   }
// }
