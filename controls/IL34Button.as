package controls
{
	import blocks.ControlElement;
	import flash.events.MouseEvent;
	
	public class IL34Button extends ControlElement
	{
		public function IL34Button()
		{
			OneState = true;
			InitializeControlElement(ControlElement.S_BINARY, ControlElement.S_B_DEFAULT, true);
			addEventListener(MouseEvent.CLICK, SwitchMouseDown);
		}
		
		private function SwitchMouseDown(e:MouseEvent)
		{
			GoToState(ControlElement.S_B_CHOSEN, true);
			GoToState(ControlElement.S_B_DEFAULT, true);
		}
	}
}
