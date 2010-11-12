import flash.external.ExternalInterface

class InvisibleRadioPlayer {

	static var app : InvisibleRadioPlayer;

	// Constructor off application
	function InvisibleRadioPlayer() {
		// methods available from javascript
		ExternalInterface.addCallback( "sndPlay",    this, sndPlay );
		ExternalInterface.addCallback( "sndStop",    this, sndStop );
		ExternalInterface.addCallback( "sndTrigger", this, sndTrigger );
		
		// check flashvars 
		if(_root.autoplay){
			if(_root.url){
				this.sndPlay(_root.url);
			} else {
				this.sndPlay();
			}
		}
	}
	
	function sndTrigger(url){
		if(_root.stream){
			this.sndStop();
			return 0;
		} else {
			this.sndPlay(url);
			return 1;
		}
	}
	
	// play sound if no sound already exists
	// url is optional arg
	function sndPlay(url){
		if(!url) { url = "http://91.121.182.57:9080/;" } // if no args play default
		if(!_root.stream){ // really play
			_root.stream = new Sound();
			_root.stream.loadSound(url, true); // true -isStreaming
			_root.stream.play();
			return 1;
		} else {
			return 0;
		}
	}

	// Stop playing if Sound objects exists
	function sndStop(){
		if(_root.stream){
			_root.stream.stop();
			_root.stream = null;
		}
		return 1;
	}

	// entry point
	static function main(mc) {
		app = new InvisibleRadioPlayer();
	}
}

