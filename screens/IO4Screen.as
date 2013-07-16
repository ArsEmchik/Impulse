package screens {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class IO4Screen extends BlockScreen {
		
		private var mainScreen: MainScreen;
		private var IO4Unit: IO4Block;
		
		public function IO4Screen() {
			IO4Unit=tIO4Unit;
			// constructor code
		}
		
		public function InitializeIO4Screen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			outButton.addEventListener(MouseEvent.CLICK,GoToNewScreen);
			this.InitializeBlockScreen(IO4Unit,textBox,outButton);
		}
		public function GoToNewScreen(e: MouseEvent)
		{
			mainScreen.InitializeGlobalScreen();
		}		
		
	}
	
}
