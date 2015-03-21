package blocks
{
	import controls.ComplexSwitcher;
	import controls.IL34Button;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class ITABlock extends ImpulsUnit
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
		public var jumper39:Jumper;
		public var jumper40:Jumper;
		public var jumper41:Jumper;
		public var jumper42:Jumper;
		public var jumper43:Jumper;
		public var jumper44:Jumper;
		public var jumper45:Jumper;
		public var jumper46:Jumper;
		public var jumper47:Jumper;
		public var jumper48:Jumper;
		public var jumper49:Jumper;
		public var jumper50:Jumper;
		public var jumper51:Jumper;
		public var jumper52:Jumper;
		public var jumper53:Jumper;
		public var jumper54:Jumper;
		public var jumper55:Jumper;
		public var jumper56:Jumper;
		public var jumper57:Jumper;
		public var jumper58:Jumper;
		public var jumper59:Jumper;
		public var jumper60:Jumper;
		public var jumper61:Jumper;
		public var jumper62:Jumper;
		public var jumper63:Jumper;
		public var jumper64:Jumper;
		public var jumper65:Jumper;
		public var jumper66:Jumper;
		public var jumper67:Jumper;
		public var jumper68:Jumper;
		public var jumper69:Jumper;
		public var jumper70:Jumper;
		
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
		public var greenBulb12:GreenBulb;
		public var greenBulb13:GreenBulb;
		public var greenBulb14:GreenBulb;
		
		public var redBulb1:RedBulb;
		public var redBulb2:RedBulb;
		public var redBulb3:RedBulb;
		public var redBulb4:RedBulb;
		public var redBulb5:RedBulb;
		public var redBulb6:RedBulb;
		public var redBulb7:RedBulb;
		public var redBulb8:RedBulb;
		public var redBulb9:RedBulb;
		public var redBulb10:RedBulb;
		public var redBulb11:RedBulb;
		public var redBulb12:RedBulb;
		public var redBulb13:RedBulb;
		public var redBulb14:RedBulb;
		public var redBulb15:RedBulb;
		public var redBulb16:RedBulb;
		public var redBulb17:RedBulb;
		public var redBulb18:RedBulb;
		public var redBulb19:RedBulb;
		public var redBulb20:RedBulb;
		public var redBulb21:RedBulb;
		public var redBulb22:RedBulb;
		public var redBulb23:RedBulb;
		public var redBulb24:RedBulb;
		public var redBulb25:RedBulb;
		public var redBulb26:RedBulb;
		
		public var turnSwitch:TurnOnOffMetal;
		public var switcher1:ComplexSwitcher;
		public var button:IL34Button;
		
		public function ITABlock()
		{
			super();
			ControlDictionary["Включатель"] = turnSwitch;
			ControlDictionary["Белая конпка"] = button;
			
			ControlDictionary["ОП-1 сигн зел. лампочка 1"] = greenBulb1;
			ControlDictionary["ОП-1 сигн зел. лампочка 2"] = greenBulb2;
			ControlDictionary["ОП-1 сигн зел. лампочка 3"] = greenBulb3;
			ControlDictionary["ОП-1 сигн зел. лампочка 4"] = greenBulb4;
			ControlDictionary["ОП-2 сигн зел. лампочка 1"] = greenBulb5;
			ControlDictionary["ОП-2 сигн зел. лампочка 2"] = greenBulb6;
			ControlDictionary["ОП-2 сигн зел. лампочка 3"] = greenBulb7;
			ControlDictionary["ОП-2 сигн зел. лампочка 4"] = greenBulb8;
			ControlDictionary["ОП-3 сигн зел. лампочка 1"] = greenBulb9;
			ControlDictionary["ОП-3 сигн зел. лампочка 2"] = greenBulb10;
			ControlDictionary["ОП-3 сигн зел. лампочка 3"] = greenBulb11;
			ControlDictionary["ОП-3 сигн зел. лампочка 4"] = greenBulb12;
			ControlDictionary["ОГК контроль зел. лампочка"] = greenBulb13;
			ControlDictionary["П6 вкл зел. лампочка"] = greenBulb14;
			
			ControlDictionary["ОАК-1 кр. лампочка 1"] = redBulb1;
			ControlDictionary["ОАК-1 кр. лампочка 2"] = redBulb2;
			ControlDictionary["ОП-1 кр. лампочка 1"] = redBulb3;
			ControlDictionary["ОП-1 кр. лампочка 2"] = redBulb4;
			ControlDictionary["ОП-1 кр. лампочка 3"] = redBulb5;
			ControlDictionary["ОП-1 кр. лампочка 4"] = redBulb6;
			ControlDictionary["ОАК-2 кр. лампочка 1"] = redBulb7;
			ControlDictionary["ОАК-2 кр. лампочка 2"] = redBulb8;
			ControlDictionary["ОАК-3 кр. лампочка 1"] = redBulb9;
			ControlDictionary["ОАК-3 кр. лампочка 2"] = redBulb10;
			ControlDictionary["ОП-2 кр. лампочка 1"] = redBulb11;
			ControlDictionary["ОП-2 кр. лампочка 2"] = redBulb12;
			ControlDictionary["ОП-2 кр. лампочка 3"] = redBulb13;
			ControlDictionary["ОП-2 кр. лампочка 4"] = redBulb14;
			ControlDictionary["ОАК-4 кр. лампочка 1"] = redBulb15;
			ControlDictionary["ОАК-4 кр. лампочка 2"] = redBulb16;
			ControlDictionary["ОАК-5 кр. лампочка 1"] = redBulb17;
			ControlDictionary["ОАК-5 кр. лампочка 2"] = redBulb18;
			ControlDictionary["ОП-3 кр. лампочка 1"] = redBulb19;
			ControlDictionary["ОП-3 кр. лампочка 2"] = redBulb20;
			ControlDictionary["ОП-3 кр. лампочка 3"] = redBulb21;
			ControlDictionary["ОП-3 кр. лампочка 4"] = redBulb22;
			ControlDictionary["ОГК кр. лампочка 1"] = redBulb23;
			ControlDictionary["ОГК кр. лампочка 2"] = redBulb24;
			ControlDictionary["ОГК кр. лампочка 3"] = redBulb25;
			ControlDictionary["П6 вкл кр. лампочка"] = redBulb26;
			
			ControlDictionary["ОАК-1 пермычка пер 1"] = jumper1;
			ControlDictionary["ОАК-1 пермычка пр 1"] = jumper2;
			ControlDictionary["ОАК-1 пермычка ТР 1"] = jumper3;
			ControlDictionary["ОАК-1 пермычка ТР 2"] = jumper4;
			ControlDictionary["ОАК-1 пермычка ТР 3"] = jumper5;
			ControlDictionary["ОАК-1 пермычка ТР 4"] = jumper6;
			ControlDictionary["ОАК-1 пермычка ОК 1"] = jumper7;
			ControlDictionary["ОАК-1 пермычка ОК 2"] = jumper8;
			ControlDictionary["ОАК-1 пермычка ОК 3"] = jumper9;
			ControlDictionary["ОАК-1 пермычка ОК 4"] = jumper10;
			ControlDictionary["ОАК-1 пермычка пер 2"] = jumper11;
			ControlDictionary["ОАК-2 пермычка пр 2"] = jumper12;
			ControlDictionary["ОАК-2 пермычка пер 1"] = jumper13;
			ControlDictionary["ОАК-2 пермычка пр 1"] = jumper14;
			ControlDictionary["ОАК-2 пермычка ТР 1"] = jumper15;
			ControlDictionary["ОАК-2 пермычка ТР 2"] = jumper16;
			ControlDictionary["ОАК-2 пермычка ТР 3"] = jumper17;
			ControlDictionary["ОАК-2 пермычка ТР 4"] = jumper18;
			ControlDictionary["ОАК-2 пермычка ОК 1"] = jumper19;
			ControlDictionary["ОАК-2 пермычка ОК 2"] = jumper20;
			ControlDictionary["ОАК-2 пермычка ОК 3"] = jumper21;
			ControlDictionary["ОАК-2 пермычка ОК 4"] = jumper22;
			ControlDictionary["ОАК-2 пермычка пер 2"] = jumper23;
			ControlDictionary["ОАК-2 пермычка пр 2"] = jumper24;
			ControlDictionary["ОАК-3 пермычка пер 1"] = jumper25;
			ControlDictionary["ОАК-3 пермычка пр 1"] = jumper26;
			ControlDictionary["ОАК-3 пермычка ТР 1"] = jumper27;
			ControlDictionary["ОАК-3 пермычка ТР 2"] = jumper28;
			ControlDictionary["ОАК-3 пермычка ТР 3"] = jumper29;
			ControlDictionary["ОАК-3 пермычка ТР 4"] = jumper30;
			ControlDictionary["ОАК-3 пермычка ОК 1"] = jumper31;
			ControlDictionary["ОАК-3 пермычка ОК 2"] = jumper32;
			ControlDictionary["ОАК-3 пермычка ОК 3"] = jumper33;
			ControlDictionary["ОАК-3 пермычка ОК 4"] = jumper34;
			ControlDictionary["ОАК-3 пермычка пер 2"] = jumper35;
			ControlDictionary["ОАК-3 пермычка пр 2"] = jumper36;
			ControlDictionary["ОАК-4 пермычка пер 1"] = jumper37;
			ControlDictionary["ОАК-4 пермычка пр 1"] = jumper38;
			ControlDictionary["ОАК-4 пермычка ТР 1"] = jumper39;
			ControlDictionary["ОАК-4 пермычка ТР 2"] = jumper40;
			ControlDictionary["ОАК-4 пермычка ТР 3"] = jumper41;
			ControlDictionary["ОАК-4 пермычка ТР 4"] = jumper42;
			ControlDictionary["ОАК-4 пермычка ОК 1"] = jumper43;
			ControlDictionary["ОАК-4 пермычка ОК 2"] = jumper44;
			ControlDictionary["ОАК-4 пермычка ОК 3"] = jumper45;
			ControlDictionary["ОАК-4 пермычка ОК 4"] = jumper46;
			ControlDictionary["ОАК-4 пермычка пер 2"] = jumper47;
			ControlDictionary["ОАК-4 пермычка пр 2"] = jumper48;
			ControlDictionary["ОАК-5 пермычка пер 1"] = jumper49;
			ControlDictionary["ОАК-5 пермычка пр 1"] = jumper50;
			ControlDictionary["ОАК-5 пермычка ТР 1"] = jumper51;
			ControlDictionary["ОАК-5 пермычка ТР 2"] = jumper52;
			ControlDictionary["ОАК-5 пермычка ТР 3"] = jumper53;
			ControlDictionary["ОАК-5 пермычка ТР 4"] = jumper54;
			ControlDictionary["ОАК-5 пермычка ОК 1"] = jumper55;
			ControlDictionary["ОАК-5 пермычка ОК 2"] = jumper56;
			ControlDictionary["ОАК-5 пермычка ОК 3"] = jumper57;
			ControlDictionary["ОАК-5 пермычка ОК 4"] = jumper58;
			ControlDictionary["ОАК-5 пермычка пер 2"] = jumper59;
			ControlDictionary["ОАК-5 пермычка пр 2"] = jumper60;
			ControlDictionary["ОГК перемычка канал 1"] = jumper61;
			ControlDictionary["ОГК перемычка канал 2"] = jumper62;
			ControlDictionary["ОГК перемычка шлейф 1"] = jumper63;
			ControlDictionary["ОГК перемычка шлейф 2"] = jumper64;
			ControlDictionary["ОГК перемычка ОГК 1"] = jumper65;
			ControlDictionary["ОГК перемычка ОГК 2"] = jumper66;
			ControlDictionary["П6 перемычка 27"] = jumper67;
			ControlDictionary["П6 перемычка 12"] = jumper68;
			ControlDictionary["П6 перемычка 7.5"] = jumper69;
			ControlDictionary["П6 перемычка 5"] = jumper70;
			
			ControlDictionary["ОГК переключатель"] = switcher1;
			
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
			AddToTraining(ControlDictionary["Включатель"], "Включите питание для проверки работоспособности", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ОГК перемычка канал 2"], "Установите вилку-перемычку в положение КАНАЛ-ШЛЕЙФ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ОГК перемычка шлейф 2"], "Установите вилку-перемычку в положение КАНАЛ-ШЛЕЙФ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ОГК перемычка шлейф 1"], "Установите вилку-перемычку в положение ШЛЕЙФ", ControlElement.S_B_CHOSEN);
			
			AddToTraining(ControlDictionary["ОГК переключатель"], "Установите переключатель в положение 1", ControlElement.S_11_STATE2);
			AddToTraining(ControlDictionary["Белая конпка"], "Нажмите и отпустите кнопку КОНТРОЛЬ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ОГК переключатель"], "Установите переключатель в положение 2", ControlElement.S_11_STATE3);
			AddToTraining(ControlDictionary["Белая конпка"], "Нажмите и отпустите кнопку КОНТРОЛЬ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ОГК переключатель"], "Установите переключатель в положение 3", ControlElement.S_11_STATE4);
			AddToTraining(ControlDictionary["Белая конпка"], "Нажмите и отпустите кнопку КОНТРОЛЬ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ОГК переключатель"], "Установите переключатель в положение 4", ControlElement.S_11_STATE5);
			AddToTraining(ControlDictionary["Белая конпка"], "Нажмите и отпустите кнопку КОНТРОЛЬ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ОГК переключатель"], "Установите переключатель в положение 5", ControlElement.S_11_STATE6);
			AddToTraining(ControlDictionary["Белая конпка"], "Нажмите и отпустите кнопку КОНТРОЛЬ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ОГК переключатель"], "Установите переключатель в положение 6", ControlElement.S_11_STATE7);
			AddToTraining(ControlDictionary["Белая конпка"], "Нажмите и отпустите кнопку КОНТРОЛЬ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ОГК переключатель"], "Установите переключатель в положение 7", ControlElement.S_11_STATE8);
			AddToTraining(ControlDictionary["Белая конпка"], "Нажмите и отпустите кнопку КОНТРОЛЬ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ОГК переключатель"], "Установите переключатель в положение 8", ControlElement.S_11_STATE9);
			AddToTraining(ControlDictionary["Белая конпка"], "Нажмите и отпустите кнопку КОНТРОЛЬ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ОГК переключатель"], "Установите переключатель в положение 9", ControlElement.S_11_STATE10);
			AddToTraining(ControlDictionary["Белая конпка"], "Нажмите и отпустите кнопку КОНТРОЛЬ", ControlElement.S_B_CHOSEN);
			AddToTraining(ControlDictionary["ОГК переключатель"], "Установите переключатель в положение 10", ControlElement.S_11_STATE11);
			AddToTraining(ControlDictionary["Белая конпка"], "Нажмите и отпустите кнопку КОНТРОЛЬ", ControlElement.S_B_CHOSEN);
			
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
			(ControlDictionary["П6 вкл зел. лампочка"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОП-1 сигн зел. лампочка 1"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОП-1 сигн зел. лампочка 2"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОП-1 сигн зел. лампочка 3"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОП-1 сигн зел. лампочка 4"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОП-2 сигн зел. лампочка 1"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОП-2 сигн зел. лампочка 2"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОП-2 сигн зел. лампочка 3"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОП-2 сигн зел. лампочка 4"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОП-3 сигн зел. лампочка 1"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОП-3 сигн зел. лампочка 2"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОП-3 сигн зел. лампочка 3"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОП-3 сигн зел. лампочка 4"] as ControlElement).GoToState(newState, false);
			(ControlDictionary["ОГК контроль зел. лампочка"] as ControlElement).GoToState(newState, false);
		}
	
	}

}
