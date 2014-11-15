package blocks
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.filters.GlowFilter;
	
	public class ControlElement extends MovieClip
	{
		// константы - для обозначения состояний. например у перемычки 2 состояния, а вот у LCD дисплея 101(пустое+ числа от 1 до 99)
		public static const S_BINARY:int = 2;
		
		public static const S_B_DEFAULT:int = 1;
		public static const S_B_CHOSEN:int = 2;
		
		public static const S_3:int = 3;
		
		public static const S_11:int = 11;
		
		public static const S_11_STATE1:int = 1;
		public static const S_11_STATE2:int = 2;
		public static const S_11_STATE3:int = 3;
		public static const S_11_STATE4:int = 4;
		public static const S_11_STATE5:int = 5;
		public static const S_11_STATE6:int = 6;
		public static const S_11_STATE7:int = 7;
		public static const S_11_STATE8:int = 8;
		public static const S_11_STATE9:int = 9;
		public static const S_11_STATE10:int = 10;
		public static const S_11_STATE11:int = 11;
		
		public static const S_101:int = 101;
		
		private var yellowFilter:GlowFilter = new GlowFilter(0xFFFF00, 1, 6, 6);
		private var greenFilter:GlowFilter = new GlowFilter(0x00FF00, 1, 16, 16, 5);
		
		protected var parentUnit:ImpulsUnit;
		
		public var linkedElement:ControlElement = null;
		public var shouldBeLinkedWith:ControlElement = null;
		
		public var StateCount:int; // сколько всего состояний
		public var CurrentState:int; // текущее состояние
		public var MouseEnabled:Boolean; // лампочки нельзя менять, а например тумблеры - можно
		public var blocked:Boolean; // блокировка - например для режима обучения можно нажимать только на правильный контрол. Остальные блокированы
		
		public var OneState:Boolean = false; // у констрола есть только 1 состояние?(это частный случай)
		public var isErrorChecked:Boolean = false; // была ли проверка на ошибку с этим контролом?
		public var elementName:String;
		
		private var nesesaryState:int; // ожидаемое состояние - в основном нужно для ImpulsUnit
		private var hasGlow:Boolean // подсвечивается ли контрол
		private var MouseOver:Boolean; // мышка над этим констролом?
		
		public var X:int;
		public var Y:int;
		
		public function ControlElement()
		{
			super();
			X = this.x + width / 2;
			Y = this.y + height / 2;
		}
		
		protected function InitializeControlElement(p_StateCount:int, p_CurrentState:int, p_MouseEnabled:Boolean)
		{
			StateCount = p_StateCount; // S_BINARY
			CurrentState = p_CurrentState; // S_B_DEFAULT
			MouseEnabled = p_MouseEnabled;
			
			GoToState(CurrentState);
			
			if (MouseEnabled)
			{
				InitializeMouseOverOut();
			}
		}
		
		// меняет состояние на указанное
		public function GoToState(newState:int, reallyPressed:Boolean = false)
		{
			if (IsBlocked())
			{
				if (reallyPressed)
				{
					parentUnit.TestTraining(this);
				}
				else
				{
					CurrentState = newState;
					SwitchStateCount();
				}
			}
			else
			{
				CurrentState = newState; // S_B_DEFAULT -> S_B_CHOSEN
				SwitchStateCount();
				if (reallyPressed && parentUnit != null && ((hasGlow && parentUnit.ImpulseMode == ModeInfo.MM_INSTRUCTION) || parentUnit.ImpulseMode == ModeInfo.MM_TRAINIGWITHHINT || parentUnit.ImpulseMode == ModeInfo.MM_TRAINIGWITHOUTHINT))
				{
					if (nesesaryState == CurrentState)
						parentUnit.NextStep();
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
				case S_11: 
					GoTo11State();
					break;
				case S_101: 
					GoTo101State();
					break;
				case S_3: 
					GoTo3State();
					break;
				default: 
					throw new Error("Нет такого класса");
			}
		}
		
		protected function GoTo101State()
		{
		}
		
		protected function GoTo3State()
		{
			gotoAndStop(CurrentState);
		}
		
		private function InitializeMouseOverOut()
		{
			addEventListener(MouseEvent.ROLL_OVER, OnMouseOver);
			addEventListener(MouseEvent.ROLL_OUT, OnMouseOut);
		}
		
		protected function GoToBinaryState()
		{
			if (CurrentState == S_B_DEFAULT)
				gotoAndStop("Default");
			else
				gotoAndStop("Chosen");
		}
		
		private function GoTo11State()
		{
			gotoAndStop(CurrentState);
		}
		
		private function OnMouseOver(e:MouseEvent)
		{
			filters = [yellowFilter];
			if (linkedElement != null)
			{
				linkedElement.filters = [yellowFilter];
			}
			
			onGlowChanged(filters);
			
			MouseOver = true;
		}
		
		private function OnMouseOut(e:MouseEvent)
		{
			if (hasGlow)
			{
				filters = [greenFilter];
				if (linkedElement != null)
				{
					linkedElement.filters = [];
				}
				
				onGlowChanged(filters);
			}
			else
			{
				filters = [];
				if (linkedElement != null)
				{
					linkedElement.filters = [];
				}
				
				onGlowChanged(filters);
			}
			MouseOver = false;
		}
		
		public function onGlowChanged(filters: Array)
		{
			trace("lol");
		}
		
		// подствечиваться жёлтым или зелёным цветом
		public function AddGlow()
		{
			hasGlow = true;
			if (MouseOver)
				OnMouseOver(null);
			else
				OnMouseOut(null);
		}
		
		public function RemoveGlow()
		{
			hasGlow = false;
			if (MouseOver)
				OnMouseOver(null);
			else
				OnMouseOut(null);
		}
		
		public function BlockElement()
		{
			blocked = true;
		}
		
		public function IsBlocked():Boolean
		{
			return blocked;
		}
		
		public function UnblockElement()
		{
			blocked = false;
		}
		
		public function SetParent(ParentUnit:ImpulsUnit)
		{
			parentUnit = ParentUnit;
		}
		
		public function SetNessesaryState(pNesesaryState:int)
		{
			nesesaryState = pNesesaryState;
		}
		
		public override function toString():String
		{
			return name;
		}
	}
}