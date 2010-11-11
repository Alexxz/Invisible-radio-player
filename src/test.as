class InvisibleRadioPlayer {

	static var app : InvisibleRadioPlayer;

	function InvisibleRadioPlayer() {
		var _l1 = _root;
		var _l2 = this;
		_l2.counter.text = "00:00:00";
		var _l3 = "http://91.121.182.57:9080/;";
		_l1.stream = new Sound();
		_l1.stream.loadSound(_l3, true);
		_l1.stream.play();
	}


	// entry point
	static function main(mc) {
		app = new InvisibleRadioPlayer();
	}
}

