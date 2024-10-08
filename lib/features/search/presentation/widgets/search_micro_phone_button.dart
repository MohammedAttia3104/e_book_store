import 'package:e_book_store/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

import '../../../../generated/assets.dart';

class SearchMicroPhoneButton extends StatefulWidget {
  final TextEditingController searchController;
  final ValueChanged<bool> onListeningChanged;
  final VoidCallback onStopListening;

  const SearchMicroPhoneButton({
    super.key,
    required this.searchController,
    required this.onListeningChanged,
    required this.onStopListening,
  });

  @override
  _SearchMicroPhoneButtonState createState() => _SearchMicroPhoneButtonState();
}

class _SearchMicroPhoneButtonState extends State<SearchMicroPhoneButton> {
  late stt.SpeechToText _speech;
  bool _isListening = false;
  Color _iconColor = Colors.grey;

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  void _startListening() async {
    bool available = await _speech.initialize(
      onStatus: (val) => _onSpeechStatus(val),
      onError: (val) => print('onError: $val'),
    );
    if (available) {
      setState(() {
        _isListening = true;
        _iconColor = AppColors.mainBlue;
      });
      widget.onListeningChanged(true);
      FocusScope.of(context).unfocus();
      widget.searchController.clear();
      _speech.listen(
        onResult: (val) => setState(() {
          widget.searchController.text = val.recognizedWords;
        }),
        onSoundLevelChange: (level) => print('Sound level: $level'),
        listenFor: const Duration(seconds: 10),
        pauseFor: const Duration(seconds: 5),
        partialResults: true,
        localeId: "en_US",
        onDevice: true,
        cancelOnError: true,
        listenMode: stt.ListenMode.confirmation,
      );
    }
  }

  void _onSpeechStatus(String status) {
    if (status == 'done') {
      _stopListening();
      widget.onStopListening();
    }
  }

  void _stopListening() {
    setState(() {
      _isListening = false;
      _iconColor = Colors.grey;
    });
    widget.onListeningChanged(false);
    _speech.stop();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _isListening ? _stopListening : _startListening,
      child: Container(
        height: 30.h,
        width: 30.w,
        margin: const EdgeInsets.all(4).h,
        child: SvgPicture.asset(
          Assets.svgsMicrophone,
          color: _iconColor,
        ),
      ),
    );
  }
}
