package controls
{
	import blocks.ControlElement;
	import flash.events.MouseEvent;
	import flash.filters.GlowFilter;
	
	public class D31Jumper extends ControlElement
	{
		private static var prevClicked: ControlElement = null;
		private var wire: Wire;

		public function D31Jumper()
		{
			InitializeControlElement(ControlElement.S_BINARY, ControlElement.S_B_DEFAULT, true);
			addEventListener(MouseEvent.CLICK, SwitchMouseDown);
		}

		private function SwitchMouseDown(e:MouseEvent)
		{
			if (blocked)
			{
				return;
			}
			
			var newState:int;
			if (prevClicked != null)
			{
				if (CurrentState == ControlElement.S_B_DEFAULT)
				{
					newState = ControlElement.S_B_CHOSEN;
					linkedElement = prevClicked;
					linkedElement.linkedElement = this;
					prevClicked = null;
					
					if (wire == null)
					{
						wire = new Wire(parentUnit);
					}
					
					wire.drawWire(this, linkedElement);
				}
			}
			else
			{
				if (CurrentState == ControlElement.S_B_DEFAULT)
				{
					newState = ControlElement.S_B_CHOSEN;
					prevClicked = this;
				}
				else
				{
					if (wire != null)
					{
						wire.eraseWire();
					}
					
					if ((linkedElement as D31Jumper).wire != null)
					{
						(linkedElement as D31Jumper).wire.eraseWire();
					}
					
					newState = ControlElement.S_B_DEFAULT;
					prevClicked = linkedElement;
					linkedElement.linkedElement = null;
					linkedElement = null;
				}
			}
			
			GoToState(newState, true);
		}
		
		public override function onGlowChanged(filters: Array)
		{
			if (wire != null)
			{
				wire.filters = filters;
			}
		}
	}

}