import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
class Profile extends StatefulWidget{
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin{
  TabController _tabController;
  ScrollController _scrollController;

@override
void initState(){
super.initState();
_tabController = TabController(vsync: this,length: 2);
_scrollController = ScrollController();

}
@override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(),
      body: RefreshIndicator(
        onRefresh: (){},
          child: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder: (BuildContext context, bool IsScrolled){
            return <Widget>[
              SliverToBoxAdapter(child: userInfo()),
              SliverPersistentHeader(
                delegate: CustomSliverDelegate(_tabController),
                pinned: true,
                floating: true,
              )
            ];
            },
            body: TabBarView(
              controller: _tabController,
              children: <Widget>[
                 postGridView(),
                                 
                               ],
                             ),
                           )
                          
                             ),
                             );
                         }
                 
                         Widget appBar(){
                           return AppBar(
                             elevation: 0,
                             backgroundColor: Colors.grey[50],
                             title: Row(
                               children : <Widget>[
                                 Text(
                                   'STYLISH',
                                     style: TextStyle(
                                       fontFamily: 'Microsoft PhagsPa',
                                       fontSize: 11,
                                       color: const Color(0xff262627),
                                       fontWeight: FontWeight.w700,
                                     ),
                                     textAlign: TextAlign.left,
                                 ), 
                                 SizedBox(width: 4.0),
                                 Icon(Icons.keyboard_arrow_down,size: 18.0,),
                                 
                               ],
                             ),
                               actions: <Widget>[
                         Icon(Icons.menu),
                         SizedBox(width: 16.0),
                       ],
                           );
                         }
                         Widget userInfo(){
                           Widget stats(String statName, int statCount){
                            return Column(
                              children : <Widget>[
                                Text(
                                  statCount.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(statName),
                              ],
                            );
                           }
                           return Container(
                             decoration: BoxDecoration(
                               color:Colors.grey[50],
                               border: Border(bottom: BorderSide(
                                 color: Colors.black26,
                                 width:0.5,
                               ),
                               ),
                               ),
                               child: Container(
                                 margin: EdgeInsets.only(left:16.0, top:16.0, right:16.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                         Row(
                                                children: <Widget> [
                                                 UserImage(),
                                                       Expanded(
                                                         child: Row(
                                                           crossAxisAlignment:CrossAxisAlignment.start ,
                                                           children:<Widget> [
                                                             stats('Posts', 1252),
                                                             stats('Followers',4),
                                                             stats('Following',256),
                                                             ],
                                                             ),
                                                             ),
                                    
                                                      ],
                                                      
                                                      
                                                      ),
                                            
                                    
                                                      SizedBox(height: 16.0,),
                                                      Text('Home Furniture',
                                                      style: TextStyle(
                                                        color:Colors.black,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                        
                                                        
                                                      ),
                                                      textAlign: TextAlign.left,
                                                      ),
                                                      SizedBox(height: 6,),
                                                      Text('Home accessories, some information about us',
                                                      style: TextStyle(color: Colors.grey,   fontFamily: 'Proxima Nova',
                                                      fontSize: 12,),
                                                       textAlign: TextAlign.left,
                                    
                                                      ),
                                                      Text('Contact us:',style: TextStyle(   fontFamily: 'Proxima Nova',
                                                      fontSize: 12,),),
                                                     Text('+925 987 952 2365',style: TextStyle(color: Color(0xff175ed4),fontFamily: 'Proxima Nova',
                                                      fontSize: 12,),),
                                                     Text('Chenni, india',style: TextStyle(
                                                       color: Colors.grey
                                                       ,fontFamily: 'Proxima Nova',
                                                      fontSize: 12,)
                                                      ),
                                                 
                                                 Container(
                                                   decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    border: Border.all(color:Colors.grey,width:0.5),
                                                    borderRadius: BorderRadius.circular(5.0),
                                    
                                                   ),
                                                   child: Padding(
                                                     padding: EdgeInsets.all(8.0),
                                                     child:Text(
                                                       'Add product',style: TextStyle(fontFamily:'Proxima Nova',
                                                       fontSize: 10, color: Color(0xe5606060), fontWeight: FontWeight.w600,
                                                        ),
                                                        textAlign: TextAlign.center,
                                                     ) ,
                                                     ),
                                                     ),
                                                      
                                                 Container(
                                                   decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    border: Border.all(color:Colors.grey,width:0.5),
                                                    borderRadius: BorderRadius.circular(5.0),
                                    
                                                   ),
                                                   child: Padding(
                                                     padding: EdgeInsets.all(8.0),
                                                     child:Text(
                                                       'Share',style: TextStyle(fontFamily:'Proxima Nova',
                                                       fontSize: 10, color: Color(0xe5606060), fontWeight: FontWeight.w600,
                                                        ),
                                                        textAlign: TextAlign.center,
                                                     ) ,
                                                     ),
                                                     ),
                                                     
                                                 Container(
                                                   decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    border: Border.all(color:Colors.grey,width:0.5),
                                                    borderRadius: BorderRadius.circular(5.0),
                                    
                                                   ),
                                                   child: Padding(
                                                     padding: EdgeInsets.all(8.0),
                                                     child:Text(
                                                       'Contact us',style: TextStyle(fontFamily:'Proxima Nova',
                                                       fontSize: 10, color: Color(0xe5606060), fontWeight: FontWeight.w600,
                                                        ),
                                                        textAlign: TextAlign.center,
                                                     ) ,
                                                     ),
                                                     ),
                 
                                                  
                                                      
                                                      
                                                      ],
                                                    
                                                  
                                                    ),
                 
                                                    
                                                  
                                                         
                                                  ) 
                                              );
                 
                                              
                      }
                 
            Widget postGridView() {
            return GridView.builder(
              itemCount: 50,
              padding: EdgeInsets.only(top: 4.0),
              shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 3.0,
                      crossAxisSpacing: 3.0,
                    ),
                   itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
               'assets/images/12.jpg', 
              ),
            ),
          ),
        );
      }, 
             );
                   }
                         }
                   
       class UserImage extends StatefulWidget{
  @override
  Widget build(BuildContext context) {
   return Stack(
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
               'assets/images/11.jpg',
              ),
   ),
          ),
        ),
           Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Container(
              height: 24.0,
              width: 24.0,
              margin: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ),
        ),
      ],
   );
  }

  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }

}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
TabController _tabController;
  CustomSliverDelegate(this._tabController);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
      // TODO: implement build
      throw UnimplementedError();
    }
  
    @override
    double get maxExtent => 50.0;
  
    @override
    double get minExtent => 50.0;
  
    @override
    bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
 