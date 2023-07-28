import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:audioplayers/audioplayers.dart';

class CallScreen extends StatefulWidget {
  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  bool _isCallInProgress = false;
  bool? _isMuted;
  bool? _isSpeakerOn;
  AudioPlayer _audioPlayer = AudioPlayer();

  void _startCall() async {
    const phoneNumber = '1234567890'; // Replace with the desired phone number

    bool? res = await FlutterPhoneDirectCaller.callNumber(phoneNumber);
    if (res != null && res) {
      setState(() {
        _isCallInProgress = true;
      });
    } else {
      // Handle call initiation failure
    }
  }

  void _endCall() {
    setState(() {
      _isCallInProgress = false;
      _isMuted = false;
      _isSpeakerOn = false;
    });
    // Implement logic to end the call if necessary
  }

  void _toggleMute() {
    setState(() {
      _isMuted = _isMuted != null ? !_isMuted! : true;
    });

    // Implement logic to mute/unmute the call audio using the FlutterTwilioVoice package or any other appropriate method
  }

  void _toggleSpeaker() {
    setState(() {
      _isSpeakerOn = _isSpeakerOn != null ? !_isSpeakerOn! : true;
    });

    // Implement logic to toggle the call audio output between the earpiece and speaker using the FlutterTwilioVoice package or any other appropriate method
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    // Implement logic for back button
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Color(0xff001833),
                ),
                Text(
                  '12:34 PM',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff324A59),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profilescreen');
                  },
                  icon: Icon(Icons.account_circle),
                  color: Color(0xff324A59),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Incoming Call',
              style: TextStyle(
                color: Color(0xff324A59),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '00:15',
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 35),
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('images/profillll.png'),
            ),
            SizedBox(height: 45.0),
            Text(
              'Leslie Sheeran',
              style: TextStyle(
                color: Color(0xff324A59),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 38.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: _toggleMute,
                      icon: Icon(
                        _isMuted != null && _isMuted! ? Icons.volume_off : Icons.volume_up,
                      ),
                      color: Color(0xff324A59),
                      iconSize: 32.0,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      _isMuted != null && _isMuted! ? 'Unmute' : 'Mute',
                      style: TextStyle(
                        color: Color(0xff324A59),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Implement logic for keyboard button
                      },
                      icon: Icon(Icons.keyboard),
                      color: Color(0xff324A59),
                      iconSize: 32.0,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Keyboard',
                      style: TextStyle(
                        color: Color(0xff324A59),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: _toggleSpeaker,
                      icon: Icon(
                        _isSpeakerOn != null && _isSpeakerOn! ? Icons.volume_up : Icons.volume_down,
                      ),
                      color: Color(0xff324A59),
                      iconSize: 32.0,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      _isSpeakerOn != null && _isSpeakerOn! ? 'Speaker Off' : 'Speaker On',
                      style: TextStyle(
                        color: Color(0xff324A59),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32.0),
            FloatingActionButton(
              onPressed: _isCallInProgress ? _endCall : _startCall,
              child: Icon(Icons.call_end),
              backgroundColor: Color(0xffFF3030),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


