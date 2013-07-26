package screens {
	
	import flash.display.MovieClip;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import blocks.IL34Block;
	import blocks.ModeInfo;
	
	public class IL34Screen extends BlockScreen {
		
		private var IL34Unit: IL34Block;
		
		public function InitializeIL34Screen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			outButton.addEventListener(MouseEvent.CLICK,GoToNewScreen);
			this.InitializeBlockScreen(IL34Unit, textBox,outButton);
			speedTextbox.text = "Выбранная скорость: "+ModeInfo.SpeedString()+" кбит";
		}
	
		public function IL34Screen()
		{
			IL34Unit=tIL34Unit;
			this.block = IL34Unit;
			// constructor code
		}
	}
	
}
