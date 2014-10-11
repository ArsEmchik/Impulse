package controls {
	
	import flash.display.MovieClip;
	import blocks.ControlElement;
	import flash.events.MouseEvent;
	
	
	public class D39Button extends ControlElement {
		
		private var type: int;
		private var emptyButtonID: String;
		public function D39Button() 
		{
			this.OneState=true;
			this.InitializeControlElement(ControlElement.S_BINARY,ControlElement.S_B_DEFAULT,true);
			this.addEventListener(MouseEvent.CLICK,SwitchMouseDown);			
		}
		public function ChangeType(newType: int)
		{
			type = newType;
			button.gotoAndStop(type+1);
		}
		public function GetType()
		{
			return type;
		}
		public function ChangeID(newID: String)
		{
			emptyButtonID = newID;
		}
		public function GetID()
		{
			return emptyButtonID;
		}
		protected override function GoToBinaryState()
		{
			super.GoToBinaryState();
			button.gotoAndStop(type+1);
		}
		private function SwitchMouseDown(e: MouseEvent)
		{
			if(this.blocked	== true) return;
			
			var newState: int;
			if (this.CurrentState==ControlElement.S_B_DEFAULT)
				newState=ControlElement.S_B_CHOSEN;
			else newState=ControlElement.S_B_DEFAULT;
			this.GoToState(newState,true);
		}		
	}
}
