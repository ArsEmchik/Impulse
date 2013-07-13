package screens {
	
	import flash.display.MovieClip;
	
	
	public class ITAScreen extends BlockScreen {
		private var mainScreen: MainScreen;
		private var ITAUnit: ITABlock;
		
		public function ITAScreen() {
			ITAUnit=tITAUnit;
			// constructor code
		}
		
		public function InitializeITAScreen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			this.InitializeBlockScreen(ITAUnit,textBox,outButton);
		}
	}
	
}
