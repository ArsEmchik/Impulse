package blocks
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.filters.GlowFilter;

	public class ControlElement extends MovieClip
	{
		public static const S_BINARY: int=2;
		
		public static const S_B_DEFAULT: int=1;
		public static const S_B_CHOSEN: int=2;
				
		public var StateCount: int;
		public var CurrentState: int;
		public var MouseEnabled: Boolean;
		
		public function ControlElement()
		{
			
		}
		protected function InitializeControlElement(p_StateCount: int, p_CurrentState: int, p_MouseEnabled: Boolean)
		{			
			StateCount=p_StateCount; // S_BINARY
			CurrentState=p_CurrentState; // S_B_DEFAULT
			MouseEnabled=p_MouseEnabled;
			GoToState(CurrentState);
			if (MouseEnabled)
				InitializeMouseOverOut();
		}
		public function GoToState(newState: int)
		{
			CurrentState=newState; // S_B_DEFAULT -> S_B_CHOSEN
			switch (StateCount)
			{
				case S_BINARY:
					GoToBinaryState();
					break;
				default: throw new Error("Нет такого класса");
			}
		}
		private function InitializeMouseOverOut()
		{
		    this.addEventListener(MouseEvent.ROLL_OVER,ControlElementMouseOver);
			this.addEventListener(MouseEvent.ROLL_OUT,ControlElementMouseOut);
		}
		private function GoToBinaryState()
		{
			if (CurrentState==S_B_DEFAULT)
				this.gotoAndStop("Default");
			else this.gotoAndStop("Chosen");
		}
		private function ControlElementMouseOver(e: MouseEvent)
		{
			var newFilter: GlowFilter = new GlowFilter(0xFFFF00,1,6,6);
			this.filters=[newFilter];
		}
		private function ControlElementMouseOut(e: MouseEvent)
		{
			this.filters=[];
		}
	}
}