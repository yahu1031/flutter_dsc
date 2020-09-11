import 'package:flutter/material.dart';
import 'package:flutter_dsc/Components/Responsive/sizeConfig.dart';
import 'package:flutter_dsc/Components/constants.dart';
import 'package:flutter_dsc/utility/api_json_grabber.dart';
import 'package:flutter_dsc/components/widgets/app_drawer.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  // Home Screen ID for route
  static const screenId = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: AppDrawer(),
        body: Center(
          child: Container(
            child: FutureBuilder(
              future: ApiJsonGrabber(url: Assets.apiString).getData(),
              builder: (context, data) {
                if (data.hasData) {
                  // grab the 'event_titles' data from the asyncdata
                  var dataList = data.data['event_titles'];
                  return ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, int) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical:10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 5,
                          margin: CustomPadding.cardMargin,
                          child: Padding(
                            padding: CustomPadding.cardPadding,
                            child: Center(
                              child: Text(
                                dataList[int],
                                textAlign: TextAlign.center,
                                style: cardTextStyle,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: dataList.length,
                  );
                }
                else if(data.hasError){
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset(
                          Assets.searching,
                          width: 50*SizeConfig.widthMultiplier,
                        ),
                        SizedBox(height: 10*SizeConfig.heightMultiplier,),
                        Text(
                          Strings.searching,
                          style: cardTextStyle,
                        ),
                      ],
                    ),
                  );
                } 
                else {
                  return Center(
                    child: Lottie.asset(
                      Assets.loading,
                      width: 50*SizeConfig.widthMultiplier,
                      repeat: true,
                    ),
                  ); 
                }
                
              },
            ),
          ),
        ),
      ),
    );
  }
}
