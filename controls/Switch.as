package controls
{
	import blocks.ControlElement;
	import flash.events.MouseEvent;
	
	public class Switch extends ControlElement
	{
		public function Switch()
		{
			InitializeControlElement(ControlElement.S_BINARY, ControlElement.S_B_DEFAULT, true);
			addEventListener(MouseEvent.CLICK, SwitchMouseDown);
		}
		
		private function SwitchMouseDown(e:MouseEvent)
		{
			var newState:int;
			if (CurrentState == ControlElement.S_B_DEFAULT)
				newState = ControlElement.S_B_CHOSEN;
			else
				newState = ControlElement.S_B_DEFAULT;
			GoToState(newState, true);
		}
	}
}
