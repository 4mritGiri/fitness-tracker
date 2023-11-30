import 'dart:math';
import 'package:fitness/constants/colors.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Graph extends StatelessWidget {
  const Graph({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SizedBox(
        width: double.infinity,
        child: GraphArea(),
      ),
    );
  }
}

class GraphArea extends StatefulWidget {
  const GraphArea({super.key});

  @override
  State<GraphArea> createState() => _GraphAreaState();
}

class _GraphAreaState extends State<GraphArea>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        duration: const Duration(milliseconds: 2500), vsync: this);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  List<DataPoint> data = [
    DataPoint(day: 1, steps: Random().nextInt(1000)),
    DataPoint(day: 2, steps: Random().nextInt(1000)),
    DataPoint(day: 3, steps: Random().nextInt(1000)),
    DataPoint(day: 4, steps: Random().nextInt(1000)),
    DataPoint(day: 5, steps: Random().nextInt(1000)),
    DataPoint(day: 6, steps: Random().nextInt(1000)),
    DataPoint(day: 7, steps: Random().nextInt(1000)),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _animationController.forward(from: 0.0);
      },
      child: CustomPaint(
        painter: GraphPainter(_animationController.view, data: data),
      ),
    );
  }
}

class GraphPainter extends CustomPainter {
  final List<DataPoint> data;
  final Animation<double> _size;
  final Animation<double> _dotSize;

  GraphPainter(Animation<double> animation, {required this.data})
      : _size = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: animation,
            curve: const Interval(
              0.0,
              .75,
              curve: Curves.easeInOutCubicEmphasized,
            ),
          ),
        ),
        _dotSize = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: animation,
            curve: const Interval(
              .5,
              1,
              curve: Curves.easeInOutCubicEmphasized,
            ),
          ),
        ),
        super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    var xSpacing = size.width / (data.length - 1);
    var maxSteps = data
        .fold<DataPoint>(
          data[0],
          (previousValue, current) =>
              previousValue.steps > current.steps ? previousValue : current,
        )
        .steps;

    var yRatio = size.height / maxSteps;

    var curveOffset = xSpacing * 0.3;

    List<Offset> offsets = [];

    var cx = 0.0;
    for (int i = 0; i < data.length; i++) {
      var y = size.height - (data[i].steps * yRatio * _size.value);

      offsets.add(Offset(cx, y));
      cx += xSpacing;
    }
    Paint linePaint = Paint()
      ..color = const Color(0xff30c3f9)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Paint fillPaint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(size.width / 2, 0),
        Offset(size.width / 2, size.height),
        [
          const Color(0xff30c3f9),
          Colors.white,
        ],
      )
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    Paint shadowPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 3.0)
      ..strokeWidth = 3.0;

    Paint dotOutlinePaint = Paint()
      ..color = secondaryColor.withAlpha(200)
      ..strokeWidth = 8;

    Paint dotCenter = Paint()
      ..color = primaryColor
      ..strokeWidth = 8;

    Path linePath = Path();

    Offset cOffeset = offsets[0];

    linePath.moveTo(cOffeset.dx, cOffeset.dy);

    for (int i = 1; i < offsets.length; i++) {
      var x = offsets[i].dx;
      var y = offsets[i].dy;
      var c1x = cOffeset.dx + curveOffset;
      var c1y = cOffeset.dy;
      var c2x = x - curveOffset;
      var c2y = y;

      linePath.cubicTo(c1x, c1y, c2x, c2y, x, y);
      cOffeset = offsets[i];
    }

    Path fillPath = Path.from(linePath);
    fillPath.lineTo(size.width, size.height);
    fillPath.lineTo(0, size.height);

    canvas.drawPath(fillPath, fillPaint);
    canvas.drawPath(linePath, shadowPaint);
    canvas.drawPath(linePath, linePaint);

    canvas.drawCircle(offsets[4], 15 * _dotSize.value, dotOutlinePaint);
    canvas.drawCircle(offsets[4], 6 * _dotSize.value, dotCenter);
  }

  @override
  bool shouldRepaint(covariant GraphPainter oldDelegate) =>
      data != oldDelegate.data;
}

class DataPoint {
  final int day;
  final int steps;

  const DataPoint({required this.day, required this.steps});
}
