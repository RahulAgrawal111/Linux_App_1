import 'package:flutter/material.dart';

class Terminal extends StatefulWidget {
  @override
  _TerminalState createState() => _TerminalState();
}

class _TerminalState extends State<Terminal> {
 
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff57003f),
            Color(0xfff57453),
          ],
          begin: Alignment.bottomLeft,
          stops: [0,100],
        )
      ),
      child: Center(
        child: SizedBox(
          width:MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.85,
          child: Material(
            elevation: 5,
            clipBehavior: Clip.antiAlias,
            color: Color.fromRGBO(56, 4, 40, 0.9),
            type: MaterialType.canvas,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6),
              topRight: Radius.circular(6),
              bottomLeft: Radius.circular(6),
              bottomRight: Radius.circular(6),
            ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 30,
                  width:MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff504b45),
                      Color(0xff3c3b37),
                    ],
                    stops: [0, 100]
                    ),
                  ),
                 child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: <Widget>[
                    ToolbarButton(
                        gradient: LinearGradient(colors: [
                            Color(0xffeF6E4E),
                            Color(0xffE45828),
                          ],
                          stops: [0, 100]),
                        child: Icon(
                          Icons.arrow_back,
                          size: 12,
                          color: Colors.black38,
                        ),
                      ),
                      SizedBox(width: 4,),

                      Text(
                        "linux@command:-",
                        style: TextStyle(color: Color(0xffd5d0ce)),
                        )

                    ],
                  ),
                 ),
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      Text(
                        "Welcome to Linux Terminal!",
                        style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10,),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                     Text(
                        "linux@command:-",style: TextStyle(color: Color(0xff87d441)), 
                        ),
                    Expanded(
                    child: TextField(
                      autofocus: true,
                      showCursor: true,
                      cursorColor: Colors.white,
                      cursorWidth: 6,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration.collapsed(hintText: ""),
                      ),
                      )
                    ],
                  ),
                  
                  ],
                  )
                )
              ],
            ),
          ),
          ),
      ),
    );
  }
}

class ToolbarButton extends StatelessWidget {
  final LinearGradient gradient;
  final Widget child;

  const ToolbarButton({Key key, this.gradient, this.child}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
                        width: 15,
                        height: 15,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: gradient
                        ),
                        child: child
                        );
  }
}