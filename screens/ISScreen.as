package screens {
	
	import flash.display.MovieClip;
	import blocks.ISBlock;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	
	public class ISScreen extends BlockScreen {
		
		private var ISUnit: ISBlock;
		
		public function InitializeISScreen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			outButton.addEventListener(MouseEvent.CLICK,GoToNewScreen);
			backButton1.addEventListener(MouseEvent.CLICK,backScreen);
			this.InitializeBlockScreen(ISUnit, textBox,outButton, textBoxNext);
		}
	
		public function ISScreen() 
		{
			ISUnit=tISUnit;
			this.block = ISUnit;
			// constructor code
		}
	}
	
}
