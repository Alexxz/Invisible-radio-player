import flash.external.ExternalInterface
class InvisibleRadioPlayer {

	static var app : InvisibleRadioPlayer;


	function InvisibleRadioPlayer() {
		ExternalInterface.addCallback( "sndPlay", this, sndPlay );
		ExternalInterface.addCallback( "sndStop", this, sndStop );
	}
	
	function sndPlay(url){
		if(!url) { url = "http://91.121.182.57:9080/;" }
		if(!_root.stream){
			_root.stream = new Sound();
			_root.stream.loadSound(url, true); // true -isStreaming
			_root.stream.play();
			return 1;
		} else {
			return 0;
		}
	}

	function sndStop(){
		_root.stream.stop();
		_root.stream = null;
		return 1;
	}

	// entry point
	static function main(mc) {
		app = new InvisibleRadioPlayer();
	}
}

