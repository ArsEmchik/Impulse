package screens {
	
	import flash.display.MovieClip;
	import blocks.IO3ABlock;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	
	public class IO3AScreen extends BlockScreen {
		
		private var IO3AUnit: IO3ABlock;
		
		public function InitializeIO3AScreen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			outButton.addEventListener(MouseEvent.CLICK,GoToNewScreen);
			backButton1.addEventListener(MouseEvent.CLICK,backScreen);
			this.InitializeBlockScreen(IO3AUnit, textBox,outButton, textBoxNext);
		}
	
		public function IO3AScreen() 
		{
			IO3AUnit=tIO3AUnit;
			this.block = IO3AUnit;
			// constructor code
		}
	}
	
}
