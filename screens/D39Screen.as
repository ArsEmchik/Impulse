package screens
{
	import blocks.D39Block;
	import blocks.ModeInfo;
	import buttons.ConfigButton;
	import fl.controls.Button;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class D39Screen extends BlockScreen
	{
		public var backButton1: Button;
		public var outButton: Button;
		
		public var textBox: TextField;
		public var textBoxNext: TextField;
		
		public var taskTextBox: TextField;
		
		public var configButton: ConfigButton;
		public var tConfigTable: MovieClip;
		
		public var tD39Unit:D39Block;
		
		public function D39Screen()
		{
			configButton.InitializeButton(this, tConfigTable);
			removeChild(tConfigTable);
		}
		
		public function InitializeD39Screen(p_mainScreen:MainScreen)
		{
			mainScreen = p_mainScreen;
			
			outButton.addEventListener(MouseEvent.CLICK, GoToNewScreen);
			backButton1.addEventListener(MouseEvent.CLICK, backScreen);
			
			taskTextBox.text = ModeInfo.modeInfo.scenarioDescription;
			
			InitializeBlockScreen(tD39Unit, textBox, outButton, textBoxNext);
		}
	}
}
