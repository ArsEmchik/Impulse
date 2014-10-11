package screens {
	
	import flash.display.MovieClip;
	import blocks.IPBlock;
	import flash.events.MouseEvent;
	
	
	public class IPScreen extends BlockScreen
	{
		private var IPUnit: IPBlock;
		
		public function IPScreen() 
		{
			IPUnit=t_IPUnit;
			this.block = IPUnit;
			// constructor code
		}
		public function InitializeIPScreen(p_mainScreen: MainScreen)
		{
			mainScreen=p_mainScreen;
			outButton.addEventListener(MouseEvent.CLICK,GoToNewScreen);
			backButton1.addEventListener(MouseEvent.CLICK,backScreen);
			this.InitializeBlockScreen(IPUnit,textBox,outButton, textBoxNext);
		}	
	}
	
}
