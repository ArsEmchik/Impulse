package controls
{
	import blocks.ControlElement;
	import flash.display.MovieClip;
	
	public class DigitPanel extends ControlElement
	{
		public var panel1: MovieClip;
		public var panel2: MovieClip;
		
		public function DigitPanel()
		{
			InitializeControlElement(ControlElement.S_101, 100, false);
		}
		
		protected override function GoTo101State()
		{
			if (CurrentState == 100)
			{
				panel1.gotoAndStop(1);
				panel2.gotoAndStop(1);
			}
			else
			{
				var firstNumber:int = CurrentState / 10;
				var secondNumber:int = CurrentState % 10;
				panel1.gotoAndStop(firstNumber + 2);
				panel2.gotoAndStop(secondNumber + 2);
			}
		}
	}
}
