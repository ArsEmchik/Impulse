package screens {
	
	import flash.display.MovieClip;
	
	
	public dynamic class MainScreen extends MovieClip 
	{
		
		public function MainScreen() 
		{
			InitializeStartScreen();
			// constructor code
		}
		public function InitializeModeScreen()
		{
			this.gotoAndStop("ModeScreen");
			this.mode_screen.InitializeStartModeScreen(this);
		}	
		public function InitializeStartScreen()
		{
			this.gotoAndStop("MainScreen");
			this.start_screen.InitializeStartMainScreen(this);
		}			
		public function InitializeGlobalScreen()
		{
			this.gotoAndStop("GlobalScreen");
			this.global_screen.InitializeGlobalScreen(this);			
		}
		public function InitializeIPScreen()
		{
			this.gotoAndStop("IPBLock");
			IPScreen.InitializeIPScreen(this);
		}
	}
	
}
