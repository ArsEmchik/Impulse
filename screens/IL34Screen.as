package screens
{
	import blocks.IL34Block;
	import blocks.ModeInfo;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class IL34Screen extends BlockScreen
	{
		public var backButton1: Button;
		public var outButton: Button;
		
		public var textBox: TextField;
		public var textBoxNext: TextField;
		
		public var speedTextbox: TextField;
		
		public var tIL34Unit: IL34Block;
		
		public function InitializeIL34Screen(p_mainScreen:MainScreen)
		{
			mainScreen = p_mainScreen;
			
			outButton.addEventListener(MouseEvent.CLICK, GoToNewScreen);
			backButton1.addEventListener(MouseEvent.CLICK, backScreen);
			
			speedTextbox.text = "Выбранная скорость: " + ModeInfo.SpeedString() + " кбит";
			
			InitializeBlockScreen(tIL34Unit, textBox, outButton, textBoxNext);
		}
	}
}
