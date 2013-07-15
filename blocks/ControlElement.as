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
		private var blocked: Boolean;
		protected var parentUnit: ImpulsUnit;
		private var nesesaryState: int;
		private var emiting: Boolean
		private var MouseOver: Boolean;
		
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
		public function GoToState(newState: int, reallyPressed: Boolean=false)
		{
			if (!IsBlocked())
			{
				CurrentState=newState; // S_B_DEFAULT -> S_B_CHOSEN
				SwitchStateCount();
				if (reallyPressed && parentUnit!=null
					&& ((emiting && parentUnit.ImpulseMode==ModeInfo.MM_INSTRUCTION) ||
					 parentUnit.ImpulseMode==ModeInfo.MM_TRAINIGWITHHINT || 
					 parentUnit.ImpulseMode==ModeInfo.MM_TRAINIGWITHOUTHINT))
				{
					if (nesesaryState==CurrentState)
						this.parentUnit.EmitNext();
				}
			}
			else
			{
				
				if (reallyPressed)
				{
					this.parentUnit.TestTraining(this);
				}
				else
				{
					CurrentState=newState;
					SwitchStateCount();
				}
			}
			
		}
		private function SwitchStateCount()
		{
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
			MouseOver=true;
		}
		private function ControlElementMouseOut(e: MouseEvent)
		{
			if (emiting)
			{
				var newFilter: GlowFilter = new GlowFilter(0x00FF00,1,16,16,5);
				this.filters=[newFilter];
			}
			else this.filters=[];
			MouseOver=false;
		}
		public function BlockElement()
		{
			blocked=true;
		}
		public function IsBlocked(): Boolean
		{
			return blocked;
		}
		public function UnblockElement()
		{
			blocked=false;
		}
		public function SetParent(ParentUnit: ImpulsUnit)
		{
			parentUnit=ParentUnit;
		}
		public function SetNessesaryState(pNesesaryState: int)
		{
			nesesaryState=pNesesaryState;
		}
		public function EmitControl()
		{
			this.emiting=true;
			if (MouseOver)
				ControlElementMouseOver(null);
			else ControlElementMouseOut(null);
		}
		public function RemoveEmit()
		{
			this.emiting=false;
			if (MouseOver)
				ControlElementMouseOver(null);
			else ControlElementMouseOut(null);			
		}
	}
}