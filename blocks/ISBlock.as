package blocks {
	
	import flash.display.MovieClip;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import fl.controls.Button;
	
	public class ISBlock extends ImpulsUnit {
		
		
		public function ISBlock() {
			super();
			this.ControlDictionary["Звуковой вызов"]=turnSwitch2;
			this.ControlDictionary["Включатель"]=turnSwitch1;
			
			this.ControlDictionary["ПВУ УСС зел. лампочка 1"]=greenBulb1;
			this.ControlDictionary["ПВУ УСС зел. лампочка 2"]=greenBulb2;
			this.ControlDictionary["ПВУ ВА зел. лампочка"]=greenBulb3;
			this.ControlDictionary["ПВУ ПСС зел. лампочка 1"]=greenBulb4;
			this.ControlDictionary["ПВУ ПСС зел. лампочка 2"]=greenBulb5;
			this.ControlDictionary["ПВУ ПСС зел. лампочка 3"]=greenBulb6;
			this.ControlDictionary["ПВУ ЛСС зел. лампочка 1"]=greenBulb7;
			this.ControlDictionary["ПВУ ЛСС зел. лампочка 2"]=greenBulb8;
			this.ControlDictionary["ПВУ ЛСС зел. лампочка 3"]=greenBulb9;
			this.ControlDictionary["ПС вкл. пит. зел. лампочка"]=greenBulb10;
			
			this.ControlDictionary["ПВУ ПСС кр. лампочка"]=redBulb1;
			this.ControlDictionary["ПВУ ЛСС кр. лампочка"]=redBulb2;
			this.ControlDictionary["ПС кр. лампочка"]=redBulb3;
			
			this.ControlDictionary["У ОК перемычка А"]=jumper1;
			this.ControlDictionary["У ОК перемычка Б"]=jumper2;
			this.ControlDictionary["У оконечная перемычка"]=jumper3;
			this.ControlDictionary["У промежуточная перемычка"]=jumper4;
			this.ControlDictionary["В ТА-ВА перемычка 1"]=jumper5;
			this.ControlDictionary["В ИС-ТА перемычка 1"]=jumper6;
			this.ControlDictionary["В ТА-ВА перемычка 2"]=jumper7;
			this.ControlDictionary["В ИС-ТА перемычка 2"]=jumper8;
			this.ControlDictionary["ПКВ-1 х10 пермычка 0"]=jumper9;
			this.ControlDictionary["ПКВ-1 х10 пермычка 1"]=jumper10;
			this.ControlDictionary["ПКВ-1 х10 пермычка 2"]=jumper11;
			this.ControlDictionary["ПКВ-1 х1 пермычка 0"]=jumper12;
			this.ControlDictionary["ПКВ-1 х1 пермычка 1"]=jumper13;
			this.ControlDictionary["ПКВ-1 х1 пермычка 2"]=jumper14;
			this.ControlDictionary["ПКВ-1 х1 пермычка 3"]=jumper15;
			this.ControlDictionary["ПКВ-1 х1 пермычка 4"]=jumper16;
			this.ControlDictionary["ПКВ-1 х1 пермычка 5"]=jumper17;
			this.ControlDictionary["ПКВ-1 х1 пермычка 6"]=jumper18;
			this.ControlDictionary["ПКВ-1 х1 пермычка 7"]=jumper19;
			this.ControlDictionary["ПКВ-1 х1 пермычка 8"]=jumper20;
			this.ControlDictionary["ПКВ-1 х1 пермычка 9"]=jumper21;
			this.ControlDictionary["ПКВ-2 х10 пермычка 0"]=jumper22;
			this.ControlDictionary["ПКВ-2 х10 пермычка 1"]=jumper23;
			this.ControlDictionary["ПКВ-2 х10 пермычка 2"]=jumper24;
			this.ControlDictionary["ПКВ-2 х1 пермычка 0"]=jumper25;
			this.ControlDictionary["ПКВ-2 х1 пермычка 1"]=jumper26;
			this.ControlDictionary["ПКВ-2 х1 пермычка 2"]=jumper27;
			this.ControlDictionary["ПКВ-2 х1 пермычка 3"]=jumper28;
			this.ControlDictionary["ПКВ-2 х1 пермычка 4"]=jumper29;
			this.ControlDictionary["ПКВ-2 х1 пермычка 5"]=jumper30;
			this.ControlDictionary["ПКВ-2 х1 пермычка 6"]=jumper31;
			this.ControlDictionary["ПКВ-2 х1 пермычка 7"]=jumper32;
			this.ControlDictionary["ПКВ-2 х1 пермычка 8"]=jumper33;
			this.ControlDictionary["ПКВ-2 х1 пермычка 9"]=jumper34;
			this.ControlDictionary["ПС +9+5 пермычка"]=jumper35;
			this.ControlDictionary["ПС +12-12 пермычка"]=jumper36;
			this.ControlDictionary["ПС +7-7 пермычка"]=jumper37;
			this.ControlDictionary["ПС источник напряжения пермычка"]=jumper38;
			
			this.ControlDictionary["ПССА кнопка УССА"]=button1;
			this.ControlDictionary["ПССА кнопка УССБ"]=button2;
			this.ControlDictionary["ПССА кнопка ВА"]=button3;
			this.ControlDictionary["ПССА кнопка 4ПР1"]=button4;
			this.ControlDictionary["ПССА кнопка ЛССА"]=button5;
			this.ControlDictionary["ПССА кнопка ЛССБ"]=button6;
			this.ControlDictionary["ПССБ кнопка УССА"]=button7;
			this.ControlDictionary["ПССБ кнопка УССБ"]=button8;
			this.ControlDictionary["ПССБ кнопка ВА"]=button9;
			this.ControlDictionary["ПССБ кнопка 4ПР1"]=button10;
			this.ControlDictionary["ПССБ кнопка ЛССА"]=button11;
			this.ControlDictionary["ПССБ кнопка ЛССБ"]=button12;
			this.ControlDictionary["ВА кнопка УССА"]=button13;
			this.ControlDictionary["ВА кнопка УССБ"]=button14;
			this.ControlDictionary["ВА кнопка ЛССА"]=button15;
			this.ControlDictionary["ВА кнопка ЛССБ"]=button16;
			this.ControlDictionary["Кнопка А1"]=button17;
			this.ControlDictionary["Кнопка Б1"]=button18;
			this.ControlDictionary["Пустая кнопка1"]=button19;
			this.ControlDictionary["Кнопка А2"]=button20;
			this.ControlDictionary["Кнопка Б2"]=button21;
			this.ControlDictionary["Кнопка А3"]=button22;
			this.ControlDictionary["Кнопка Б3"]=button23;
			this.ControlDictionary["Кнопка А4"]=button24;
			this.ControlDictionary["Кнопка Б4"]=button25;
			this.ControlDictionary["Пустая кнопка2"]=button26;
			this.ControlDictionary["Кнопка А5"]=button27;
			this.ControlDictionary["Кнопка Б5"]=button28;
			this.ControlDictionary["Кнопка А6"]=button29;
			this.ControlDictionary["Кнопка Б6"]=button30;
			this.ControlDictionary["Кнопка ГИ1"]=button27;
			this.ControlDictionary["Кнопка ГИ2"]=button28;
			this.ControlDictionary["Кнопка ЦГ"]=button29;
			this.ControlDictionary["Пустая кнопка3"]=button30;
			
			InitializeControls();
			CreateCommunication();
		}
		
		public override function InitializeImpulsUnit(pDecriptionField: TextField, outButton: Button, txtNext:TextField)
		{
			super.InitializeImpulsUnit(pDecriptionField,outButton,txtNext);
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
				default: throw new Error("Нет такого мода");
			}
			
			SetMode(ModeInfo.modeInfo.MainMode);
		}
		
		private function InitializeTrainingSequence()
		{
			this.AddToTraining(ControlDictionary["Звуковой вызов"],"Включите тумблер ЗВУКОВОЙ ВЫЗОВ",ControlElement.S_B_CHOSEN);	
			this.AddToTraining(ControlDictionary["У ОК перемычка А"],"Установите режим оконечной станции",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Включатель"],"Включите питание для проверки работоспособности",ControlElement.S_B_CHOSEN);	
			this.AddToTraining(ControlDictionary["Включатель"],"Прибор к работе готов. Выключите питание",ControlElement.S_B_DEFAULT);
		}
		
		private function InitializeWorkingSequence()
		{
			this.AddToTraining(ControlDictionary["Включатель"],"Включите питание",ControlElement.S_B_CHOSEN);
		}		
		
		private function CreateCommunication()
		{
			(ControlDictionary["Включатель"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick);
		}
		
		private function SwitchMouseClick(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["Включатель"] as ControlElement).CurrentState;
			(ControlDictionary["ПС вкл. пит. зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
	}
	
}
