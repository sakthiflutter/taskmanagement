
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    var  mheight=MediaQuery.of(context).size.height;
    var  mwidth=MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: 20,
                // ),
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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Hello',style: TextStyle(color: Colors.grey),),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0,bottom: 8.0),
                  child: Text('Alex Marconi',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: mheight*0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFFFC271),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.access_time_rounded,color: Colors.white,),
                          Text("In Progress",style: TextStyle(color: Colors.white),)
                        ],
                      ),



                    ),
                    const SizedBox(
                      width: 5,)
                    ,
                    Container(
                      height: 100,
                      width: mheight*0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFF9297FF),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.repeat,color: Colors.white,),
                          Text("Ongoing",style: TextStyle(color: Colors.white),)
                        ],
                      ),



                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: mheight*0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFC3E992),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.note_add_rounded,color: Colors.white,),
                          Text("Completed",style: TextStyle(color: Colors.white),)
                        ],
                      ),



                    ),
                    const SizedBox(
                      width: 5,)
                    ,
                    Container(
                      height: 100,
                      width: mheight*0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFFF7B4E),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.note_add_rounded,color: Colors.white,),
                          Text("Cancel",style: TextStyle(color: Colors.white),)
                        ],
                      ),



                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Daily Task',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(

                  child: ListView.builder(
                    shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: mheight*0.1,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEBEDF9),
                              borderRadius: BorderRadius.circular(16)
                            ),
                            width: mwidth*0.9,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(Icons.offline_pin_outlined,color: Color(0xFFC3C3C3),),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('App Animation',style: TextStyle(fontWeight: FontWeight.w600),),
                                      ),

                              LinearPercentIndicator(
                                barRadius: const Radius.circular(16),
                                curve: Curves.linear,
                                width:mwidth*0.5,
                                animation: true,
                                lineHeight: 10,
                                animationDuration: 3000,
                                percent: 0.5,
                                animateFromLastPercent: true,

                                progressColor: const Color(0xFF9297FF),

                              ),
                                      const SizedBox(height: 10,),

                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: SizedBox(

                                      height: 50,
                                      width: 70,

                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Positioned(
                                            left:26,


                                            child:  SizedBox(
                                            height: 25,
                                            width: 25,
                                            child: ClipOval(
                                              child: Image.asset("assets/profile2.jpg",fit: BoxFit.cover,),
                                            ),
                                          ),),
                                          Positioned(
                                            left:16,


                                            child:  SizedBox(
                                              height: 25,
                                              width: 25,
                                              child: ClipOval(
                                                child: Image.asset("assets/profileimage.jpg",fit: BoxFit.cover,),
                                              ),
                                            ),),
                                          Positioned(
                                            left:2,


                                            child:  SizedBox(
                                              height: 25,
                                              width: 25,
                                              child: ClipOval(
                                                child: Image.asset("assets/profile2.jpg",fit: BoxFit.cover,),
                                              ),
                                            ),),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Icon(Icons.chevron_right,color: Color(0xFFC3C3C3),)

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
      ),
    );
  }
}
