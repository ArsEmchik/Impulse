package screens {
	
	import flash.display.MovieClip;
	import blocks.ModeInfo;
	
	public dynamic class MainScreen extends MovieClip 
	{
		/*private var start_screen: StartMainScreen;
		private var mode_screen: ModeScreen;
		private var global_screen: GlobalScreen;
		private var ip_screen: IPScreen;
		private var io3a_screen: IO3AScreen;
		private var final_screen: FinalScreen;
		private var ita_screen: ITAScreen;
		private var is_screen: ISScreen;
		private var io4_screen: IO4Screen;
		private var il34_screen: IL34Screen;
		private var block_input_screen: BlockInputScreen;
		private var d39_screen: D39Screen;
		private var d00_screen: D00Screen;*/
		
		public var info: ModeInfo;
		
		public function MainScreen() 
		{
			InitializeStartScreen();
		}
		public function InitializeModeScreen()
		{
			gotoAndStop("ModeScreen");
			mode_screen.InitializeStartModeScreen(this);
		}	
		public function InitializeStartScreen()
		{
			gotoAndStop("StartScreen");
			start_screen.InitializeStartMainScreen(this);
		}			
		public function InitializeGlobalScreen()
		{
			gotoAndStop("GlobalScreen");
			global_screen.InitializeGlobalScreen(this);
		}
		public function InitializeIPScreen()
		{
			gotoAndStop("IPBLock");
			ip_screen.InitializeIPScreen(this);
		}
		public function InitializeIO3AScreen()
		{
			gotoAndStop("IO3ABlock");
			io3a_screen.InitializeIO3AScreen(this);
		}
		public function InitializeIO4Screen()
		{
			gotoAndStop("IO4Block");
			io4_screen.InitializeIO4Screen(this);
		}
		public function InitializeITAScreen()
		{
			gotoAndStop("ITABlock");
			ita_screen.InitializeITAScreen(this);
		}		
		public function InitializeISScreen()
		{
			gotoAndStop("ISBlock");
			is_screen.InitializeISScreen(this);
		}	
		public function InitializeIL34Screen()
		{
			gotoAndStop("IL34Block");
			il34_screen.InitializeIL34Screen(this);
		}	
		public function InitializeD00Screen()
		{
			gotoAndStop("D00Block");
			d00_screen.InitializeD00Screen(this);
		}
		public function InitializeFinalScreen()
		{
			gotoAndStop("Final");
			final_screen.InitScreen(this);
			
		}
		public function InitializeInputBlock()
		{
			gotoAndStop("BlockInput");
			block_input_screen.InitializeInputBlockScreen(this);
		}
		public function InitializeD39Block()
		{
			gotoAndStop("D39Block");
			d39_screen.InitializeD39Screen(this);
		}		
	}
	
}