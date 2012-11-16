package {
	import flash.display.Sprite;
	import flash.events.Event;
    import flash.net.URLLoader;  
    import flash.net.URLRequest;
    import flash.system.Security;
	import flash.utils.ByteArray;
    import MFCC;
    
    public class Main extends Sprite {
    	
    	private var _loader:URLLoader;

    	public function Main():void {
            var urlRequest:URLRequest = new URLRequest('wavs/sammy/abandoned.wav');  
            _loader = new URLLoader();  
			_loader.dataFormat = 'binary';
			_loader.load(urlRequest);
			_loader.addEventListener(Event.COMPLETE, extractFeature);
    	}

    	private function extractFeature(e:Event):void {
    		var mfcc:MFCC = new MFCC(_loader.data as ByteArray);
    	}
    }
}