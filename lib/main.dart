import 'package:flutter/material.dart';

void main() {
  runApp(const pointsCounter());
}
class pointsCounter extends StatefulWidget{
  const pointsCounter ({Key? key}):super(key: key);

  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int teamA=0;
  int teamB=0;
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const  Color(0xFF7573B6),
          title: const Text ('Points Counter',
          style: TextStyle(
            color:Color(0xFFAC87C5),
          ),),
        ),
      
  

      
        body:Container(
          color:const  Color(0xFF7573B6),
          child: Column(
            
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
        
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 40,
                          color:Color(0xFFAC87C5),
                        ),
                      ),
                        Text(
                        '$teamA',
                        style: const TextStyle(
                          fontSize: 40,
                          color:Color(0xFFAC87C5),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:  Color(0xFFE0AED0),
                          minimumSize:const Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamA++;
                          });
                        }, 
                        child:const Text(
                          'Add 1 points',
                          style: TextStyle(
                            color:Color(0xFFAC87C5),
                            fontSize: 20,
                          ),
                        ),),
        
                          const SizedBox(
                          height: 18,
                        ),
        
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFE0AED0),
                          minimumSize:const Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamA+=2;
                          });
                        }, child:const Text(
                          'Add 3 points',
                          style: TextStyle(
                            fontSize: 20,
                            color:Color(0xFFAC87C5),
                          ),
                        ),),
        
                        const SizedBox(
                          height: 18,
                        ),
        
                        ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFE0AED0),
                          minimumSize:const Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamA+=3;
                          });
                        }, child:const Text(
                          'Add 2 points',
                          style: TextStyle(
                            fontSize: 20,
                          color:Color(0xFFAC87C5),
        
                          ),
                        ),),
                    ],),
        
        const SizedBox(
          height:350,
          child:VerticalDivider(
            color: Colors.white70,
            thickness: 1,
          ),),
                    
                    Column(
                      children: [
                        const Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 40,
                              color:Color(0xFFAC87C5),
                            ),
                          ),
                      
                        Text(
                        '$teamB',
                        style:const TextStyle(
                          fontSize: 40,
                          color:Color(0xFFAC87C5),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFE0AED0),
                          minimumSize:const Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamB++;
                          });
                        }, child:const Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 20,
                            color:Color(0xFFAC87C5),
                          ),
                        ),),
        
                          const SizedBox(
                          height: 18,
                        ),
        
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: Color(0xFFE0AED0),
                        minimumSize: const Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamB+=2;
                          });
                        }, 
                        child: const Text(
                          'Add 2 point',
                          style:TextStyle(
                            fontSize: 20,
                          color:Color(0xFFAC87C5),
                          ),
                        ),),
         
                        const SizedBox(
                          height: 18,
                        ),
         
                         ElevatedButton(
                        style: ElevatedButton.styleFrom(
                           primary: Color(0xFFE0AED0),
                          minimumSize:const Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamB+=3;
                          });
                        }, child:const Text(
                          'Add 3 point',
                          style: TextStyle(
                            fontSize: 20,
                          color:Color(0xFFAC87C5),
                          ),
                        ),),
                        ],
                    ),
            
              ]),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFE0AED0),
                  minimumSize:const Size(150, 50),
                    ),
                
                onPressed:() {
                  setState(() {
                    teamA=0;
                    teamB=0;
                  });
                },

                child: const Text(
                'Reset',
                style: TextStyle(
                  color:Color(0xFFAC87C5),
                  fontSize: 20,
                ),
              )
              ),
              const Spacer(),

            ],
          ),
        ),)
    );
  }
}