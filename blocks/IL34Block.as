package blocks
{
	import blocks.ImpulsUnit;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class IL34Block extends ImpulsUnit
	{
		public var greenBulb1:GreenBulb;
		public var greenBulb2:GreenBulb;
		public var greenBulb3:GreenBulb;
		public var greenBulb4:GreenBulb;
		public var greenBulb5:GreenBulb;
		public var greenBulb6:GreenBulb;
		public var greenBulb7:GreenBulb;
		public var greenBulb8:GreenBulb;
		public var greenBulb9:GreenBulb;
		
		public var redBulb1:RedBulb;
		public var redBulb2:RedBulb;
		public var redBulb3:RedBulb;
		public var redBulb4:RedBulb;
		public var redBulb5:RedBulb;
		public var redBulb6:RedBulb;
		public var redBulb7:RedBulb;
		
		public var jumper1:Jumper;
		public var jumper2:Jumper;
		public var jumper3:Jumper;
		public var jumper4:Jumper;
		public var jumper5:Jumper;
		public var jumper6:Jumper;
		public var jumper7:Jumper;
		public var jumper8:Jumper;
		public var jumper9:Jumper;
		public var jumper10:Jumper;
		public var jumper11:Jumper;
		public var jumper12:Jumper;
		public var jumper13:Jumper;
		public var jumper14:Jumper;
		public var jumper15:Jumper;
		public var jumper16:Jumper;
		public var jumper17:Jumper;
		public var jumper18:Jumper;
		public var jumper19:Jumper;
		public var jumper20:Jumper;
		public var jumper21:Jumper;
		public var jumper22:Jumper;
		public var jumper23:Jumper;
		public var jumper24:Jumper;
		public var jumper25:Jumper;
		public var jumper26:Jumper;
		
		public var turnSwitch:TurnOnOffMetal;
		public var tumble:IIL34Tumble;
		
		public function IL34Block()
		{
			super();
			ControlDictionary["Включатель"] = turnSwitch;
			
			ControlDictionary["ПСП сигн зел. лампочка"] = greenBulb1;
			ControlDictionary["ЦКС вх зел. лампочка"] = greenBulb2;
			ControlDictionary["ЦКС вых зел. лампочка"] = greenBulb3;
			ControlDictionary["ТФК тест Б зел. лампочка"] = greenBulb4;
			ControlDictionary["ТФК тест ВХ ВС зел. лампочка"] = greenBulb5;
			ControlDictionary["ОИК квит зел. лампочка"] = greenBulb6;
			ControlDictionary["АДВ	сигн зел. лампочка"] = greenBulb7;
			ControlDictionary["АДВ	сигн Б зел. лампочка"] = greenBulb8;
			ControlDictionary["П1 вкл зел. лампочка"] = greenBulb9;
			
			ControlDictionary["ПСП кр. лампочка"] = redBulb1;
			ControlDictionary["ФСЧ кр. лампочка"] = redBulb2;
			ControlDictionary["АДВ кр. лампочка"] = redBulb3;
			ControlDictionary["УСК Ф кр. лампочка"] = redBulb4;
			ControlDictionary["УСК Т кр. лампочка"] = redBulb5;
			ControlDictionary["ДК кр. лампочка"] = redBulb6;
			ControlDictionary["П1 кр. лампочка"] = redBulb7;
			
			ControlDictionary["ПСП пермычка ШЛ"] = jumper1;
			ControlDictionary["ПСП пермычка 3"] = jumper2;
			ControlDictionary["ПСП пермычка 1"] = jumper3;
			ControlDictionary["ЦКС пермычка вкл"] = jumper4;
			ControlDictionary["ТФК перемычка 5"] = jumper5;
			ControlDictionary["ТФК перемычка 4"] = jumper6;
			ControlDictionary["ТФК перемычка 3"] = jumper7;
			ControlDictionary["ТФК перемычка 2"] = jumper8;
			ControlDictionary["ТФК перемычка 1"] = jumper9;
			ControlDictionary["АДВ перемычка П"] = jumper10;
			ControlDictionary["АДВ перемычка О"] = jumper11;
			ControlDictionary["АДВ перемычка 1"] = jumper12;
			ControlDictionary["УСК перемычка Ф"] = jumper13;
			ControlDictionary["УСК перемычка Т"] = jumper14;
			ControlDictionary["УСК перемычка контр"] = jumper15;
			ControlDictionary["ДК перемычка АВТ"] = jumper16;
			ControlDictionary["ДК перемычка РУЧ"] = jumper17;
			ControlDictionary["ДК перемычка 1/8"] = jumper18;
			ControlDictionary["ДК перемычка 1/7"] = jumper19;
			ControlDictionary["ДК перемычка 1/6"] = jumper20;
			ControlDictionary["ДК перемычка 1/5"] = jumper21;
			ControlDictionary["ДК перемычка 1/4"] = jumper22;
			ControlDictionary["П1 перемычка 24"] = jumper23;
			ControlDictionary["П1 перемычка 27"] = jumper24;
			ControlDictionary["П1 перемычка 9"] = jumper25;
			ControlDictionary["П1 перемычка 5"] = jumper26;
			
			ControlDictionary["Тумблер скорости"] = tumble;
			
			InitializeControls();
			CreateCommunication();
			// constructor code
		}
		
		public override function InitializeImpulsUnit(pDecriptionField:TextField, outButton:Button, txtNext:TextField)
		{
			super.InitializeImpulsUnit(pDecriptionField, outButton, txtNext);
			switch (ModeInfo.modeInfo.Mode)
			{
				case ModeInfo.M_PREPARING: 
					InitializeTrainingSequence();
					break;
				case ModeInfo.M_WORKING: 
					//InitializeTrainingSequence();
					//PrepareToWork();
					InitializeWorkingSequence();
					break;
				default: 
					throw new Error("Нет такого мода");
			}
			
			SetMode(ModeInfo.modeInfo.MainMode);
		}
		
		private function InitializeTrainingSequence()
		{
			// выбрать скорость 
			if (ModeInfo.modeInfo.Speed == ModeInfo.S_2048)
			{
				AddToTraining(ControlDictionary["Тумблер скорости"], "Установите скорость передачи в положение 2048", ControlElement.S_B_CHOSEN);
			}
			else if (ModeInfo.modeInfo.Speed == ModeInfo.S_480 || ModeInfo.modeInfo.Speed == ModeInfo.S_480x2)
			{
				AddToTraining(ControlDictionary["Тумблер скорости"], "Установите скорость передачи в положение 480", ControlElement.S_B_DEFAULT);
			}
			
			AddToTraining(ControlDictionary["АДВ перемычка О"], "Выберите режим на блоке АДВ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ДК перемычка РУЧ"], "Установите перемычку в положение РУЧ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Включатель"], "Включите питание для проверки работоспособности", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ПСП пермычка ШЛ"], "Установите перемычку ШЛ для проверки на себя", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["УСК перемычка контр"], "Установите перемычку КОНТР", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Включатель"], "Прибор к работе готов. Выключите питание", ControlElement.S_B_DEFAULT);
		}
		
		private function InitializeWorkingSequence()
		{
			if (ModeInfo.modeInfo.Speed == ModeInfo.S_2048)
			{
				AddToTraining(ControlDictionary["Тумблер скорости"], "Установите скорость передачи в положение 2048", ControlElement.S_B_CHOSEN);
			}
			else if (ModeInfo.modeInfo.Speed == ModeInfo.S_480 || ModeInfo.modeInfo.Speed == ModeInfo.S_480x2)
			{
				AddToTraining(ControlDictionary["Тумблер скорости"], "Установите скорость передачи в положение 480", ControlElement.S_B_DEFAULT);
			}
			AddToTraining(ControlDictionary["Включатель"], "Включите питание", ControlElement.S_B_CHOSEN);
		}
		
		private function CreateCommunication()
		{
			(ControlDictionary["Включатель"] as ControlElement).addEventListener(MouseEvent.CLICK, SwitchMouseClick);
			(ControlDictionary["ПСП пермычка ШЛ"] as ControlElement).addEventListener(MouseEvent.CLICK, SwitchMouseClick2);
			(ControlDictionary["УСК перемычка контр"] as ControlElement).addEventListener(MouseEvent.CLICK, SwitchMouseClick3);
		}
		
		private function SwitchMouseClick(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["Включатель"] as ControlElement).CurrentState;
			(ControlDictionary["П1 вкл зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ПСП сигн зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ТФК тест Б зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОИК квит зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["АДВ	сигн зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["АДВ	сигн Б зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function SwitchMouseClick2(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["ПСП пермычка ШЛ"] as ControlElement).CurrentState;
			if (newState == ControlElement.S_B_DEFAULT)
				newState = ControlElement.S_B_CHOSEN;
			else
				newState = ControlElement.S_B_DEFAULT;
			(ControlDictionary["ПСП сигн зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function SwitchMouseClick3(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["УСК перемычка контр"] as ControlElement).CurrentState;
			(ControlDictionary["АДВ	сигн Б зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
	}
}
