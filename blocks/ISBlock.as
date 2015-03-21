package blocks
{
	import controls.Switch;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class ISBlock extends ImpulsUnit
	{
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
		public var jumper27:Jumper;
		public var jumper28:Jumper;
		public var jumper29:Jumper;
		public var jumper30:Jumper;
		public var jumper31:Jumper;
		public var jumper32:Jumper;
		public var jumper33:Jumper;
		public var jumper34:Jumper;
		public var jumper35:Jumper;
		public var jumper36:Jumper;
		public var jumper37:Jumper;
		public var jumper38:Jumper;
		
		public var greenBulb1:GreenBulb;
		public var greenBulb2:GreenBulb;
		public var greenBulb3:GreenBulb;
		public var greenBulb4:GreenBulb;
		public var greenBulb5:GreenBulb;
		public var greenBulb6:GreenBulb;
		public var greenBulb7:GreenBulb;
		public var greenBulb8:GreenBulb;
		public var greenBulb9:GreenBulb;
		public var greenBulb10:GreenBulb;
		public var greenBulb11:GreenBulb;
		
		public var redBulb1:RedBulb;
		public var redBulb2:RedBulb;
		public var redBulb3:RedBulb;
		
		public var turnSwitch1:TurnOnOffMetal;
		public var turnSwitch2:TurnOnOffMetal;
		
		public var button1:Switch;
		public var button2:Switch;
		public var button3:Switch;
		public var button4:Switch;
		public var button5:Switch;
		public var button6:Switch;
		public var button7:Switch;
		public var button8:Switch;
		public var button9:Switch;
		public var button10:Switch;
		public var button11:Switch;
		public var button12:Switch;
		public var button13:Switch;
		public var button14:Switch;
		public var button15:Switch;
		public var button16:Switch;
		public var button17:Switch;
		public var button18:Switch;
		public var button19:Switch;
		public var button20:Switch;
		public var button21:Switch;
		public var button22:Switch;
		public var button23:Switch;
		public var button24:Switch;
		public var button25:Switch;
		public var button26:Switch;
		public var button27:Switch;
		public var button28:Switch;
		public var button29:Switch;
		public var button30:Switch;
		public var button31:Switch;
		public var button32:Switch;
		public var button33:Switch;
		public var button34:Switch;
		
		public function ISBlock()
		{
			super();
			ControlDictionary["Звуковой вызов"] = turnSwitch2;
			ControlDictionary["Включатель"] = turnSwitch1;
			
			ControlDictionary["ПВУ УСС зел. лампочка 1"] = greenBulb1;
			ControlDictionary["ПВУ УСС зел. лампочка 2"] = greenBulb2;
			ControlDictionary["ПВУ ВА зел. лампочка"] = greenBulb3;
			ControlDictionary["ПВУ ПСС зел. лампочка 1"] = greenBulb4;
			ControlDictionary["ПВУ ПСС зел. лампочка 2"] = greenBulb5;
			ControlDictionary["ПВУ ПСС зел. лампочка 3"] = greenBulb6;
			ControlDictionary["ПВУ ЛСС зел. лампочка 1"] = greenBulb7;
			ControlDictionary["ПВУ ЛСС зел. лампочка 2"] = greenBulb8;
			ControlDictionary["ПВУ ЛСС зел. лампочка 3"] = greenBulb9;
			ControlDictionary["ПС вкл. пит. зел. лампочка"] = greenBulb10;
			
			ControlDictionary["ПВУ ПСС кр. лампочка"] = redBulb1;
			ControlDictionary["ПВУ ЛСС кр. лампочка"] = redBulb2;
			ControlDictionary["ПС кр. лампочка"] = redBulb3;
			
			ControlDictionary["У ОК перемычка А"] = jumper1;
			ControlDictionary["У ОК перемычка Б"] = jumper2;
			ControlDictionary["У оконечная перемычка"] = jumper3;
			ControlDictionary["У промежуточная перемычка"] = jumper4;
			ControlDictionary["В ТА-ВА перемычка 1"] = jumper5;
			ControlDictionary["В ИС-ТА перемычка 1"] = jumper6;
			ControlDictionary["В ТА-ВА перемычка 2"] = jumper7;
			ControlDictionary["В ИС-ТА перемычка 2"] = jumper8;
			ControlDictionary["ПКВ-1 х10 пермычка 0"] = jumper9;
			ControlDictionary["ПКВ-1 х10 пермычка 1"] = jumper10;
			ControlDictionary["ПКВ-1 х10 пермычка 2"] = jumper11;
			ControlDictionary["ПКВ-1 х1 пермычка 0"] = jumper12;
			ControlDictionary["ПКВ-1 х1 пермычка 1"] = jumper13;
			ControlDictionary["ПКВ-1 х1 пермычка 2"] = jumper14;
			ControlDictionary["ПКВ-1 х1 пермычка 3"] = jumper15;
			ControlDictionary["ПКВ-1 х1 пермычка 4"] = jumper16;
			ControlDictionary["ПКВ-1 х1 пермычка 5"] = jumper17;
			ControlDictionary["ПКВ-1 х1 пермычка 6"] = jumper18;
			ControlDictionary["ПКВ-1 х1 пермычка 7"] = jumper19;
			ControlDictionary["ПКВ-1 х1 пермычка 8"] = jumper20;
			ControlDictionary["ПКВ-1 х1 пермычка 9"] = jumper21;
			ControlDictionary["ПКВ-2 х10 пермычка 0"] = jumper22;
			ControlDictionary["ПКВ-2 х10 пермычка 1"] = jumper23;
			ControlDictionary["ПКВ-2 х10 пермычка 2"] = jumper24;
			ControlDictionary["ПКВ-2 х1 пермычка 0"] = jumper25;
			ControlDictionary["ПКВ-2 х1 пермычка 1"] = jumper26;
			ControlDictionary["ПКВ-2 х1 пермычка 2"] = jumper27;
			ControlDictionary["ПКВ-2 х1 пермычка 3"] = jumper28;
			ControlDictionary["ПКВ-2 х1 пермычка 4"] = jumper29;
			ControlDictionary["ПКВ-2 х1 пермычка 5"] = jumper30;
			ControlDictionary["ПКВ-2 х1 пермычка 6"] = jumper31;
			ControlDictionary["ПКВ-2 х1 пермычка 7"] = jumper32;
			ControlDictionary["ПКВ-2 х1 пермычка 8"] = jumper33;
			ControlDictionary["ПКВ-2 х1 пермычка 9"] = jumper34;
			ControlDictionary["ПС +9+5 пермычка"] = jumper35;
			ControlDictionary["ПС +12-12 пермычка"] = jumper36;
			ControlDictionary["ПС +7-7 пермычка"] = jumper37;
			ControlDictionary["ПС источник напряжения пермычка"] = jumper38;
			
			ControlDictionary["ПССА кнопка УССА"] = button1;
			ControlDictionary["ПССА кнопка УССБ"] = button2;
			ControlDictionary["ПССА кнопка ВА"] = button3;
			ControlDictionary["ПССА кнопка 4ПР1"] = button4;
			ControlDictionary["ПССА кнопка ЛССА"] = button5;
			ControlDictionary["ПССА кнопка ЛССБ"] = button6;
			ControlDictionary["ПССБ кнопка УССА"] = button7;
			ControlDictionary["ПССБ кнопка УССБ"] = button8;
			ControlDictionary["ПССБ кнопка ВА"] = button9;
			ControlDictionary["ПССБ кнопка 4ПР1"] = button10;
			ControlDictionary["ПССБ кнопка ЛССА"] = button11;
			ControlDictionary["ПССБ кнопка ЛССБ"] = button12;
			ControlDictionary["ВА кнопка УССА"] = button13;
			ControlDictionary["ВА кнопка УССБ"] = button14;
			ControlDictionary["ВА кнопка ЛССА"] = button15;
			ControlDictionary["ВА кнопка ЛССБ"] = button16;
			ControlDictionary["Кнопка А1"] = button17;
			ControlDictionary["Кнопка Б1"] = button18;
			ControlDictionary["Пустая кнопка1"] = button19;
			ControlDictionary["Кнопка А2"] = button20;
			ControlDictionary["Кнопка Б2"] = button21;
			ControlDictionary["Кнопка А3"] = button22;
			ControlDictionary["Кнопка Б3"] = button23;
			ControlDictionary["Кнопка А4"] = button24;
			ControlDictionary["Кнопка Б4"] = button25;
			ControlDictionary["Пустая кнопка2"] = button26;
			ControlDictionary["Кнопка А5"] = button27;
			ControlDictionary["Кнопка Б5"] = button28;
			ControlDictionary["Кнопка А6"] = button29;
			ControlDictionary["Кнопка Б6"] = button30;
			ControlDictionary["Кнопка ГИ1"] = button27;
			ControlDictionary["Кнопка ГИ2"] = button28;
			ControlDictionary["Кнопка ЦГ"] = button29;
			ControlDictionary["Пустая кнопка3"] = button30;
			
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
		
		private function InitializeTrainingSequence()
		{
			AddToTraining(ControlDictionary["Звуковой вызов"], "Включите тумблер ЗВУКОВОЙ ВЫЗОВ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["У ОК перемычка А"], "Установите режим оконечной станции", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Включатель"], "Включите питание для проверки работоспособности", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["Включатель"], "Прибор к работе готов. Выключите питание", ControlElement.S_B_DEFAULT);
		}
		
		private function InitializeWorkingSequence()
		{
			AddToTraining(ControlDictionary["Включатель"], "Включите питание", ControlElement.S_B_CHOSEN);
		}
		
		private function CreateCommunication()
		{
			(ControlDictionary["Включатель"] as ControlElement).addEventListener(MouseEvent.CLICK, SwitchMouseClick);
		}
		
		private function SwitchMouseClick(e:MouseEvent)
		{
			var newState:int = (ControlDictionary["Включатель"] as ControlElement).CurrentState;
			(ControlDictionary["ПС вкл. пит. зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
	}

}
