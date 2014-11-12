package controls
{
	import blocks.ControlElement;
	import flash.events.MouseEvent;
	
	public class Tumble extends ControlElement
	{
		public function Tumble()
		{
			InitializeControlElement(ControlElement.S_3, 1, true);
			addEventListener(MouseEvent.CLICK, SwitchMouseDown);
		}
		
		private function SwitchMouseDown(e:MouseEvent)
		{
			var newState:int;
			if (CurrentState == 2)
				newState = 1;
			else
				newState = 2;
			GoToState(newState, true);
		}
	}

}
