import flash.external.ExternalInterface
class InvisibleRadioPlayer {

	static var app : InvisibleRadioPlayer;


	function InvisibleRadioPlayer() {
		ExternalInterface.addCallback( "sndPlay", this, sndPlay );
		var _l1 = _root;
		var _l2 = this;
		_l2.counter.text = "00:00:00";
		_l1.stream = new Sound();
	}
	
	function sndPlay(){
		_root.stream.loadSound("http://91.121.182.57:9080/;", true);
		_root.stream.play();
		return 1;
	}


	// entry point
	static function main(mc) {
		app = new InvisibleRadioPlayer();
	}
}

