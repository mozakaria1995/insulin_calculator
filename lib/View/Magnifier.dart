import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MagnifierWidget extends StatefulWidget {
Widget screenWidget;

MagnifierWidget(this.screenWidget);

  @override
  State<MagnifierWidget> createState() => _MagnifierWidgetState();
}

class _MagnifierWidgetState extends State<MagnifierWidget> {
  Offset? dragGesturePosition;
  bool isHoldingDown=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body: SingleChildScrollView(
          child: Stack(
              children:[
                GestureDetector(
                  onPanDown: (details) {
                    // Set a flag to indicate that the user is currently holding down on the screen
                    isHoldingDown = true;
                  },
                  onPanEnd: (details) {
                    setState(() {
                      dragGesturePosition = null;
                    });
                    // Reset the flag when the user stops holding down on the screen
                    isHoldingDown = false;
                  },

                  onPanUpdate: (details) {
                    // Update the dragGesturePosition only when the user is holding down on the screen
                    if (isHoldingDown) {
                      setState(() {
                        dragGesturePosition = details.localPosition;
                      });
                    }
                  },
                  child: widget.screenWidget
                ),
                if(dragGesturePosition!=null)
                  Positioned(
                    left: dragGesturePosition!.dx,
                    top: dragGesturePosition!.dy-150,
                    child:isHoldingDown ? Container(
                      width: 150,
                      height: 150,
                      child: RawMagnifier(
                        decoration: MagnifierDecoration(
                          shape: CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3),
                          ),
                        ),
                        size: Size(150, 150),
                        magnificationScale: 1.6,
                      ),
                    ):SizedBox(),
                  )
              ]
          ),
        )
    );
  }
}
