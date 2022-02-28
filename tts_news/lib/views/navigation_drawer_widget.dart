import 'package:flag/flag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tts_news/views/country_home.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          child: Material(
            color: Colors.white12,
            child: ListView(
              children: [
                SizedBox(height: 50,),
                buildHeader(),
                SizedBox(height: 30),
                buildMenuItem(
                    country: 'Argentina',
                    code: 'ar',
                    context: context
                ),
                buildMenuItem(
                    country: 'Australia',
                    code: 'au',
                    context: context
                ),
                buildMenuItem(
                    country: 'Austria',
                    code: 'at',
                    context: context
                ),
                buildMenuItem(
                    country: 'Belgium',
                    code: 'be',
                    context: context
                ),
                buildMenuItem(
                    country: 'Bulgaria',
                    code: 'bg',
                    context: context
                ),
                buildMenuItem(
                    country: 'Canada',
                    code: 'ca',
                    context: context
                ),
                buildMenuItem(
                    country: 'China',
                    code: 'cn',
                    context: context
                ),
                buildMenuItem(
                    country: 'Colombia',
                    code: 'co',
                    context: context
                ),
                buildMenuItem(
                    country: 'Cuba',
                    code: 'cu',
                    context: context
                ),
                buildMenuItem(
                    country: 'Czechia',
                    code: 'cz',
                    context: context
                ),
                buildMenuItem(
                    country: 'Egypt',
                    code: 'eg',
                    context: context
                ),
                buildMenuItem(
                    country: 'France',
                    code: 'fr',
                    context: context
                ),
                buildMenuItem(
                    country: 'Germany',
                    code: 'de',
                    context: context
                ),
                buildMenuItem(
                    country: 'Greece',
                    code: 'gr',
                    context: context
                ),
                buildMenuItem(
                    country: 'Hong Kong',
                    code: 'hk',
                    context: context
                ),
                buildMenuItem(
                    country: 'Hungary',
                    code: 'hu',
                    context: context
                ),
                buildMenuItem(
                    country: 'India',
                    code: 'in',
                    context: context
                ),
                buildMenuItem(
                    country: 'Indonesia',
                    code: 'id',
                    context: context
                ),
                buildMenuItem(
                    country: 'Ireland',
                    code: 'ie',
                    context: context
                ),
                buildMenuItem(
                    country: 'Italy',
                    code: 'it',
                    context: context
                ),
                buildMenuItem(
                    country: 'Japan',
                    code: 'jp',
                    context: context
                ),
                buildMenuItem(
                    country: 'Latvia',
                    code: 'lv',
                    context: context
                ),
                buildMenuItem(
                    country: 'Lithuania',
                    code: 'lt',
                    context: context
                ),
                buildMenuItem(
                    country: 'Malaysia',
                    code: 'my',
                    context: context
                ),
                buildMenuItem(
                    country: 'Mexico',
                    code: 'mx',
                    context: context
                ),
                buildMenuItem(
                    country: 'Morocco',
                    code: 'ma',
                    context: context
                ),
                buildMenuItem(
                    country: 'Netherlands',
                    code: 'nl',
                    context: context
                ),
                buildMenuItem(
                    country: 'New Zealand',
                    code: 'nz',
                    context: context
                ),
                buildMenuItem(
                    country: 'Nigeria',
                    code: 'ng',
                    context: context
                ),
                buildMenuItem(
                    country: 'Norway',
                    code: 'no',
                    context: context
                ),
                buildMenuItem(
                    country: 'Philippines',
                    code: 'ph',
                    context: context
                ),
                buildMenuItem(
                    country: 'Poland',
                    code: 'pl',
                    context: context
                ),
                buildMenuItem(
                    country: 'Portugal',
                    code: 'pt',
                    context: context
                ),
                buildMenuItem(
                    country: 'Romania',
                    code: 'ru',
                    context: context
                ),
                buildMenuItem(
                    country: 'Saudi Arabia',
                    code: 'sa',
                    context: context
                ),
                buildMenuItem(
                    country: 'Serbia',
                    code: 'rs',
                    context: context
                ),
                buildMenuItem(
                    country: 'Singapore',
                    code: 'sg',
                    context: context
                ),
                buildMenuItem(
                    country: 'Slovakia',
                    code: 'sk',
                    context: context
                ),
                buildMenuItem(
                    country: 'Slovenia',
                    code: 'si',
                    context: context
                ),
                buildMenuItem(
                    country: 'South Africa',
                    code: 'za',
                    context: context
                ),
                buildMenuItem(
                    country: 'South Korea',
                    code: 'kr',
                    context: context
                ),
                buildMenuItem(
                    country: 'Sweden',
                    code: 'se',
                    context: context
                ),
                buildMenuItem(
                    country: 'Switzerland',
                    code: 'ch',
                    context: context
                ),
                buildMenuItem(
                    country: 'Taiwan',
                    code: 'tw',
                    context: context
                ),
                buildMenuItem(
                    country: 'Thailand',
                    code: 'th',
                    context: context
                ),
                buildMenuItem(
                    country: 'Turkey',
                    code: 'tr',
                    context: context
                ),
                buildMenuItem(
                    country: 'Ukraine',
                    code: 'ua',
                    context: context
                ),
                buildMenuItem(
                    country: 'United Arab Emirates',
                    code: 'ae',
                    context: context
                ),
                buildMenuItem(
                    country: 'United Kingdom',
                    code: 'gb',
                    context: context
                ),
                buildMenuItem(
                    country: 'United States',
                    code: 'us',
                    context: context
                ),
                buildMenuItem(
                    country: 'Venezuela',
                    code: 've',
                    context: context
                ),
              ],
            ),
          ),
      ),
    );
  }
}

  Widget buildMenuItem({String country, String code, context}){

  return ListTile(
    hoverColor: Colors.lightBlue,
    leading: Flag(code, height: 30, width: 50, fit: BoxFit.fill,),
    title: Text(country, style: TextStyle( fontSize: 20, color: Colors.black54),),
    onTap: (){
      Navigator.pop(context);
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => CountryHome(code: code)));
    },
  );

  }

  Widget buildHeader(){
    return Row(
      children: [
        SizedBox(width: 24,),
        //FlutterLogo(size: 40,),
        Image(image: AssetImage('assets/logo.png'),height: 45, width: 45,),
        SizedBox(width: 10,),
        Text("tts-",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black87)),
        Text("News", style: TextStyle(fontSize: 30,color: Colors.blue, fontWeight: FontWeight.w500),)
      ],
    );
  }
