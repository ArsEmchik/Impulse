﻿package blocks {
	
	import flash.display.MovieClip;
	import flash.text.TextField;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import controls.D39Button;
	import controls.Bulb;
	import controls.Tumble;
	import controls.Switch;
	import controls.DigitPanel;
	
	
	public class D39Block extends ImpulsUnit
	{
		var comm_channels: Vector.<D39Button> = new Vector.<D39Button>(2);
		var comm_stage:int;
		
		public function D39Block() 
		{
			super();
			this.ControlDictionary["Тумблер питания 1"]=turnOnOff1;
			this.ControlDictionary["Тумблер питания 2"]=turnOnOff2;
			
			this.ControlDictionary["Абонент 1"]=panel1;
			this.ControlDictionary["Абонент 2"]=panel2;
			this.ControlDictionary["Абонент 3"]=panel3;
			this.ControlDictionary["Абонент 4"]=panel4;
			this.ControlDictionary["Абонент 5"]=panel5;
			this.ControlDictionary["Абонент 6"]=panel6;
			this.ControlDictionary["Абонент 7"]=panel7;
			this.ControlDictionary["Абонент 8"]=panel8;
			this.ControlDictionary["Абонент 9"]=panel9;
			this.ControlDictionary["Абонент 10"]=panel10;
			this.ControlDictionary["Абонент 11"]=panel11;
			this.ControlDictionary["Абонент 12"]=panel12;
			this.ControlDictionary["Абонент 13"]=panel13;
			this.ControlDictionary["Абонент 14"]=panel14;
			this.ControlDictionary["Абонент 15"]=panel15;
			this.ControlDictionary["Абонент 16"]=panel16;
			
			this.ControlDictionary["Кнопка 1"]=button1;
			this.ControlDictionary["Кнопка 2"]=button2;
			this.ControlDictionary["Кнопка 3"]=button3;
			this.ControlDictionary["Кнопка 4"]=button4;
			this.ControlDictionary["Кнопка 5"]=button5;
			this.ControlDictionary["Кнопка 6"]=button6;
			this.ControlDictionary["Кнопка 7"]=button7;
			this.ControlDictionary["Кнопка 8"]=button8;
			this.ControlDictionary["Кнопка 9"]=button9;
			this.ControlDictionary["Кнопка 10"]=button10;
			this.ControlDictionary["Кнопка 11"]=button11;
			this.ControlDictionary["Кнопка 12"]=button12;
			this.ControlDictionary["Кнопка 13"]=button13;
			this.ControlDictionary["Кнопка 14"]=button14;
			this.ControlDictionary["Кнопка 15"]=button15;
			this.ControlDictionary["Кнопка 16"]=button16;
			this.ControlDictionary["Кнопка 17"]=button17;			
			this.ControlDictionary["Кнопка 18"]=button18;
			this.ControlDictionary["Кнопка 19"]=button19;
			
			this.ControlDictionary["Вкл. зел. лампочка 1"]=greenBulb1;
			this.ControlDictionary["Коммутация зел. лампочка 1"]=greenBulb2;
			this.ControlDictionary["Коммутация зел. лампочка 2"]=greenBulb3;
			this.ControlDictionary["Вкл. зел. лампочка 2"]=greenBulb4;
			
			InitializeControls();
			CreateCommunication();
		}
		public override function InitializeImpulsUnit(pDecriptionField: TextField, outButton: Button, txtNext:TextField)
		{
			super.InitializeImpulsUnit(pDecriptionField,outButton,txtNext);
			if(ModeInfo.modeInfo.MainMode != ModeInfo.MM_INSTRUCTION) this.decriptionField.text="Выберите первого абонента";
			InitializeSequence();
			SetMode(ModeInfo.modeInfo.MainMode);
		}
		private function InitializeSequence()
		{
			this.AddToTraining(ControlDictionary["Тумблер питания 1"],"Установите тумблер питания в положение «ВКЛ» 2-х кассет Д-41-00-07",ControlElement.S_B_CHOSEN);
			this.AddToTraining(ControlDictionary["Тумблер питания 2"],"Установите тумблер питания в положение «ВКЛ» 2-х кассет Д-41-00-07",ControlElement.S_B_CHOSEN);
			
			var step: int;
			var i:int;
			var abonentNumber: String;
			for(step = 0; step < ModeInfo.modeInfo.SeqLink.length; step++){
				
				for(i = 0; i < 2; i++){
					abonentNumber = ModeInfo.modeInfo.SeqLink[step][i].toString();
					this.AddToTraining(ControlDictionary["Кнопка " + abonentNumber],"Выберите первого абонента (Абонент №" + abonentNumber + ")",ControlElement.S_B_CHOSEN);
				}
				this.AddToTraining(ControlDictionary["Кнопка 18"],"Скоммутируйте абонентов (Нажмите кнопку «ВКЛ»)",ControlElement.S_B_CHOSEN);
			}
			
			
			//this.AddToTraining(this.ControlDictionary["Тумблер питания 1"],"Абоненты скоммутированы. Установите тумблер питания в положение «ВЫКЛ» 2-х кассет Д-41-00-07",ControlElement.S_B_DEFAULT);
			//this.AddToTraining(this.ControlDictionary["Тумблер питания 2"],"Абоненты скоммутированы. Установите тумблер питания в положение «ВЫКЛ» 2-х кассет Д-41-00-07",ControlElement.S_B_DEFAULT);
		}
		private function CreateCommunication()
		{
			(ControlDictionary["Кнопка 1"]  as D39Button).ChangeType(1);
			(ControlDictionary["Кнопка 2"]  as D39Button).ChangeType(2);
			(ControlDictionary["Кнопка 3"]  as D39Button).ChangeType(3);
			(ControlDictionary["Кнопка 4"]  as D39Button).ChangeType(4);
			(ControlDictionary["Кнопка 5"]  as D39Button).ChangeType(5);
			(ControlDictionary["Кнопка 6"]  as D39Button).ChangeType(6);
			(ControlDictionary["Кнопка 7"]  as D39Button).ChangeType(7);
			(ControlDictionary["Кнопка 8"]  as D39Button).ChangeType(8);
			(ControlDictionary["Кнопка 9"]  as D39Button).ChangeType(9);
			(ControlDictionary["Кнопка 10"]  as D39Button).ChangeType(10);
			(ControlDictionary["Кнопка 11"]  as D39Button).ChangeType(11);
			(ControlDictionary["Кнопка 12"]  as D39Button).ChangeType(12);
			(ControlDictionary["Кнопка 13"]  as D39Button).ChangeType(13);
			(ControlDictionary["Кнопка 14"]  as D39Button).ChangeType(14);
			(ControlDictionary["Кнопка 15"]  as D39Button).ChangeType(15);
			(ControlDictionary["Кнопка 16"]  as D39Button).ChangeType(16);			
			(ControlDictionary["Кнопка 17"]  as D39Button).ChangeID("Сброс");						
			(ControlDictionary["Кнопка 18"]  as D39Button).ChangeID("Вкл");
			(ControlDictionary["Кнопка 19"]  as D39Button).ChangeID("Откл");
			(ControlDictionary["Тумблер питания 1"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick1);
			(ControlDictionary["Тумблер питания 2"] as ControlElement).addEventListener(MouseEvent.CLICK,SwitchMouseClick2);
			(ControlDictionary["Кнопка 1"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 2"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 3"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 4"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 5"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 6"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 7"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 8"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 9"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 10"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 11"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 12"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 13"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 14"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 15"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 16"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 17"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 18"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
			(ControlDictionary["Кнопка 19"] as ControlElement).addEventListener(MouseEvent.CLICK,Commutation);
		}
		
		private function Commutation (e: MouseEvent)
		{
			var button: D39Button  = e.currentTarget as D39Button;
			var item: String;
			var digitPanel: int;			
						
			if(ModeInfo.modeInfo.MainMode == ModeInfo.MM_INSTRUCTION){
				if(this.blockState != 0){
					this.TrainingSequence[this.blockState - 1].UnblockElement();
				}
				
				if(button.IsBlocked() == true){
					return;
				}
			}
			
			if (button.GetType() == 0)
			{
				trace ("0",comm_stage);
				switch (button.GetID())
				{
					case "Сброс":
					{
						
						if (comm_channels[0])(comm_channels[0] as ControlElement).GoToState(ControlElement.S_B_DEFAULT, false);
						if (comm_channels[1])(comm_channels[1] as ControlElement).GoToState(ControlElement.S_B_DEFAULT, false);
						
						if(ModeInfo.modeInfo.MainMode != ModeInfo.MM_INSTRUCTION) this.decriptionField.text="Выберите первого абонента";
						TurnOffButtons();
						comm_stage = 0;
						break;
					}
					case "Вкл":
					{
						if (comm_stage == 2)
						{
							for (item in this.ControlDictionary)
							{
								if (ControlDictionary[item] is DigitPanel)
								{
									digitPanel = (int)(item.split(" ")[1]);
									if (digitPanel == comm_channels[0].GetType())
										(ControlDictionary[item]as ControlElement).GoToState(comm_channels[1].GetType(), false)
									if (digitPanel == comm_channels[1].GetType())
										(ControlDictionary[item]as ControlElement).GoToState(comm_channels[0].GetType(), false)
								}
							}
							if(ModeInfo.modeInfo.MainMode != ModeInfo.MM_INSTRUCTION) this.decriptionField.text="Выберите первого абонента";
						}
						else
						{
							if(ModeInfo.modeInfo.MainMode != ModeInfo.MM_INSTRUCTION) this.decriptionField.text="Выберите двух абонентов";							
						}
						comm_stage = 0;
						TurnOffButtons();
						break;
					}
					case "Откл":
					{
						if (comm_stage == 2)
						{
							for (item in this.ControlDictionary)
							{
								if (ControlDictionary[item] is DigitPanel)
								{
									
									digitPanel = (int)(item.split(" ")[1]);
									if (digitPanel == comm_channels[0].GetType())
										(ControlDictionary[item]as ControlElement).GoToState(100, false)
									if (digitPanel == comm_channels[1].GetType())
										(ControlDictionary[item]as ControlElement).GoToState(100, false)
									if(ModeInfo.modeInfo.MainMode != ModeInfo.MM_INSTRUCTION) this.decriptionField.text="Выберите первого абонента";
								}
							}
						}
						comm_stage = 0;
						TurnOffButtons();
						break;
					}
				}
			}
			else
			{
				trace ("1",comm_stage);
				switch (comm_stage)
				{
					case 0:
					{
						if(ModeInfo.modeInfo.MainMode != ModeInfo.MM_INSTRUCTION) this.decriptionField.text="Выберите второго абонента";
						(ControlDictionary["Коммутация зел. лампочка 1"] as ControlElement).GoToState(ControlElement.S_B_CHOSEN, false);
						comm_stage = 1;
						comm_channels[0] = button;
						break;
					}
					case 1:
					{
						if(ModeInfo.modeInfo.MainMode != ModeInfo.MM_INSTRUCTION) this.decriptionField.text="Нажмите кнопку ВКЛ";
						(ControlDictionary["Коммутация зел. лампочка 1"] as ControlElement).GoToState(ControlElement.S_B_DEFAULT, false);
						(ControlDictionary["Коммутация зел. лампочка 2"] as ControlElement).GoToState(ControlElement.S_B_CHOSEN, false);
						comm_stage = 2;
						comm_channels[1] = button;
						break;
					}
					case 2:
					{
						if(ModeInfo.modeInfo.MainMode != ModeInfo.MM_INSTRUCTION) this.decriptionField.text="Нажмите кнопку ВКЛ или СБРОС";
						(button as ControlElement).GoToState(ControlElement.S_B_DEFAULT, false);
						break;
					}
				}
			}
			
			
			if(ModeInfo.modeInfo.MainMode == ModeInfo.MM_INSTRUCTION){
				this.TrainingSequence[this.blockState - 1].BlockElement();
			}
			trace (button);
		}
		
		private function TurnOffButtons()
		{
			(ControlDictionary["Коммутация зел. лампочка 1"] as ControlElement).GoToState(ControlElement.S_B_DEFAULT, false);
			(ControlDictionary["Коммутация зел. лампочка 2"] as ControlElement).GoToState(ControlElement.S_B_DEFAULT, false);
						 
			var item: String;
			for (item in this.ControlDictionary)
			{
				if (ControlDictionary[item] is D39Button)
					(ControlDictionary[item]as ControlElement).GoToState(ControlElement.S_B_DEFAULT, false);
			}
		}
		
		private function SwitchMouseClick1(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["Тумблер питания 1"] as ControlElement).CurrentState;
			(ControlDictionary["Вкл. зел. лампочка 1"] as ControlElement).GoToState(newState, false);
		}		
		private function SwitchMouseClick2(e: MouseEvent)
		{
			var newState: int = (ControlDictionary["Тумблер питания 2"] as ControlElement).CurrentState;
			(ControlDictionary["Вкл. зел. лампочка 2"] as ControlElement).GoToState(newState, false);
		}		
	}
	
}
