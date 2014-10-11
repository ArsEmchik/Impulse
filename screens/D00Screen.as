package screens {
	
	import flash.display.MovieClip;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import blocks.D00Block;
	import blocks.ModeInfo;
	
	public class D00Screen extends BlockScreen {
		
		private var D00Unit: D00Block;
		
		public function InitializeD00Screen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			outButton.addEventListener(MouseEvent.CLICK,GoToNewScreen);
			backButton1.addEventListener(MouseEvent.CLICK,backScreen);
			taskTextBox.text = ModeInfo.modeInfo.scenarioDescription;
			this.InitializeBlockScreen(D00Unit, textBox,outButton, textBoxNext);
		}
		
		public function D00Screen() {
			D00Unit=tD00Unit;
			this.block = D00Unit;
		}
	}
	
}
