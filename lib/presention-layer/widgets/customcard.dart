import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/styles.dart';

class MatchCard extends StatefulWidget {
  const MatchCard({
    super.key,
    required this.width,
  });
  final double width;

  @override
  State<MatchCard> createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        height: 200,
        width: widget.width,
        decoration: BoxDecoration(
            color: Colors.purple[200], borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Center(child: Text('60:30')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ClubFlag(
                    imagepath: 'assets/images/juventus.png',
                  ),
                  Text(
                    '2-2',
                    style: setStyleText(24),
                  ),
                  const ClubFlag(imagepath: 'assets/images/bayren.png')
                ],
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ScoredPlayer(), ScoredPlayer()])
            ],
          ),
        ),
      ),
    );
  }
}

class ClubFlag extends StatelessWidget {
  const ClubFlag({
    super.key,
    required this.imagepath,
  });
  final String imagepath;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagepath,
      fit: BoxFit.contain,
      height: 80,
      width: 80,
    );
  }
}

class ScoredPlayer extends StatelessWidget {
  const ScoredPlayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      width: 100,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Center(
          child: Text(
            'chiesa',
            style: setStyleText(16),
          ),
        ),
      ),
    );
  }
}
