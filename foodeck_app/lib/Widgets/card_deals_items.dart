import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodeck_app/Widgets/routes.dart';
import 'package:foodeck_app/providers/caddeal_provider.dart';
import 'package:provider/provider.dart';

class CadDealItem extends StatefulWidget {
  final String minutes;
  final String title;
  final String subtitle;
  final String rating;
  final String imageUrl;
  dynamic YoungTitle;
  CadDealItem({
    Key? key,
    required this.minutes,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.imageUrl,
    String? this.YoungTitle,
  }) : super(key: key);

  @override
  State<CadDealItem> createState() => _CadDealItemState();
}

class _CadDealItemState extends State<CadDealItem> {
  bool buttonState = true;

  void _buttonChange() {
    setState(() {
      buttonState = !buttonState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                Card(
                  elevation: 0,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width * 0.72,
                        child: Ink.image(
                          image: AssetImage(widget.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 17,
                        right: 15,
                        child: GestureDetector(
                          onTap: () {
                            if (buttonState == _buttonChange) {
                              print('its true');
                            } else {
                              print('notTrue');
                            }
                          },
                          child: SvgPicture.asset(
                            'assets/HeartStraight.svg',
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 11,
                          left: 12,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            child: Container(
                              width: 60,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  widget.minutes,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.72,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.title,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: SvgPicture.asset('assets/Star.svg'),
                        ),
                        Text(
                          '${widget.rating}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.72,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          widget.subtitle,
                          style: TextStyle(color: Color(0xff8E8E93)),
                        )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
