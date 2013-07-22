package screens {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class ITAScreen extends BlockScreen {
		
		private var ITAUnit: ITABlock;
		
		public function ITAScreen() {
			ITAUnit=tITAUnit;
			this.block = ITAUnit;
			// constructor code
		}
		
		public function InitializeITAScreen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			outButton.addEventListener(MouseEvent.CLICK,GoToNewScreen);
			this.InitializeBlockScreen(ITAUnit,textBox,outButton);
		}	
	}
}
