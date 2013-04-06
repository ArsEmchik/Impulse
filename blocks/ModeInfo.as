package blocks
{
	public class ModeInfo
	{
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
		
		
		
		public var MainMode: int;
		public var Mode: int;
		public var LocalMode: int;
		public var Speed: int;
		public var ChannelCount: int;
		public var KtchCount: int;
		public var Czk48Count: int;
		
		public function ModeInfo()
		{
			
		}
	}
}