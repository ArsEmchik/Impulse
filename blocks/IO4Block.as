package blocks
{
	import controls.Bulb;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class IO4Block extends ImpulsUnit
	{
		public var redBulb1: RedBulb;
		public var greenBulb1: GreenBulb;
		public var Jumper1: Jumper;
		public var Jumper2: Jumper;
		public var Jumper3: Jumper;
		public var Jumper4: Jumper;
		public var Jumper5: Jumper;
		
		public var redBulb2: RedBulb;
		public var greenBulb2: GreenBulb;
		public var Jumper6: Jumper;
		public var Jumper7: Jumper;
		public var Jumper8: Jumper;
		public var Jumper9: Jumper;
		public var Jumper10: Jumper;
		
		public var redBulb3: RedBulb;
		public var greenBulb3: GreenBulb;
		public var Jumper11: Jumper;
		public var Jumper12: Jumper;
		public var Jumper13: Jumper;
		public var Jumper14: Jumper;
		public var Jumper15: Jumper;
		
		public var redBulb4: RedBulb;
		public var greenBulb4: GreenBulb;
		public var Jumper16: Jumper;
		public var Jumper17: Jumper;
		public var Jumper18: Jumper;
		public var Jumper19: Jumper;
		public var Jumper20: Jumper;
		
		public var Jumper21: Jumper;
		public var Jumper22: Jumper;
		public var Jumper23: Jumper;
		public var Jumper24: Jumper;
		public var Jumper25: Jumper;
		public var Jumper26: Jumper;
		public var Jumper27: Jumper;
		public var Jumper28: Jumper;
		
		public var redBulb5: RedBulb;
		public var Jumper29: Jumper;
		public var Jumper30: Jumper;
		public var Jumper31: Jumper;
		
		public var Jumper32: Jumper;
		public var Jumper33: Jumper;
		
		public var redBulb6: RedBulb;
		public var greenBulb5: GreenBulb;
		public var Jumper34: Jumper;
		public var Jumper35: Jumper;
		public var Jumper36: Jumper;
		public var Jumper37: Jumper;
		
		public var greenBulb6: GreenBulb;
		public var greenBulb7: GreenBulb;
		public var redBulb7: RedBulb;
		public var Jumper38: Jumper;
		public var Jumper39: Jumper;
		
		public var Jumper40: Jumper;
		public var Jumper41: Jumper;
		
		public var Jumper42: Jumper;
		
		public var redBulb8: RedBulb;
		public var greenBulb8: GreenBulb;
		public var redBulb9: RedBulb;
		public var Jumper43: Jumper;
		
		public var redBulb10: RedBulb;
		public var greenBulb9: GreenBulb;
		public var redBulb11: RedBulb;
		public var Jumper44: Jumper;
		
		public var redBulb12: RedBulb;
		public var greenBulb10: GreenBulb;
		public var redBulb13: RedBulb;
		public var Jumper45: Jumper;
		
		public var redBulb14: RedBulb;
		public var greenBulb11: GreenBulb;
		public var redBulb15: RedBulb;
		public var Jumper46: Jumper;
		
		public var redBulb16: RedBulb;
		public var greenBulb12: GreenBulb;
		public var Jumper47: Jumper;
		public var Jumper48: Jumper;
		public var Jumper49: Jumper;
		public var Jumper50: Jumper;
		public var turnOnOff: TurnOnOffMetal;
		
		public function IO4Block()
		{
			super();
			ControlDictionary["ЦА4_1 кр. лампа"] = redBulb1;
			ControlDictionary["ЦА4_1 зел. лампа"] = greenBulb1;
			ControlDictionary["ЦА4_1 перемычка 1"] = Jumper1;
			ControlDictionary["ЦА4_1 перемычка 0"] = Jumper2;
			ControlDictionary["ЦА4_1 перемычка Б"] = Jumper3;
			ControlDictionary["ЦА4_1 перемычка У"] = Jumper4;
			ControlDictionary["ЦА4_1 перемычка КТ"] = Jumper5;
			
			ControlDictionary["ЦА4_2 кр. лампа"] = redBulb2;
			ControlDictionary["ЦА4_2 зел. лампа"] = greenBulb2;
			ControlDictionary["ЦА4_2 перемычка 1"] = Jumper6;
			ControlDictionary["ЦА4_2 перемычка 0"] = Jumper7;
			ControlDictionary["ЦА4_2 перемычка Б"] = Jumper8;
			ControlDictionary["ЦА4_2 перемычка У"] = Jumper9;
			ControlDictionary["ЦА4_2 перемычка КТ"] = Jumper10;
			
			ControlDictionary["ЦА4_3 кр. лампа"] = redBulb3;
			ControlDictionary["ЦА4_3 зел. лампа"] = greenBulb3;
			ControlDictionary["ЦА4_3 перемычка 1"] = Jumper11;
			ControlDictionary["ЦА4_3 перемычка 0"] = Jumper12;
			ControlDictionary["ЦА4_3 перемычка Б"] = Jumper13;
			ControlDictionary["ЦА4_3 перемычка У"] = Jumper14;
			ControlDictionary["ЦА4_3 перемычка КТ"] = Jumper15;
			
			ControlDictionary["ЦА4_4 кр. лампа"] = redBulb4;
			ControlDictionary["ЦА4_4 зел. лампа"] = greenBulb4;
			ControlDictionary["ЦА4_4 перемычка 1"] = Jumper16;
			ControlDictionary["ЦА4_4 перемычка 0"] = Jumper17;
			ControlDictionary["ЦА4_4 перемычка Б"] = Jumper18;
			ControlDictionary["ЦА4_4 перемычка У"] = Jumper19;
			ControlDictionary["ЦА4_4 перемычка КТ"] = Jumper20;
			
			ControlDictionary["Крайняя перемычка 1"] = Jumper21;
			ControlDictionary["Крайняя перемычка 2"] = Jumper22;
			ControlDictionary["Крайняя перемычка 3"] = Jumper23;
			ControlDictionary["Крайняя перемычка 4"] = Jumper24;
			ControlDictionary["Крайняя перемычка 5"] = Jumper25;
			ControlDictionary["Крайняя перемычка 6"] = Jumper26;
			ControlDictionary["Крайняя перемычка 7"] = Jumper27;
			ControlDictionary["Крайняя перемычка 8"] = Jumper28;
			
			ControlDictionary["ФСЧ4 кр. лампа"] = redBulb5;
			ControlDictionary["ФСЧ4 перемычка А"] = Jumper29;
			ControlDictionary["ФСЧ4 перемычка 0"] = Jumper30;
			ControlDictionary["ФСЧ4 перемычка 1"] = Jumper31;
			
			ControlDictionary["Р4_1 перемычка 2-3"] = Jumper32;
			ControlDictionary["Р4_1 перемычка 1"] = Jumper33;
			
			ControlDictionary["ГА4 кр. лампа"] = redBulb6;
			ControlDictionary["ГА4 зел. лампа"] = greenBulb5;
			ControlDictionary["ГА4 перемычка 1"] = Jumper34;
			ControlDictionary["ГА4 перемычка 0"] = Jumper35;
			ControlDictionary["ГА4 перемычка Д"] = Jumper36;
			ControlDictionary["ГА4 перемычка 1 снизу"] = Jumper37;
			
			ControlDictionary["ГБ4 зел. лампа СИГНАЛ"] = greenBulb6;
			ControlDictionary["ГБ4 зел. лампа СИНХРОНИЗАЦИЯ"] = greenBulb7;
			ControlDictionary["ГБ4 кр. лампа"] = redBulb7;
			ControlDictionary["ГБ4 перемычка ШГ"] = Jumper38;
			ControlDictionary["ГБ4 перемычка 1"] = Jumper39;
			
			ControlDictionary["Р4_2 перемычка 2-3"] = Jumper40;
			ControlDictionary["Р4_2 перемычка 1"] = Jumper41;
			
			ControlDictionary["ВЧ4 перемычка 1"] = Jumper42;
			
			ControlDictionary["ЦБ4_1 кр. лампа"] = redBulb8;
			ControlDictionary["ЦБ4_1 зел. лампа"] = greenBulb8;
			ControlDictionary["ЦБ4_1 кр. лампа КТ"] = redBulb9;
			ControlDictionary["ЦБ4_1 перемычка ШГ"] = Jumper43;
			
			ControlDictionary["ЦБ4_2 кр. лампа"] = redBulb10;
			ControlDictionary["ЦБ4_2 зел. лампа"] = greenBulb9;
			ControlDictionary["ЦБ4_2 кр. лампа КТ"] = redBulb11;
			ControlDictionary["ЦБ4_2 перемычка ШГ"] = Jumper44;
			
			ControlDictionary["ЦБ4_3 кр. лампа"] = redBulb12;
			ControlDictionary["ЦБ4_3 зел. лампа"] = greenBulb10;
			ControlDictionary["ЦБ4_3 кр. лампа КТ"] = redBulb13;
			ControlDictionary["ЦБ4_3 перемычка ШГ"] = Jumper45;
			
			ControlDictionary["ЦБ4_4 кр. лампа"] = redBulb14;
			ControlDictionary["ЦБ4_4 зел. лампа"] = greenBulb11;
			ControlDictionary["ЦБ4_4 кр. лампа КТ"] = redBulb15;
			ControlDictionary["ЦБ4_4 перемычка ШГ"] = Jumper46;
			
			ControlDictionary["П2 кр. лампа"] = redBulb16;
			ControlDictionary["П2 зел. лампа"] = greenBulb12;
			ControlDictionary["П2 перемычка +- 6.3"] = Jumper47;
			ControlDictionary["П2 перемычка +27 +5"] = Jumper48;
			ControlDictionary["П2 перемычка +- 24"] = Jumper49;
			ControlDictionary["П2 перемычка СР.Т"] = Jumper50;
			ControlDictionary["П2 включатель"] = turnOnOff;
			InitializeControls();
			CreateCommunication();
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
					InitializeTrainingSequence();
					PrepareToWork();
					InitializeWorkingSequence();
					break;
				default: 
					throw new Error("Нет такого мода");
			}
			SetMode(ModeInfo.modeInfo.MainMode);
		}
		
		private function InitializeWorkingSequence()
		{
			AddToTraining(ControlDictionary["П2 включатель"], "Включите питание", ControlElement.S_B_CHOSEN);
		}
		
		private function InitializeTrainingSequence()
		{
			// первоначальное положение
			AddToTraining(ControlDictionary["ЦА4_1 перемычка 1"], "Вставте перемычку в положение '1' для настройки передающей части", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ЦА4_2 перемычка 1"], "Вставте перемычку в положение '1' для настройки передающей части", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ЦА4_3 перемычка 1"], "Вставте перемычку в положение '1' для настройки передающей части", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ЦА4_4 перемычка 1"], "Вставте перемычку в положение '1' для настройки передающей части", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ЦА4_1 перемычка Б"], "Вставте перемычку в положение 'Б' для настройки передающей части", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ЦА4_2 перемычка Б"], "Вставте перемычку в положение 'Б' для настройки передающей части", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ЦА4_3 перемычка Б"], "Вставте перемычку в положение 'Б' для настройки передающей части", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ЦА4_4 перемычка Б"], "Вставте перемычку в положение 'Б' для настройки передающей части", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ФСЧ4 перемычка А"], "Выберите асинхронный режим", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ГА4 перемычка 1"], "Установите режим работы канала ЦКС", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["П2 включатель"], "Включите питание для проверки работоспособности", ControlElement.S_B_CHOSEN);
			// проверка на себя
			AddToTraining(ControlDictionary["ГБ4 перемычка ШГ"], "Вставте перемычку ШГ для проверки на себя", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["П2 включатель"], "Прибор к работе готов. Выключите питание", ControlElement.S_B_DEFAULT);
		}
		
		private function CreateCommunication()
		{
			(ControlDictionary["П2 включатель"] as ControlElement).addEventListener(MouseEvent.CLICK, SwitchMouseClick1);
			(ControlDictionary["ГБ4 перемычка ШГ"] as ControlElement).addEventListener(MouseEvent.CLICK, SwitchMouseClick2);
			//(ControlDictionary["Б Включатель"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick2)
			//(ControlDictionary["ФП включатель"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick);
		}
		
		private function SwitchMouseClick1(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["П2 включатель"] as ControlElement).CurrentState;
			(ControlDictionary["П2 зел. лампа"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ГБ4 зел. лампа СИНХРОНИЗАЦИЯ"] as ControlElement).GoToState(newState, false);
			if (newState == ControlElement.S_B_DEFAULT)
			{
				var item:String;
				for (item in ControlDictionary)
				{
					if ((ControlDictionary[item] as Bulb) != null)
					{
						(ControlDictionary[item] as ControlElement).GoToState(ControlElement.S_B_DEFAULT, false)
					}
				}
			}
			else
			{
				SwitchMouseClick2(null);
			}
		}
		
		private function SwitchMouseClick2(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["ГБ4 перемычка ШГ"] as ControlElement).CurrentState;
			(ControlDictionary["ГА4 зел. лампа"] as ControlElement).GoToState(newState);
			(ControlDictionary["ГБ4 зел. лампа СИГНАЛ"] as ControlElement).GoToState(newState);
			(ControlDictionary["ЦБ4_1 зел. лампа"] as ControlElement).GoToState(newState);
			(ControlDictionary["ЦБ4_2 зел. лампа"] as ControlElement).GoToState(newState);
			(ControlDictionary["ЦБ4_3 зел. лампа"] as ControlElement).GoToState(newState);
			(ControlDictionary["ЦБ4_4 зел. лампа"] as ControlElement).GoToState(newState);
			
			(ControlDictionary["ЦА4_1 зел. лампа"] as ControlElement).GoToState(newState);
			(ControlDictionary["ЦА4_2 зел. лампа"] as ControlElement).GoToState(newState);
			(ControlDictionary["ЦА4_3 зел. лампа"] as ControlElement).GoToState(newState);
			(ControlDictionary["ЦА4_4 зел. лампа"] as ControlElement).GoToState(newState);
		
		}
	}
}
