package blocks {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import fl.controls.Button;
	import blocks.ImpulsUnit;
	
	public class IL34Block extends  ImpulsUnit {
		
		
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
			
			InitializeControls();
			CreateCommunication();
			// constructor code
		}
		
		public override function InitializeImpulsUnit(pDecriptionField: TextField, outButton: Button)
		{
			super.InitializeImpulsUnit(pDecriptionField,outButton);
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
			this.AddToTraining(ControlDictionary["АДВ перемычка О"],"Выберите режим на блоке АДВ",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["ДК перемычка РУЧ"],"Установите перемычку в положение РУЧ",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Включатель"],"Включите тумблер",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["ПСП пермычка ШЛ"],"Установите перемычку ШЛ для проверки на себя",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["УСК перемычка контр"],"Установите перемычку КОНТР",ControlElement.S_B_CHOSEN);
			//this.AddToTraining(ControlDictionary["ПСП пермычка ШЛ"],"Вставте Перемычку",ControlElement.S_B_CHOSEN);
		}
		private function InitializeWorkingSequence()
		{
			//this.AddToTraining(ControlDictionary["Включатель"],"Включите тумблер",ControlElement.S_B_CHOSEN);
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
