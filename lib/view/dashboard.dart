import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:thiranuitasksakthi/utils/app_colores.dart';

class Dashboardscreen extends StatefulWidget {
  const Dashboardscreen({super.key});

  @override
  State<Dashboardscreen> createState() => _DashboardscreenState();
}

class _DashboardscreenState extends State<Dashboardscreen> {
  @override
  Widget build(BuildContext context) {

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
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 50,
                      width: 25,
                      child: Icon(Icons.arrow_back_ios,color: AppColors.textcolour2,size: 20,),
                    ),
                    Icon(Icons.more_vert,size: 20,color:AppColors.textcolour2)

                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text("Dashboard Design",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Today Shared by-Unbox Digital',style: TextStyle(color: AppColors.textcolour2,fontSize: 12),),
              ),
              SizedBox(
                height: 150,

                width: mwidth*0.9,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularPercentIndicator(
                        radius:50.0,
                        lineWidth: 9.0,
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
                    ),
                    SizedBox(
                      width: mwidth*0.56,

                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Team",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(

                                height: 30,
                                width: 120,

                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Positioned(
                                      left:2,


                                      child:  SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: ClipOval(
                                          child: Image.asset("assets/profile2.jpg",fit: BoxFit.cover,),
                                        ),
                                      ),),
                                    Positioned(
                                      left:27,


                                      child:  SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: ClipOval(
                                          child: Image.asset("assets/profile2.jpg",fit: BoxFit.cover,),
                                        ),
                                      ),),
                                    Positioned(
                                      left:45,


                                      child:  SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: ClipOval(
                                          child: Image.asset("assets/profileimage.jpg",fit: BoxFit.cover,),
                                        ),
                                      ),),
                                    Positioned(
                                      left:59,


                                      child:  SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: ClipOval(
                                          child: Image.asset("assets/profile2.jpg",fit: BoxFit.cover,),
                                        ),
                                      ),),
                                    Positioned(
                                      left:70,


                                      child:  Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: const Color(0xFFF0BD7B),
                                            borderRadius: BorderRadius.circular(26)
                                        ),

                                        height: 30,
                                        width: 30,
                                        child: const Icon(Icons.add,color: AppColors.shadeColor1,size: 30,),
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Deadline",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),),
                            ),
                            const Text("June 15,2021 - June 15,2032",style: TextStyle(fontSize: 12,color: AppColors.textcolour2),),
                            const SizedBox(
                              height: 5,
                            ),


                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Project Progress",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              const SizedBox(
                height: 10,
              ),
              Padding(padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Row(
                      children: [

                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                              color: AppColors.appcolour1,
                          ),
                          child: const Icon(Icons.offline_pin_outlined,color: Colors.white,size: 20,),
                          
                          
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("Creat user flow")
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.appcolour1,
                          ),
                          child: const Icon(Icons.offline_pin_outlined,color: Colors.white,size: 20,),


                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("Creat Whiteframe")
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.textcolour2,
                          ),



                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("Transform to vitual design")
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Project Overview",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),



            ],
          ),
        ),
      ),
    );
  }
}
