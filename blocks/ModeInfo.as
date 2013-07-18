package blocks
{
	public class ModeInfo
	{
		public static var modeInfo: ModeInfo = new ModeInfo();
		
		public static const BLOCK_IP: int=0;
		public static const BLOCK_IO4: int=1;
		public static const BLOCK_IO3A: int=2;
		public static const BLOCK_ITA: int=3;
		public static const BLOCK_IS: int=4;
		public static const BLOCK_IL34: int=5;
		public static const BLOCK_IO3A_2: int=6;
		public static const BLOCK_IO4_2: int=7;
		public static const BLOCK_IL34_2: int=8;
		public static const BLOCK_D_39: int=9;
		public static const BLOCK_D_00_01: int=10;
		public static const BLOCK_INPUT: int=11;
		
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
		public var currentBlock: int;
		public var blockInfo: Vector.<BlockInfo> = new Vector.<BlockInfo>(12);
		
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
			trace(this.blockInfo);
		}
		public static function InitializeModeInfo()
		{
			modeInfo = new ModeInfo();
			modeInfo.MainMode=MM_CONTROL;
			modeInfo.Mode=M_WORKING;
			modeInfo.Speed=S_480;
			modeInfo.Czk86Channels = new Vector.<int>(6);
			modeInfo.KtchChannels = new Vector.<int>(6);
			modeInfo.Czk86Channels[0] = 2;
			modeInfo.KtchChannels[0]=2;
			modeInfo.Czk86Channels[1] = 3;
			modeInfo.KtchChannels[4]=1;
			modeInfo.P296n1 = 3;
			modeInfo.SetBlocks();
		}
		public function SetBlocks()
		{
			var i: int;
			switch (Mode)
			{
				case M_PREPARING:
					for (i=0; i<9; i++)
						blockInfo[i] = new BlockInfo();
					switch (Speed)
					{
						case S_48:
							blockInfo[BLOCK_IO3A]=null;
							blockInfo[BLOCK_IO3A_2]=null;
							blockInfo[BLOCK_IO4]=null;
							blockInfo[BLOCK_IO4_2]=null;
							blockInfo[BLOCK_IL34]=null;
							blockInfo[BLOCK_IL34_2]=null;
							break;
						case S_480:
							blockInfo[BLOCK_IO4]=null;
							blockInfo[BLOCK_IO4_2]=null;						
							break;
						case S_2048:
							break;
						default: throw new Error("Нет такой скорости");
					}
					break;
				case M_WORKING:
					break;
				case M_COMMUTATION:
					for (i=9; i<12; i++)
						blockInfo[i] = new BlockInfo();					
					break;
				default: throw new Error("Некорректный мод");
			}
		}
		public static function SpeedString(): String
		{
			switch (modeInfo.Speed)
			{
				case S_48:
					return("48");
				case S_480:
					return("480");
				case S_480x2:
					return("480x2");
				case S_2048:
					return("2048");
			}
			throw new Error("");
		}
	}
}