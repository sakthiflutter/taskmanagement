import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../utils/app_colores.dart';
import 'dashboard.dart';

class Projectdetail extends StatefulWidget {
  const Projectdetail({super.key});

  @override
  State<Projectdetail> createState() => _ProjectdetailState();
}

class _ProjectdetailState extends State<Projectdetail> {
  List<String> process=['All','Ongoing','Completed'];

  @override
  Widget build(BuildContext context) {
    var  mheight=MediaQuery.of(context).size.height;
    var  mwidth=MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: ClipOval(
                        child: Image.asset("assets/profileimage.jpg",fit: BoxFit.cover,),
                      ),
                    ),
                    const Icon(Icons.search,size: 30,)

                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Project',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              ),
              SizedBox(
                height: mheight*0.07,
                width: mwidth*0.9,
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 95,
                      decoration: BoxDecoration(
                        color:index==0? AppColors.appcolour1:AppColors.shadeColor1,
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Text(process[index],style: TextStyle(fontSize: 15,color: index==0? AppColors.shadeColor1:Colors.black),),
                    ),
                  );
                }),
              ),
              const SizedBox(
                height: 10,
              ),
             SizedBox(
               height: mheight*0.587,
               child: ListView.builder(

                 itemCount: 4,

                   itemBuilder: (context,index){
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: InkWell(
                     onTap: (){
                       Get.to(const Dashboardscreen(),transition: Transition.leftToRight);
                     },
                     child: Container(
                       height: 150,

                       decoration: BoxDecoration(
                         color: const Color(0xFFEBEDF9),
                         borderRadius: BorderRadius.circular(20),

                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           SizedBox(
                             height: 150,
                             width: 208,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("App Animation",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  const Text('Today, Shared by-UnBox Digital',style: TextStyle(color: AppColors.textcolour2,fontSize: 11),),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text('Team',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: SizedBox(

                                      height: 20,
                                      width: 70,

                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Positioned(
                                            left:2,


                                            child:  SizedBox(
                                              height: 20,
                                              width: 20,
                                              child: ClipOval(
                                                child: Image.asset("assets/profile2.jpg",fit: BoxFit.cover,),
                                              ),
                                            ),),
                                          Positioned(
                                            left:15,


                                            child:  SizedBox(
                                              height: 20,
                                              width: 20,
                                              child: ClipOval(
                                                child: Image.asset("assets/profile2.jpg",fit: BoxFit.cover,),
                                              ),
                                            ),),
                                          Positioned(
                                            left:26,


                                            child:  SizedBox(
                                              height: 20,
                                              width: 20,
                                              child: ClipOval(
                                                child: Image.asset("assets/profileimage.jpg",fit: BoxFit.cover,),
                                              ),
                                            ),),
                                          Positioned(
                                            left:36,


                                            child:  SizedBox(
                                              height: 20,
                                              width: 20,
                                              child: ClipOval(
                                                child: Image.asset("assets/profile2.jpg",fit: BoxFit.cover,),
                                              ),
                                            ),),
                                          Positioned(
                                            left:36,


                                            child:  Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFF0BD7B),
                                                borderRadius: BorderRadius.circular(16)
                                              ),

                                              height: 20,
                                              width: 20,
                                              child: const Icon(Icons.add,color: AppColors.shadeColor1,size: 15,),
                                            ),),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: const [
                                        Icon(Icons.calendar_month,color: AppColors.textcolour2,size: 15,),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("June 15,2021 - June 15,2032",style: TextStyle(fontSize: 12,color: AppColors.textcolour2),)
                                      ],
                                    ),
                                  )


                                ],
                              ),
                            ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: CircularPercentIndicator(
                               radius:40.0,
                               lineWidth: 8.0,
                               animation: true,
                               animationDuration: 3000,
                               percent: 0.7,
                               animateFromLastPercent: true,
                               center: const Text(
                                 "70%",
                                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                               ),

                               circularStrokeCap: CircularStrokeCap.round,
                               progressColor: AppColors.appcolour1,

                             ),
                           )
                         ],
                       ),

                     ),
                   ),
                 );
               }),
             )
            ],
          ),
        ),
      ),

    );
  }
}
