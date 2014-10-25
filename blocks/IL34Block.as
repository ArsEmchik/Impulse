﻿package blocks {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import fl.controls.Button;
	import blocks.ImpulsUnit;
	
	public class IL34Block extends  ImpulsUnit {
		/*private var greenBulb1: GreenBulb;
		private var greenBulb2: GreenBulb;
		private var greenBulb3: GreenBulb;
		private var greenBulb4: GreenBulb;
		private var greenBulb5: GreenBulb;
		private var greenBulb6: GreenBulb;
		private var greenBulb7: GreenBulb;
		private var greenBulb8: GreenBulb;
		private var greenBulb9: GreenBulb;
		
		private var redBulb1: RedBulb;
		private var redBulb2: RedBulb;
		private var redBulb3: RedBulb;
		private var redBulb4: RedBulb;
		private var redBulb5: RedBulb;
		private var redBulb6: RedBulb;
		private var redBulb7: RedBulb;
		
		private var jumper1: Jumper;
		private var jumper2: Jumper;
		private var jumper3: Jumper;
		private var jumper4: Jumper;
		private var jumper5: Jumper;
		private var jumper6: Jumper;
		private var jumper7: Jumper;
		private var jumper8: Jumper;
		private var jumper9: Jumper;
		private var jumper10: Jumper;
		private var jumper11: Jumper;
		private var jumper12: Jumper;
		private var jumper13: Jumper;
		private var jumper14: Jumper;
		private var jumper15: Jumper;
		private var jumper16: Jumper;
		private var jumper17: Jumper;
		private var jumper18: Jumper;
		private var jumper19: Jumper;
		private var jumper20: Jumper;
		private var jumper21: Jumper;
		private var jumper22: Jumper;
		private var jumper23: Jumper;
		private var jumper24: Jumper;
		private var jumper25: Jumper;
		private var jumper26: Jumper;
		
		private var turnSwitch: TurnOnOffMetal;
		private var tumble: IIL34Tumble;*/
		
		public function IL34Block() {
			super();
			this.ControlDictionary["Включатель"]=turnSwitch;
			
			this.ControlDictionary["ПСП сигн зел. лампочка"]=greenBulb1;
			this.ControlDictionary["ЦКС вх зел. лампочка"]=greenBulb2;
			this.ControlDictionary["ЦКС вых зел. лампочка"]=greenBulb3;
			this.ControlDictionary["ТФК тест Б зел. лампочка"]=greenBulb4;
			this.ControlDictionary["ТФК тест ВХ ВС зел. лампочка"]=greenBulb5;
			this.ControlDictionary["ОИК квит зел. лампочка"]=greenBulb6;
			this.ControlDictionary["АДВ	сигн зел. лампочка"]=greenBulb7;
			this.ControlDictionary["АДВ	сигн Б зел. лампочка"]=greenBulb8;
			this.ControlDictionary["П1 вкл зел. лампочка"]=greenBulb9;
			
			this.ControlDictionary["ПСП кр. лампочка"]=redBulb1;
			this.ControlDictionary["ФСЧ кр. лампочка"]=redBulb2;
			this.ControlDictionary["АДВ кр. лампочка"]=redBulb3;
			this.ControlDictionary["УСК Ф кр. лампочка"]=redBulb4;
			this.ControlDictionary["УСК Т кр. лампочка"]=redBulb5;
			this.ControlDictionary["ДК кр. лампочка"]=redBulb6;
			this.ControlDictionary["П1 кр. лампочка"]=redBulb7;
			
			this.ControlDictionary["ПСП пермычка ШЛ"]=jumper1;
			this.ControlDictionary["ПСП пермычка 3"]=jumper2;
			this.ControlDictionary["ПСП пермычка 1"]=jumper3;
			this.ControlDictionary["ЦКС пермычка вкл"]=jumper4;
			this.ControlDictionary["ТФК перемычка 5"]=jumper5;
			this.ControlDictionary["ТФК перемычка 4"]=jumper6;
			this.ControlDictionary["ТФК перемычка 3"]=jumper7;
			this.ControlDictionary["ТФК перемычка 2"]=jumper8;
			this.ControlDictionary["ТФК перемычка 1"]=jumper9;
			this.ControlDictionary["АДВ перемычка П"]=jumper10;
			this.ControlDictionary["АДВ перемычка О"]=jumper11;
			this.ControlDictionary["АДВ перемычка 1"]=jumper12;
			this.ControlDictionary["УСК перемычка Ф"]=jumper13;
			this.ControlDictionary["УСК перемычка Т"]=jumper14;
			this.ControlDictionary["УСК перемычка контр"]=jumper15;
			this.ControlDictionary["ДК перемычка АВТ"]=jumper16;
			this.ControlDictionary["ДК перемычка РУЧ"]=jumper17;
			this.ControlDictionary["ДК перемычка 1/8"]=jumper18;
			this.ControlDictionary["ДК перемычка 1/7"]=jumper19;
			this.ControlDictionary["ДК перемычка 1/6"]=jumper20;
			this.ControlDictionary["ДК перемычка 1/5"]=jumper21;
			this.ControlDictionary["ДК перемычка 1/4"]=jumper22;
			this.ControlDictionary["П1 перемычка 24"]=jumper23;
			this.ControlDictionary["П1 перемычка 27"]=jumper24;
			this.ControlDictionary["П1 перемычка 9"]=jumper25;
			this.ControlDictionary["П1 перемычка 5"]=jumper26;
			
			this.ControlDictionary["Тумблер скорости"]=tumble;
			
			InitializeControls();
			CreateCommunication();
			// constructor code
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
					//InitializeTrainingSequence();
					//PrepareToWork();
					InitializeWorkingSequence();
					break;
				default: throw new Error("Нет такого мода");
			}
			
			SetMode(ModeInfo.modeInfo.MainMode);
		}
		
		private function InitializeTrainingSequence()
		{
			// выбрать скорость 
			if (ModeInfo.modeInfo.Speed==ModeInfo.S_2048)
			{
				this.AddToTraining(ControlDictionary["Тумблер скорости"],"Установите скорость передачи в положение 2048",ControlElement.S_B_CHOSEN);
			}
			else if (ModeInfo.modeInfo.Speed==ModeInfo.S_480 || ModeInfo.modeInfo.Speed==ModeInfo.S_480x2)
			{
				this.AddToTraining(ControlDictionary["Тумблер скорости"],"Установите скорость передачи в положение 480",ControlElement.S_B_DEFAULT);				
			}

			this.AddToTraining(ControlDictionary["АДВ перемычка О"],"Выберите режим на блоке АДВ",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["ДК перемычка РУЧ"],"Установите перемычку в положение РУЧ",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Включатель"],"Включите питание для проверки работоспособности",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["ПСП пермычка ШЛ"],"Установите перемычку ШЛ для проверки на себя",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["УСК перемычка контр"],"Установите перемычку КОНТР",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Включатель"],"Прибор к работе готов. Выключите питание",ControlElement.S_B_DEFAULT);
		}
		private function InitializeWorkingSequence()
		{
			if (ModeInfo.modeInfo.Speed==ModeInfo.S_2048)
			{
				this.AddToTraining(ControlDictionary["Тумблер скорости"],"Установите скорость передачи в положение 2048",ControlElement.S_B_CHOSEN);
			}
			else if (ModeInfo.modeInfo.Speed==ModeInfo.S_480 || ModeInfo.modeInfo.Speed==ModeInfo.S_480x2)
			{
				this.AddToTraining(ControlDictionary["Тумблер скорости"],"Установите скорость передачи в положение 480",ControlElement.S_B_DEFAULT);				
			}
			this.AddToTraining(ControlDictionary["Включатель"],"Включите питание",ControlElement.S_B_CHOSEN);
		}		
		
		private function CreateCommunication()
		{
			(ControlDictionary["Включатель"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick);
			(ControlDictionary["ПСП пермычка ШЛ"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick2);
			(ControlDictionary["УСК перемычка контр"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick3);
		}
		
		private function SwitchMouseClick(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["Включатель"] as ControlElement).CurrentState;
			(ControlDictionary["П1 вкл зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ПСП сигн зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ТФК тест Б зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОИК квит зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["АДВ	сигн зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["АДВ	сигн Б зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		
		private function SwitchMouseClick2(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["ПСП пермычка ШЛ"] as ControlElement).CurrentState;
			if (newState==ControlElement.S_B_DEFAULT)
				newState=ControlElement.S_B_CHOSEN;
			else newState=ControlElement.S_B_DEFAULT;
			(ControlDictionary["ПСП сигн зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
		
		private function SwitchMouseClick3(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["УСК перемычка контр"] as ControlElement).CurrentState;
			(ControlDictionary["АДВ	сигн Б зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
	}
}
