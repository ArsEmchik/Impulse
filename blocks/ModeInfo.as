package blocks
{
	public class ModeInfo
	{
		public static var modeInfo: ModeInfo;
		
		
		public static const MM_INSTRUCTION: int=0;
		public static const MM_TRAINIGWITHHINT: int=1;
		public static const MM_TRAINIGWITHOUTHINT: int=2;
		public static const MM_CONTROL: int=3;
		
		public static const M_PREPARING: int=0;
		public static const M_WORKING: int=1;
		public static const M_COMMUTATION: int=2;		
		
		public static const L_OK2: int=0;
		public static const L_RETR2: int=1;
		public static const L_UZL2: int=2;
		public static const L_OK1: int=3;
		public static const L_RETR1: int=4;
		public static const L_UZL1: int=5;
		
		public static const S_48: int=0;
		public static const S_480: int=1;
		public static const S_480x2: int=2;
		public static const S_2048: int=3;
		
		public static const P296_NOTHING: int=0;
		public static const P296_480: int=1;
		public static const P296_2048: int=2;		
		
		public var MainMode: int;
		public var Mode: int;
		public var LocalMode: int;
		public var Speed: int;
		public var ChannelCount: int;
		public var KtchCount: int;
		public var Czk48Count: int;
		public var Czk86Channels: Vector.<int>;
		public var KtchChannels: Vector.<int>;
		public var P296n1: int;
		public var P296n2: int;
		
		public function ModeInfo()
		{
			
		}
		public function TraceModeInfo()
		{
			trace("Main mode:",MainMode);
			trace("Mode:",Mode);
			trace("LocalMode:",LocalMode);
			trace("Speed:",Speed);
			trace("ChannelCount:",ChannelCount);
			trace("KtchCount:",KtchCount);
			trace("Czk48Count:",Czk48Count);
			trace("Czk86Channels:",Czk86Channels);
			trace("KtchChannels:",KtchChannels);
			trace("P296 1",P296n1);
			trace("P296 2",P296n2);
		}
		public static function InitializeModeInfo()
		{
			modeInfo = new ModeInfo();
			modeInfo.MainMode=MM_TRAINIGWITHOUTHINT;
			modeInfo.Mode=M_PREPARING;
			modeInfo.Speed=S_480;
		}
		
	}
}