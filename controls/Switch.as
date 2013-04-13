package controls {
	
	import flash.display.MovieClip;
	import blocks.ControlElement;
	import flash.events.MouseEvent;


	public class Switch extends ControlElement
	{
		
		public function Switch() 
		{
			// constructor code
			this.InitializeControlElement(ControlElement.S_BINARY,ControlElement.S_B_DEFAULT,true);
			this.addEventListener(MouseEvent.CLICK,SwitchMouseDown);
		}
		private function SwitchMouseDown(e: MouseEvent)
		{
			var newState: int;
			if (!IsBlocked())
			{
				if (this.CurrentState==ControlElement.S_B_DEFAULT)
					newState=ControlElement.S_B_CHOSEN;
				else newState=ControlElement.S_B_DEFAULT;
				this.GoToState(newState);
			}
		}
	}
	
}
