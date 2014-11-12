package screens
{
	import blocks.D00Block;
	import blocks.ModeInfo;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class D00Screen extends BlockScreen
	{
		public var backButton1: Button;
		public var outButton: Button;
		
		public var textBox: TextField;
		public var textBoxNext: TextField;
		
		public var taskTextBox: TextField;
		
		public var tD00Unit:D00Block;
		
		public function InitializeD00Screen(p_mainScreen:MainScreen)
		{
			mainScreen = p_mainScreen;
			
			outButton.addEventListener(MouseEvent.CLICK, GoToNewScreen);
			backButton1.addEventListener(MouseEvent.CLICK, backScreen);
			
			taskTextBox.text = ModeInfo.modeInfo.scenarioDescription;
			
			InitializeBlockScreen(tD00Unit, textBox, outButton, textBoxNext);
		}
	}
}
