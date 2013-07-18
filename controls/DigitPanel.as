package controls {
	
	import flash.display.MovieClip;
	import blocks.ControlElement;
	import flash.events.MouseEvent;
	
	
	public class DigitPanel extends ControlElement {
		
		
		public function DigitPanel() 
		{
			this.InitializeControlElement(ControlElement.S_101,100,false);
		}
		protected override function GoTo101State()
		{
			if (this.CurrentState==100)
			{
				this.panel1.gotoAndStop(1);
				this.panel2.gotoAndStop(1);				
			}
			else
			{
				var firstNumber: int = this.CurrentState /10;
				var secondNumber: int = this.CurrentState%10;
				this.panel1.gotoAndStop(firstNumber+2);
				this.panel2.gotoAndStop(secondNumber+2);
			}
		}
	}
	
}
