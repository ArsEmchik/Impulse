package controls
{
	import blocks.ControlElement;
	import flash.events.MouseEvent;
	
	public class D31Jumper extends ControlElement
	{
		private static var prevClicked: D31Jumper = null;

		private var linked: D31Jumper;
		private var wire: Wire;

		public function D31Jumper()
		{
			InitializeControlElement(ControlElement.S_BINARY, ControlElement.S_B_DEFAULT, true);
			addEventListener(MouseEvent.CLICK, SwitchMouseDown);
		}

		private function SwitchMouseDown(e:MouseEvent)
		{
			var newState:int;
			if (prevClicked != null)
			{
				if (CurrentState == ControlElement.S_B_DEFAULT)
				{
					newState = ControlElement.S_B_CHOSEN;
					linked = prevClicked;
					linked.linked = this;
					prevClicked = null;
					
					trace("Coords: ", X, " ", Y);
					
					if (wire == null)
					{
						wire = new Wire(parentUnit);
					}
					
					wire.drawWire(this, linked);
				}
			}
			else
			{
				if (CurrentState == ControlElement.S_B_DEFAULT)
				{
					trace("Coords: ", X, " ", Y);
					newState = ControlElement.S_B_CHOSEN;
					prevClicked = this;
				}
				else
				{
					newState = ControlElement.S_B_DEFAULT;
					prevClicked = linked;
					linked.linked = null;
					linked = null;
					
					wire.eraseWire();
				}
			}
			
			trace("State: ", newState);
			GoToState(newState, true);
		}
	}

}