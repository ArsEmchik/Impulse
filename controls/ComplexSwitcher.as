package controls
{
	import blocks.ControlElement;
	import flash.events.MouseEvent;
	
	public class ComplexSwitcher extends ControlElement
	{
		public function ComplexSwitcher()
		{
			InitializeControlElement(ControlElement.S_11, ControlElement.S_11_STATE1, true);
			addEventListener(MouseEvent.CLICK, SwitchMouseDown);
		}
		
		private function SwitchMouseDown(e:MouseEvent)
		{
			var newState:int;
			if (CurrentState != ControlElement.S_11_STATE11)
				newState = CurrentState + 1;
			else
				newState = ControlElement.S_11_STATE1;
			GoToState(newState, true);
		}
	}
}
