import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: CustomStatusBar(),
      ),
    ),
  );
}

class CustomStatusBar extends StatefulWidget {
  const CustomStatusBar({Key? key}) : super(key: key);

  @override
  _CustomStatusBarState createState() => _CustomStatusBarState();
}

class _CustomStatusBarState extends State<CustomStatusBar> {
  bool isLoggedIn1 = true;
  bool isLoggedIn2 = true;
  bool isLoggedIn3 = true;

  int _currentState = 0;

  void _changeState(int newState) {
    setState(() {
      _currentState = newState;
    });
  }

  void _login1() {
    setState(() {
      isLoggedIn1 = true;
    });
  }

  void _login2() {
    setState(() {
      isLoggedIn2 = true;
    });
  }

  void _login3() {
    setState(() {
      isLoggedIn3 = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      color: Colors.grey[200],
      child: CustomPaint(
        painter: LinePainter(_currentState, isLoggedIn1, isLoggedIn2, isLoggedIn3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStatusBarButton(0, Icons.login, 'Registration', isStart: true, loginMethod: _login1),
            _buildStatusBarButton(1, Icons.file_copy, 'In Progress', loginMethod: _login2),
            _buildStatusBarButton(2, Icons.logout, 'Pending', isEnd: true, loginMethod: _login3),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusBarButton(int state, IconData icon, String label,
      {bool isStart = false, bool isEnd = false, required VoidCallback loginMethod}) {
    return GestureDetector(
      onTap: () {
        _changeState(state);
        loginMethod();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isStart)
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isStart && isLoggedIn1 ? Colors.green : Colors.yellow,
              ),
              padding: EdgeInsets.all(10),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          if (!isStart && !isEnd)
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: !isStart && !isEnd && isLoggedIn2 ? Colors.green : Colors.yellow,
              ),
              padding: EdgeInsets.all(10),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          if (isEnd)
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isEnd && isLoggedIn3 ? Colors.green : Colors.yellow,
              ),
              padding: EdgeInsets.all(10),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isStart && isLoggedIn1
                  ? Colors.green
                  : !isStart && !isEnd && isLoggedIn2
                  ? Colors.green
                  : isEnd && isLoggedIn3
                  ? Colors.green
                  : Colors.yellow,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
class LinePainter extends CustomPainter {
  final int currentState;
  final bool isLoggedIn1;
  final bool isLoggedIn2;
  final bool isLoggedIn3;
  LinePainter(this.currentState, this.isLoggedIn1, this.isLoggedIn2, this.isLoggedIn3);
  @override
  void paint(Canvas canvas, Size size) {
    final Paint linePaint1 = Paint()
      ..color = (currentState == 0 && isLoggedIn1) ? Colors.green : Colors.yellow
      ..strokeWidth = 5.0;
    final Paint linePaint2 = Paint()
      ..color = (currentState == 0 && isLoggedIn2) ? Colors.green : Colors.yellow
      ..strokeWidth = 5.0;

    final double startX1 =  (size.width / 3) -50;
    final double startY1 = size.height / 2.5;
    final double endX1 = ((size.width / 3) * 2) -80;
    final double endY1 = size.height / 2.5;

    final double startX2 = ((size.width / 3) * 2) - 85;
    final double startY2 = size.height / 2.5;
    final double endX2 = (size.width - 20) - 105;
    final double endY2 = size.height / 2.5;

    canvas.drawLine(Offset(startX1, startY1), Offset(endX1, endY1), linePaint1);
    canvas.drawLine(Offset(startX2, startY2), Offset(endX2, endY2), linePaint2);

    if (currentState == 1 && isLoggedIn2) {
      final Paint progressPaint = Paint()
        ..color = Colors.green;
      final double progressX = (startX2 + endX2) / 2;
      final double progressY = startY2;
      canvas.drawCircle(Offset(progressX, progressY), 12, progressPaint);
    }
    if (currentState == 0 || currentState == 2) {
      final Paint circlePaint = Paint()
        ..color = (currentState == 0 && isLoggedIn1) || (currentState == 2 && isLoggedIn3) ? Colors.green : Colors.yellow;
      canvas.drawCircle(Offset(startX1, startY1), 12, circlePaint);
      canvas.drawCircle(Offset(endX1, endY1), 12, circlePaint);
      canvas.drawCircle(Offset(startX2, startY2), 12, circlePaint);
      canvas.drawCircle(Offset(endX2, endY2), 12, circlePaint);
    }
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

