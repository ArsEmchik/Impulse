package controls
{
	import blocks.ControlElement;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class D39Button extends ControlElement
	{
		public var button: MovieClip;
		
		private var type:int;
		private var emptyButtonID:String;
		
		public function D39Button()
		{
			OneState = true;
			InitializeControlElement(ControlElement.S_BINARY, ControlElement.S_B_DEFAULT, true);
			addEventListener(MouseEvent.CLICK, SwitchMouseDown);
		}
		
		public function ChangeType(newType:int)
		{
			type = newType;
			button.gotoAndStop(type + 1);
		}
		
		public function GetType()
		{
			return type;
		}
		
		public function ChangeID(newID:String)
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
			button.gotoAndStop(type + 1);
		}
		
		private function SwitchMouseDown(e:MouseEvent)
		{
			if (blocked == true)
				return;
			
			var newState:int;
			if (CurrentState == ControlElement.S_B_DEFAULT)
				newState = ControlElement.S_B_CHOSEN;
			else
				newState = ControlElement.S_B_DEFAULT;
			GoToState(newState, true);
		}
	}
}
