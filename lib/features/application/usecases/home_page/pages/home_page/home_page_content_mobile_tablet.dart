import 'package:cybear_jinni_site/core/route_names.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/contact_us_popup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


/// Home page content for the mobile and tablet screen size
class HomePageContentMobileTablet extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      thickness: 13,
      controller: _scrollController,
      child: ListView(
        controller: _scrollController,
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                child: Image.network(
                  'https://i.ibb.co/2SwVLf3/House.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                borderRadius:
                                const BorderRadius.all(Radius.circular(20))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('CyBear Jinni',
                                style: TextStyle(fontSize: 59, color: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1
                                    .color),
                              ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(left: 204,
                                top: 0.5),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                borderRadius:
                                const BorderRadius.all(Radius.circular(20))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Smart Home',
                                style: TextStyle(fontSize: 21, color: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1
                                    .color,
                                    fontWeight: FontWeight.w700),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
          Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        textColor: Theme
                            .of(context)
                            .textTheme
                            .bodyText2
                            .color,
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return ContactUsPopup();
                            },
                          );
                        },
                        padding: const EdgeInsets.all(30),
                        color: Colors.black45,
                        hoverColor: Colors.black87,
                        child: SizedBox(
                          width: 320,
                          height: 370,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  const SizedBox(width: 25,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: <Widget>[
                                      FaIcon(FontAwesomeIcons.users,
                                        color: Theme
                                            .of(context)
                                            .
                                        textTheme
                                            .bodyText1
                                            .color, size: 30,),
                                      const SizedBox(height: 20),
                                      Text('For Customers', style: TextStyle(
                                          fontSize: 30, color: Theme
                                          .of(context)
                                          .textTheme
                                          .bodyText1
                                          .color),),
                                      const SizedBox(height: 5,),
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                .color,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10))),
                                        child: Text(
                                          'Enjoy',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),

                              const SizedBox(height: 30,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const FaIcon(FontAwesomeIcons.check,
                                    color: Colors.green, size: 15,),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    width: 280,
                                    child: Text(
                                      'Our electricians will install '
                                          'CyBear Jinni Smart Devices in your home.',
                                      style: TextStyle(
                                        fontSize: 20, color: Theme
                                          .of(context)
                                          .
                                      textTheme
                                          .bodyText2
                                          .color,),),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const FaIcon(FontAwesomeIcons.check,
                                    color: Colors.green, size: 15,),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    width: 280,
                                    child: Text(
                                      'Providing guidance on how to set the'
                                          ' smart devices and use the '
                                          'smartphone app to '
                                          'interact with them.',
                                      style: TextStyle(
                                        fontSize: 20, color: Theme
                                          .of(context)
                                          .
                                      textTheme
                                          .bodyText2
                                          .color,),),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const FaIcon(FontAwesomeIcons.check,
                                    color: Colors.green, size: 15,),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    width: 280,
                                    child: Text(
                                      'Get a long warranty and all of the'
                                      ' above for a fair price.',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText2
                                            .color,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      FlatButton(
                        textColor: Theme
                            .of(context)
                            .textTheme
                            .bodyText2
                            .color,
                        onPressed: () {
                          Navigator.pushNamed(
                              context, devicesRoute);
                        },
                        padding: const EdgeInsets.all(30),
                        color: Colors.black45,
                        hoverColor: Colors.black87,
                        child: SizedBox(
                          width: 320,
                          height: 370,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                  children: <Widget>[
                                    const SizedBox(width: 25,),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: <Widget>[
                                    FaIcon(
                                      FontAwesomeIcons.globe,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .color,
                                      size: 30,
                                    ),
                                    const SizedBox(height: 20),
                                    Text(
                                      'For Users',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .color),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .color,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Text(
                                        'Deploy',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),

                              const SizedBox(height: 30,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const FaIcon(FontAwesomeIcons.check,
                                    color: Colors.green, size: 15,),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    width: 280,
                                    child: Text(
                                      'Devices can be purchased online for '
                                          'self-installation in your home.',
                                      style: TextStyle(
                                        fontSize: 20, color: Theme
                                          .of(context)
                                          .
                                      textTheme
                                          .bodyText2
                                          .color,),),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const FaIcon(FontAwesomeIcons.check,
                                    color: Colors.green, size: 15,),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    width: 280,
                                    child: Text(
                                      'Instructions and videos of how to'
                                          ' deploy and set the system'
                                          ' yourself.',
                                      style: TextStyle(
                                        fontSize: 20, color: Theme
                                          .of(context)
                                          .
                                      textTheme
                                          .bodyText2
                                          .color,),),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Text('',
                                style: TextStyle(fontSize: 20, color: Theme
                                    .of(context)
                                    .
                                textTheme
                                    .bodyText2
                                    .color,),),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      FlatButton(
                        textColor: Theme
                            .of(context)
                            .textTheme
                            .bodyText2
                            .color,
                        onPressed: () async {
                          const String url = 'https://github.com/CyBear-Jinni';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        padding: const EdgeInsets.all(30),
                        color: Colors.black45,
                        hoverColor: Colors.black87,
                        child: SizedBox(
                          width: 320,
                          height: 370,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                  children: <Widget>[
                                    const SizedBox(width: 25,),

                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: <Widget>[
                                      FaIcon(
                                        FontAwesomeIcons.laptopCode,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            .color,
                                        size: 30,
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'For Developers',
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                .color),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                .color,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10))),
                                        child: Text(
                                          'Contribute',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ])
                              ]),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const FaIcon(
                                    FontAwesomeIcons.check,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 280,
                                    child: Text('Open source code and '
                                        'instructions for makers and tinkerers '
                                        'to build the system from scratch.',
                                      style: TextStyle(
                                        fontSize: 20, color: Theme
                                          .of(context)
                                          .
                                      textTheme
                                          .bodyText2
                                          .color,),),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const FaIcon(FontAwesomeIcons.check,
                                    color: Colors.green, size: 15,),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    width: 280,
                                    child: Text(
                                      'Opportunity to add support for '
                                          'the system to communicate with other smart'
                                          ' devices that are not supported yet.',
                                      style: TextStyle(
                                        fontSize: 20, color: Theme
                                          .of(context)
                                          .
                                      textTheme
                                          .bodyText2
                                            .color,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .color,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              FlatButton(
                textColor: Theme.of(context).textTheme.bodyText1.color,
                color: Colors.black38,
                height: 500.0,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    devicesRoute,
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                            'Click here for more details about our'
                            ' devices',
                            style: TextStyle(
                                fontSize: 30,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .color),
                            textAlign: TextAlign.center),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                    Container(),
                    Container(
                      alignment: Alignment.center,
                      child: Image.network(
                        'https://user-images.githubusercontent.com/9304740/97103272-19572d00-16b4-11eb-8e47-394ec18b3809.png',
                        height: 400.0,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.black26,
                height: 500,
                child: FlatButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () async {
                    const String url = 'https://snapcraft.io/cybear-jinni';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        height: 10,
                      ),
                      Text('CyBear Jinni Smart Devices Distribution',
                          style: TextStyle(
                              fontSize: 40,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
                          textAlign: TextAlign.center),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.7),
                                  BlendMode.dstATop),
                              image: const NetworkImage(
                                'https://user-images.githubusercontent.com/9304740/103142663-a6981b80-470f-11eb-9edb-407ac585038d.png',
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BottomNavigationMenu(),
            ],
          ),
          const SizedBox(height: 50,),
        ],
      ),
    );
  }
}