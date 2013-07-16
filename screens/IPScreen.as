﻿package screens {
	
	import flash.display.MovieClip;
	import blocks.IPBlock;
	import flash.events.MouseEvent;
	
	
	public class IPScreen extends BlockScreen
	{
		private var mainScreen: MainScreen;
		private var IPUnit: IPBlock;
		
		public function IPScreen() 
		{
			IPUnit=t_IPUnit;
			// constructor code
		}
		public function InitializeIPScreen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			outButton.addEventListener(MouseEvent.CLICK,GoToNewScreen);
			this.InitializeBlockScreen(IPUnit,textBox,outButton);
		}
		public function GoToNewScreen(e: MouseEvent)
		{
			mainScreen.InitializeGlobalScreen();
		}		
	}
	
}
