package blocks
{
	
	import controls.D31Jumper;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import fl.controls.Button;
	
	public class D00Block extends ImpulsUnit
	{/*
		private var ioACh1Pair1Cable: D31Jumper;
		private var ioACh1Pair2Cable: D31Jumper;
		private var ioACh2Pair3Cable: D31Jumper;
		private var ioACh2Pair4Cable: D31Jumper;
		private var ioACh3Pair6Cable: D31Jumper;
		private var ioACh3Pair7Cable: D31Jumper;
		private var ioACh4Pair8Cable: D31Jumper;
		private var ioACh4Pair9Cable: D31Jumper;
		
		private var ioACh5Pair1Cable: D31Jumper;
		private var ioACh5Pair2Cable: D31Jumper;
		private var ioACh6Pair3Cable: D31Jumper;
		private var ioACh6Pair4Cable: D31Jumper;
		private var ioACh7Pair6Cable: D31Jumper;
		private var ioACh7Pair7Cable: D31Jumper;
		private var ioACh8Pair8Cable: D31Jumper;
		private var ioACh8Pair9Cable: D31Jumper;
		
		private var ioACh9Pair8Cable: D31Jumper;
		private var ioACh9Pair9Cable: D31Jumper;
		
		private var ioACh10Pair1Cable: D31Jumper;
		private var ioACh10Pair2Cable: D31Jumper;
		
		private var ioBCh1Pair1Cable: D31Jumper;
		private var ioBCh1Pair2Cable: D31Jumper;
		private var ioBCh2Pair3Cable: D31Jumper;
		private var ioBCh2Pair4Cable: D31Jumper;
		private var ioBCh3Pair6Cable: D31Jumper;
		private var ioBCh3Pair7Cable: D31Jumper;
		private var ioBCh4Pair8Cable: D31Jumper;
		private var ioBCh4Pair9Cable: D31Jumper;

		private var ioBCh5Pair1Cable: D31Jumper;
		private var ioBCh5Pair2Cable: D31Jumper;
		private var ioBCh6Pair3Cable: D31Jumper;
		private var ioBCh6Pair4Cable: D31Jumper;
		private var ioBCh7Pair6Cable: D31Jumper;
		private var ioBCh7Pair7Cable: D31Jumper;
		private var ioBCh8Pair8Cable: D31Jumper;
		private var ioBCh8Pair9Cable: D31Jumper;

		private var ioBCh9Pair8Cable: D31Jumper;
		private var ioBCh9Pair9Cable: D31Jumper;

		private var ioBCh10Pair1Cable: D31Jumper;
		private var ioBCh10Pair2Cable: D31Jumper;*/
		
		var ControlsPanel:Array;
		
		public function D00Block()
		{
			InitializeDictionary();
			InitializeControls();
		}
		
		public override function InitializeImpulsUnit(pDecriptionField:TextField, outButton:Button, txtNext:TextField)
		{
			
			super.InitializeImpulsUnit(pDecriptionField, outButton, txtNext);
			InitializeSequence();
			SetMode(ModeInfo.modeInfo.MainMode);
			
		}
		
		private function InitializeSequence()
		{
			/*var step:int;
			for (step = 0; step < ModeInfo.modeInfo.SeqCommutation.length; step++)
			{
				var i:int;
				var controlInfo:Array;
				for (i = 0; i < ModeInfo.modeInfo.SeqCommutation[step].length; i++)
				{
					controlInfo = ModeInfo.modeInfo.SeqCommutation[step][i].split("x", 4);
					
					var infoText:String;
					if (controlInfo.length == 3)
					{
						infoText = " ";
					}
					else
					{
						infoText = controlInfo[3];
					}
					j1.parent.setChildIndex(this.ControlsPanel[int(controlInfo[0]) - 1][int(controlInfo[1])][int(controlInfo[2])], j1.parent.numChildren - 1);
					
					this.AddToTraining(this.ControlsPanel[int(controlInfo[0]) - 1][int(controlInfo[1])][int(controlInfo[2])], infoText, ControlElement.S_B_CHOSEN);
				}
			}*/
		
		}
		
		private function CreateCommunication()
		{
		}
		
		private function InitializeDictionary()
		{
			/*var PairControls:Array;
			var SingleControls:Array;
			ControlsPanel = new Array();
			PairControls = new Array();
			SingleControls = new Array();
			
			var PairControlsLine:Array;
			var SingleControlsLine:Array;
			
			//start single A
			SingleControlsLine = new Array();
			SingleControlsLine.push(j48a_1);
			SingleControlsLine.push(j48a_9);
			SingleControlsLine.push(j48a_17);
			SingleControlsLine.push(j48a_25);
			SingleControlsLine.push(j48a_33);
			SingleControlsLine.push(jumper82);
			SingleControlsLine.push(jumper90);
			SingleControlsLine.push(jumper98);
			SingleControlsLine.push(jumper106);
			SingleControlsLine.push(jumper114);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(j48a_2);
			SingleControlsLine.push(j48a_10);
			SingleControlsLine.push(j48a_18);
			SingleControlsLine.push(j48a_26);
			SingleControlsLine.push(j48a_34);
			SingleControlsLine.push(jumper83);
			SingleControlsLine.push(jumper91);
			SingleControlsLine.push(jumper99);
			SingleControlsLine.push(jumper107);
			SingleControlsLine.push(jumper115);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(j48a_3);
			SingleControlsLine.push(j48a_11);
			SingleControlsLine.push(j48a_19);
			SingleControlsLine.push(j48a_27);
			SingleControlsLine.push(j48a_35);
			SingleControlsLine.push(jumper84);
			SingleControlsLine.push(jumper92);
			SingleControlsLine.push(jumper100);
			SingleControlsLine.push(jumper108);
			SingleControlsLine.push(jumper116);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(j48a_4);
			SingleControlsLine.push(j48a_12);
			SingleControlsLine.push(j48a_20);
			SingleControlsLine.push(j48a_28);
			SingleControlsLine.push(j48a_36);
			SingleControlsLine.push(jumper85);
			SingleControlsLine.push(jumper93);
			SingleControlsLine.push(jumper101);
			SingleControlsLine.push(jumper109);
			SingleControlsLine.push(jumper117);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(j48a_5);
			SingleControlsLine.push(j48a_13);
			SingleControlsLine.push(j48a_21);
			SingleControlsLine.push(j48a_29);
			SingleControlsLine.push(j48a_37);
			SingleControlsLine.push(jumper86);
			SingleControlsLine.push(jumper94);
			SingleControlsLine.push(jumper102);
			SingleControlsLine.push(jumper110);
			SingleControlsLine.push(jumper118);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(j48a_6);
			SingleControlsLine.push(j48a_14);
			SingleControlsLine.push(j48a_22);
			SingleControlsLine.push(j48a_30);
			SingleControlsLine.push(j48a_38);
			SingleControlsLine.push(jumper87);
			SingleControlsLine.push(jumper95);
			SingleControlsLine.push(jumper103);
			SingleControlsLine.push(jumper111);
			SingleControlsLine.push(jumper119);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(j48a_7);
			SingleControlsLine.push(j48a_15);
			SingleControlsLine.push(j48a_23);
			SingleControlsLine.push(j48a_31);
			SingleControlsLine.push(j48a_39);
			SingleControlsLine.push(jumper88);
			SingleControlsLine.push(jumper96);
			SingleControlsLine.push(jumper104);
			SingleControlsLine.push(jumper112);
			SingleControlsLine.push(jumper120);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(j48a_8);
			SingleControlsLine.push(j48a_16);
			SingleControlsLine.push(j48a_24);
			SingleControlsLine.push(j48a_32);
			SingleControlsLine.push(j48a_40);
			SingleControlsLine.push(jumper89);
			SingleControlsLine.push(jumper97);
			SingleControlsLine.push(jumper105);
			SingleControlsLine.push(jumper113);
			SingleControlsLine.push(jumper121);
			SingleControls.push(SingleControlsLine);
			//end single A
			
			//start single B			
			SingleControlsLine = new Array();
			SingleControlsLine.push(jumper164);
			SingleControlsLine.push(jumper175);
			SingleControlsLine.push(jumper186);
			SingleControlsLine.push(jumper197);
			SingleControlsLine.push(jumper208);
			SingleControlsLine.push(jumper219);
			SingleControlsLine.push(jumper230);
			SingleControlsLine.push(jumper241);
			SingleControlsLine.push(jumper252);
			SingleControlsLine.push(jumper260);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(jumper165);
			SingleControlsLine.push(jumper176);
			SingleControlsLine.push(jumper187);
			SingleControlsLine.push(jumper198);
			SingleControlsLine.push(jumper209);
			SingleControlsLine.push(jumper220);
			SingleControlsLine.push(jumper231);
			SingleControlsLine.push(jumper242);
			SingleControlsLine.push(jumper253);
			SingleControlsLine.push(jumper261);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(jumper166);
			SingleControlsLine.push(jumper177);
			SingleControlsLine.push(jumper188);
			SingleControlsLine.push(jumper199);
			SingleControlsLine.push(jumper210);
			SingleControlsLine.push(jumper221);
			SingleControlsLine.push(jumper232);
			SingleControlsLine.push(jumper243);
			SingleControlsLine.push(jumper254);
			SingleControlsLine.push(jumper262);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(jumper167);
			SingleControlsLine.push(jumper178);
			SingleControlsLine.push(jumper189);
			SingleControlsLine.push(jumper200);
			SingleControlsLine.push(jumper211);
			SingleControlsLine.push(jumper222);
			SingleControlsLine.push(jumper233);
			SingleControlsLine.push(jumper244);
			SingleControlsLine.push(jumper255);
			SingleControlsLine.push(jumper263);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(jumper168);
			SingleControlsLine.push(jumper179);
			SingleControlsLine.push(jumper190);
			SingleControlsLine.push(jumper201);
			SingleControlsLine.push(jumper212);
			SingleControlsLine.push(jumper223);
			SingleControlsLine.push(jumper234);
			SingleControlsLine.push(jumper245);
			SingleControlsLine.push(jumper256);
			SingleControlsLine.push(jumper264);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(jumper169);
			SingleControlsLine.push(jumper180);
			SingleControlsLine.push(jumper191);
			SingleControlsLine.push(jumper202);
			SingleControlsLine.push(jumper213);
			SingleControlsLine.push(jumper224);
			SingleControlsLine.push(jumper235);
			SingleControlsLine.push(jumper246);
			SingleControlsLine.push(jumper257);
			SingleControlsLine.push(jumper265);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(jumper170);
			SingleControlsLine.push(jumper181);
			SingleControlsLine.push(jumper192);
			SingleControlsLine.push(jumper203);
			SingleControlsLine.push(jumper214);
			SingleControlsLine.push(jumper225);
			SingleControlsLine.push(jumper236);
			SingleControlsLine.push(jumper247);
			SingleControlsLine.push(jumper258);
			SingleControlsLine.push(jumper266);
			SingleControls.push(SingleControlsLine);
			
			SingleControlsLine = new Array();
			SingleControlsLine.push(jumper171);
			SingleControlsLine.push(jumper182);
			SingleControlsLine.push(jumper193);
			SingleControlsLine.push(jumper204);
			SingleControlsLine.push(jumper215);
			SingleControlsLine.push(jumper226);
			SingleControlsLine.push(jumper237);
			SingleControlsLine.push(jumper248);
			SingleControlsLine.push(jumper259);
			SingleControlsLine.push(jumper267);
			SingleControls.push(SingleControlsLine);
			//end single B
			
			ControlsPanel.push(SingleControls);
			//start pair A
			PairControlsLine = new Array();
			PairControlsLine.push(j1);
			PairControlsLine.push(j3);
			PairControlsLine.push(j5);
			PairControlsLine.push(j7);
			PairControlsLine.push(j9);
			PairControlsLine.push(j11);
			PairControlsLine.push(j13);
			PairControlsLine.push(j15);
			PairControlsLine.push(j17);
			PairControlsLine.push(j19);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(j2);
			PairControlsLine.push(j4);
			PairControlsLine.push(j6);
			PairControlsLine.push(j8);
			PairControlsLine.push(j10);
			PairControlsLine.push(j12);
			PairControlsLine.push(j14);
			PairControlsLine.push(j16);
			PairControlsLine.push(j18);
			PairControlsLine.push(j20);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(jo1);
			PairControlsLine.push(jo5);
			PairControlsLine.push(jo9);
			PairControlsLine.push(jo13);
			PairControlsLine.push(jo17);
			PairControlsLine.push(jo21);
			PairControlsLine.push(jo25);
			PairControlsLine.push(jo29);
			PairControlsLine.push(jo33);
			PairControlsLine.push(jo37);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(jc1);
			PairControlsLine.push(jc3);
			PairControlsLine.push(jc5);
			PairControlsLine.push(jc7);
			PairControlsLine.push(jc9);
			PairControlsLine.push(jc11);
			PairControlsLine.push(jc13);
			PairControlsLine.push(jc15);
			PairControlsLine.push(jc17);
			PairControlsLine.push(jc19);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(jo2);
			PairControlsLine.push(jo6);
			PairControlsLine.push(jo10);
			PairControlsLine.push(jo14);
			PairControlsLine.push(jo18);
			PairControlsLine.push(jo22);
			PairControlsLine.push(jo26);
			PairControlsLine.push(jo30);
			PairControlsLine.push(jo34);
			PairControlsLine.push(jo38);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(jo3);
			PairControlsLine.push(jo7);
			PairControlsLine.push(jo11);
			PairControlsLine.push(jo15);
			PairControlsLine.push(jo19);
			PairControlsLine.push(jo23);
			PairControlsLine.push(jo27);
			PairControlsLine.push(jo31);
			PairControlsLine.push(jo35);
			PairControlsLine.push(jo39);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(jc2);
			PairControlsLine.push(jc4);
			PairControlsLine.push(jc6);
			PairControlsLine.push(jc8);
			PairControlsLine.push(jc10);
			PairControlsLine.push(jc12);
			PairControlsLine.push(jc14);
			PairControlsLine.push(jc16);
			PairControlsLine.push(jc18);
			PairControlsLine.push(jc20);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(jo4);
			PairControlsLine.push(jo8);
			PairControlsLine.push(jo12);
			PairControlsLine.push(jo16);
			PairControlsLine.push(jo20);
			PairControlsLine.push(jo24);
			PairControlsLine.push(jo28);
			PairControlsLine.push(jo32);
			PairControlsLine.push(jo36);
			PairControlsLine.push(jo40);
			PairControls.push(PairControlsLine);
			//end pair A
			
			//start pair B						
			PairControlsLine = new Array();
			PairControlsLine.push(jo1b);
			PairControlsLine.push(jo5b);
			PairControlsLine.push(jo9b);
			PairControlsLine.push(jo13b);
			PairControlsLine.push(jo17b);
			PairControlsLine.push(jo21b);
			PairControlsLine.push(jo25b);
			PairControlsLine.push(jo29b);
			PairControlsLine.push(jo33b);
			PairControlsLine.push(jo37b);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(jc21);
			PairControlsLine.push(jc23);
			PairControlsLine.push(jc25);
			PairControlsLine.push(jc27);
			PairControlsLine.push(jc29);
			PairControlsLine.push(jc31);
			PairControlsLine.push(jc33);
			PairControlsLine.push(jc35);
			PairControlsLine.push(jc37);
			PairControlsLine.push(jc39);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(jo2b);
			PairControlsLine.push(jo6b);
			PairControlsLine.push(jo10b);
			PairControlsLine.push(jo14b);
			PairControlsLine.push(jo18b);
			PairControlsLine.push(jo22b);
			PairControlsLine.push(jo26b);
			PairControlsLine.push(jo30b);
			PairControlsLine.push(jo34b);
			PairControlsLine.push(jo38b);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(jo3b);
			PairControlsLine.push(jo7b);
			PairControlsLine.push(jo11b);
			PairControlsLine.push(jo15b);
			PairControlsLine.push(jo19b);
			PairControlsLine.push(jo23b);
			PairControlsLine.push(jo27b);
			PairControlsLine.push(jo31b);
			PairControlsLine.push(jo35b);
			PairControlsLine.push(jo39b);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(jc22);
			PairControlsLine.push(jc24);
			PairControlsLine.push(jc26);
			PairControlsLine.push(jc28);
			PairControlsLine.push(jc30);
			PairControlsLine.push(jc32);
			PairControlsLine.push(jc34);
			PairControlsLine.push(jc36);
			PairControlsLine.push(jc38);
			PairControlsLine.push(jc40);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(jo4b);
			PairControlsLine.push(jo8b);
			PairControlsLine.push(jo12b);
			PairControlsLine.push(jo16b);
			PairControlsLine.push(jo20b);
			PairControlsLine.push(jo24b);
			PairControlsLine.push(jo28b);
			PairControlsLine.push(jo32b);
			PairControlsLine.push(jo36b);
			PairControlsLine.push(jo40b);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(j21);
			PairControlsLine.push(j23);
			PairControlsLine.push(j25);
			PairControlsLine.push(j27);
			PairControlsLine.push(j29);
			PairControlsLine.push(j31);
			PairControlsLine.push(j33);
			PairControlsLine.push(j35);
			PairControlsLine.push(j37);
			PairControlsLine.push(j39);
			PairControls.push(PairControlsLine);
			
			PairControlsLine = new Array();
			PairControlsLine.push(j22);
			PairControlsLine.push(j24);
			PairControlsLine.push(j26);
			PairControlsLine.push(j28);
			PairControlsLine.push(j30);
			PairControlsLine.push(j32);
			PairControlsLine.push(j34);
			PairControlsLine.push(j36);
			PairControlsLine.push(j38);
			PairControlsLine.push(j40);
			PairControls.push(PairControlsLine);
			//end pair B
			
			ControlsPanel.push(PairControls);
			*/
			//header controls
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (1-й канал, полукомплект А, 1-я пара 1-го кабеля ПТРК-10х2)"] = ioACh1Pair1DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (1-й канал, полукомплект А)"] = ioACh1Pair1Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (1-й канал, полукомплект А, 1-я пара 1-го кабеля ПТРК-10х2)"] = ioACh1Pair1Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (1-й канал, полукомплект А, 1-я пара 1-го кабеля ПТРК-10х2)"] = ioACh1Pair1AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (1-й канал, полукомплект А, 2-я пара 1-го кабеля ПТРК-10х2)"] = ioACh1Pair2AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (1-й канал, полукомплект А, 2-я пара 1-го кабеля ПТРК-10х2)"] = ioACh1Pair2Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (1-й канал, полукомплект А)"] = ioACh1Pair2Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (1-й канал, полукомплект А, 2-я пара 1-го кабеля ПТРК-10х2)"] = ioACh1Pair2DigitalOut;
			
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (2-й канал, полукомплект А, 3-я пара 1-го кабеля ПТРК-10х2)"] = ioACh2Pair3DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (2-й канал, полукомплект А)"] = ioACh2Pair3Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (2-й канал, полукомплект А, 3-я пара 1-го кабеля ПТРК-10х2)"] = ioACh2Pair3Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (2-й канал, полукомплект А, 3-я пара 1-го кабеля ПТРК-10х2)"] = ioACh2Pair3AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (2-й канал, полукомплект А, 4-я пара 1-го кабеля ПТРК-10х2)"] = ioACh2Pair4AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (2-й канал, полукомплект А, 4-я пара 1-го кабеля ПТРК-10х2)"] = ioACh2Pair4Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (2-й канал, полукомплект А)"] = ioACh2Pair4Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (2-й канал, полукомплект А, 4-я пара 1-го кабеля ПТРК-10х2)"] = ioACh2Pair4DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (3-й канал, полукомплект А, 6-я пара 1-го кабеля ПТРК-10х2)"] = ioACh3Pair6DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (3-й канал, полукомплект А)"] = ioACh3Pair6Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (3-й канал, полукомплект А, 6-я пара 1-го кабеля ПТРК-10х2)"] = ioACh3Pair6Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (3-й канал, полукомплект А, 6-я пара 1-го кабеля ПТРК-10х2)"] = ioACh3Pair6AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (3-й канал, полукомплект А, 7-я пара 1-го кабеля ПТРК-10х2)"] = ioACh3Pair7AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (3-й канал, полукомплект А, 7-я пара 1-го кабеля ПТРК-10х2)"] = ioACh3Pair7Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (3-й канал, полукомплект А)"] = ioACh3Pair7Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (3-й канал, полукомплект А, 7-я пара 1-го кабеля ПТРК-10х2)"] = ioACh3Pair7DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (4-й канал, полукомплект А, 8-я пара 1-го кабеля ПТРК-10х2)"] = ioACh4Pair8DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (4-й канал, полукомплект А)"] = ioACh4Pair8Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (4-й канал, полукомплект А, 8-я пара 1-го кабеля ПТРК-10х2)"] = ioACh4Pair8Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (4-й канал, полукомплект А, 8-я пара 1-го кабеля ПТРК-10х2)"] = ioACh4Pair8AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (4-й канал, полукомплект А, 9-я пара 1-го кабеля ПТРК-10х2)"] = ioACh4Pair9AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (4-й канал, полукомплект А, 9-я пара 1-го кабеля ПТРК-10х2)"] = ioACh4Pair9Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (4-й канал, полукомплект А)"] = ioACh4Pair9Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (4-й канал, полукомплект А, 9-я пара 1-го кабеля ПТРК-10х2)"] = ioACh4Pair9DigitalOut;
			
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (1-й канал, полукомплект А)"] = j1;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (1-й канал, полукомплект А)"] = j2;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (2-й канал, полукомплект А)"] = j3;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (2-й канал, полукомплект А)"] = j4;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (3-й канал, полукомплект А)"] = j5;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (3-й канал, полукомплект А)"] = j6;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (4-й канал, полукомплект А)"] = j7;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (4-й канал, полукомплект А)"] = j8;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (5-й канал, полукомплект А)"] = j9;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (5-й канал, полукомплект А)"] = j10;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (6-й канал, полукомплект А)"] = j11;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (6-й канал, полукомплект А)"] = j12;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (7-й канал, полукомплект А)"] = j13;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (7-й канал, полукомплект А)"] = j14;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (8-й канал, полукомплект А)"] = j15;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (8-й канал, полукомплект А)"] = j16;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (9-й канал, полукомплект А)"] = j17;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (9-й канал, полукомплект А)"] = j18;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (10-й канал, полукомплект А)"] = j19;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (10-й канал, полукомплект А)"] = j20;
			
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (1-й канал, полукомплект А)"] = jo1;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (1-й канал, полукомплект А, 1-я пара 1-го кабеля ПТРК-10х2)"] = jo2;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (1-й канал, полукомплект А, 2-я пара 1-го кабеля ПТРК-10х2)"] = jo3;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (1-й канал, полукомплект А)"] = jo4;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (2-й канал, полукомплект А)"] = jo5;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (2-й канал, полукомплект А, 3-я пара 1-го кабеля ПТРК-10х2)"] = jo6;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (2-й канал, полукомплект А, 4-я пара 1-го кабеля ПТРК-10х2)"] = jo7;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (2-й канал, полукомплект А)"] = jo8;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (3-й канал, полукомплект А)"] = jo9;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (3-й канал, полукомплект А, 6-я пара 1-го кабеля ПТРК-10х2)"] = jo10;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (3-й канал, полукомплект А, 7-я пара 1-го кабеля ПТРК-10х2)"] = jo11;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (3-й канал, полукомплект А)"] = jo12;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (4-й канал, полукомплект А)"] = jo13;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (4-й канал, полукомплект А, 8-я пара 1-го кабеля ПТРК-10х2)"] = jo14;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (4-й канал, полукомплект А, 9-я пара 1-го кабеля ПТРК-10х2)"] = jo15;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (4-й канал, полукомплект А)"] = jo16;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (5-й канал, полукомплект А)"] = jo17;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (5-й канал, полукомплект А, 1-я пара 2-го кабеля ПТРК-10х2)"] = jo18;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (5-й канал, полукомплект А, 2-я пара 2-го кабеля ПТРК-10х2)"] = jo19;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (5-й канал, полукомплект А)"] = jo20;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (6-й канал, полукомплект А)"] = jo21;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (6-й канал, полукомплект А, 3-я пара 2-го кабеля ПТРК-10х2)"] = jo22;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (6-й канал, полукомплект А, 4-я пара 2-го кабеля ПТРК-10х2)"] = jo23;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (6-й канал, полукомплект А)"] = jo24;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (7-й канал, полукомплект А)"] = jo25;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (7-й канал, полукомплект А, 6-я пара 2-го кабеля ПТРК-10х2)"] = jo26;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (7-й канал, полукомплект А, 7-я пара 2-го кабеля ПТРК-10х2)"] = jo27;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (7-й канал, полукомплект А)"] = jo28;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (8-й канал, полукомплект А)"] = jo29;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (8-й канал, полукомплект А, 8-я пара 2-го кабеля ПТРК-10х2)"] = jo30;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (8-й канал, полукомплект А, 9-я пара 2-го кабеля ПТРК-10х2)"] = jo31;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (8-й канал, полукомплект А)"] = jo32;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (9-й канал, полукомплект А)"] = jo33;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (9-й канал, полукомплект А, 8-я пара 3-го кабеля ПТРК-10х2)"] = jo34;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (9-й канал, полукомплект А, 9-я пара 3-го кабеля ПТРК-10х2)"] = jo35;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (9-й канал, полукомплект А)"] = jo36;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - 48 КБИТ/С (10-й канал, полукомплект А, 1-я пара 3-го кабеля ПТРК-10х2)"] = jo37;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (10-й канал, полукомплект А, 1-я пара 3-го кабеля ПТРК-10х2)"] = jo38;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = jo39;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - 48 КБИТ/С (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = jo40;
			//
			//
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (5-й канал, полукомплект А, 1-я пара 2-го кабеля ПТРК-10х2)"] = j48a_33;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (5-й канал, полукомплект А)"] = j48a_34;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (5-й канал, полукомплект А, 2-я пара 2-го кабеля ПТРК-10х2)"] = j48a_35;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (5-й канал, полукомплект А, 2-я пара 2-го кабеля ПТРК-10х2)"] = j48a_36;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (5-й канал, полукомплект А, 2-я пара 2-го кабеля ПТРК-10х2)"] = j48a_37;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (5-й канал, полукомплект А, 2-я пара 2-го кабеля ПТРК-10х2)"] = j48a_38;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (5-й канал, полукомплект А)"] = j48a_39;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (5-й канал, полукомплект А, 2-я пара 2-го кабеля ПТРК-10х2)"] = j48a_40;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (6-й канал, полукомплект А, 3-я пара 2-го кабеля ПТРК-10х2)"] = jumper82;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (6-й канал, полукомплект А)"] = jumper83;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (6-й канал, полукомплект А, 3-я пара 2-го кабеля ПТРК-10х2)"] = jumper84;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (6-й канал, полукомплект А, 3-я пара 2-го кабеля ПТРК-10х2)"] = jumper85;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (6-й канал, полукомплект А, 4-я пара 2-го кабеля ПТРК-10х2)"] = jumper86;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (6-й канал, полукомплект А, 4-я пара 2-го кабеля ПТРК-10х2)"] = jumper87;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (6-й канал, полукомплект А)"] = jumper88;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (6-й канал, полукомплект А, 4-я пара 2-го кабеля ПТРК-10х2)"] = jumper89;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (7-й канал, полукомплект А, 6-я пара 2-го кабеля ПТРК-10х2)"] = jumper90;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (7-й канал, полукомплект А)"] = jumper91;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (7-й канал, полукомплект А, 6-я пара 2-го кабеля ПТРК-10х2)"] = jumper92;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (7-й канал, полукомплект А, 6-я пара 2-го кабеля ПТРК-10х2)"] = jumper93;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (7-й канал, полукомплект А, 7-я пара 2-го кабеля ПТРК-10х2)"] = jumper94;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (7-й канал, полукомплект А, 7-я пара 2-го кабеля ПТРК-10х2)"] = jumper95;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (7-й канал, полукомплект А)"] = jumper96;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (7-й канал, полукомплект А, 7-я пара 2-го кабеля ПТРК-10х2)"] = jumper97;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (8-й канал, полукомплект А, 8-я пара 2-го кабеля ПТРК-10х2)"] = jumper98;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (8-й канал, полукомплект А)"] = jumper99;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (8-й канал, полукомплект А, 8-я пара 2-го кабеля ПТРК-10х2)"] = jumper100;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (8-й канал, полукомплект А, 8-я пара 2-го кабеля ПТРК-10х2)"] = jumper101;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (8-й канал, полукомплект А, 9-я пара 2-го кабеля ПТРК-10х2)"] = jumper102;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (8-й канал, полукомплект А, 9-я пара 2-го кабеля ПТРК-10х2)"] = jumper103;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (8-й канал, полукомплект А)"] = jumper104;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (8-й канал, полукомплект А, 9-я пара 2-го кабеля ПТРК-10х2)"] = jumper105;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (9-й канал, полукомплект А, 8-я пара 3-го кабеля ПТРК-10х2)"] = jumper106;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (9-й канал, полукомплект А)"] = jumper107;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (9-й канал, полукомплект А, 8-я пара 3-го кабеля ПТРК-10х2)"] = jumper108;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (9-й канал, полукомплект А, 8-я пара 3-го кабеля ПТРК-10х2)"] = jumper109;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (9-й канал, полукомплект А, 9-я пара 3-го кабеля ПТРК-10х2)"] = jumper110;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (9-й канал, полукомплект А, 9-я пара 3-го кабеля ПТРК-10х2)"] = jumper111;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (9-й канал, полукомплект А)"] = jumper112;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (9-й канал, полукомплект А, 9-я пара 3-го кабеля ПТРК-10х2)"] = jumper113;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (10-й канал, полукомплект А, 1-я пара 3-го кабеля ПТРК-10х2)"] = jumper114;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме 48 КБИТ/С (10-й канал, полукомплект А, 1-я пара 3-го кабеля ПТРК-10х2)"] = jumper115;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (10-й канал, полукомплект А, 1-я пара 3-го кабеля ПТРК-10х2)"] = jumper116;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (10-й канал, полукомплект А, 1-я пара 3-го кабеля ПТРК-10х2)"] = jumper117;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = jumper118;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = jumper119;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме 48 КБИТ/С (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = jumper120;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = jumper121;
			//
			////end of header controls
			//
			////footer controls
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (1-й канал, полукомплект Б)"] = j21;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (1-й канал, полукомплект Б)"] = j22;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (2-й канал, полукомплект Б)"] = j23;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (2-й канал, полукомплект Б)"] = j24;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (3-й канал, полукомплект Б)"] = j25;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (3-й канал, полукомплект Б)"] = j26;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (4-й канал, полукомплект Б)"] = j27;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (4-й канал, полукомплект Б)"] = j28;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (5-й канал, полукомплект Б)"] = j29;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (5-й канал, полукомплект Б)"] = j30;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (6-й канал, полукомплект Б)"] = j31;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (6-й канал, полукомплект Б)"] = j32;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (7-й канал, полукомплект Б)"] = j33;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (7-й канал, полукомплект Б)"] = j34;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (8-й канал, полукомплект Б)"] = j35;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (8-й канал, полукомплект Б)"] = j36;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (9-й канал, полукомплект Б)"] = j37;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (9-й канал, полукомплект Б)"] = j38;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ОКОН (10-й канал, полукомплект Б)"] = j39;
			//this.ControlDictionary["4-хконтактная перемычка на разъеме ТРАНЗ (10-й канал, полукомплект Б)"] = j40;
			//
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (1-й канал, полукомплект Б)"] = jo1b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (1-й канал, полукомплект Б, 1-я пара 1-го кабеля ПТРК-10х2)"] = jo2b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (1-й канал, полукомплект Б, 2-я пара 1-го кабеля ПТРК-10х2)"] = jo3b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (1-й канал, полукомплект Б)"] = jo4b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (2-й канал, полукомплект Б)"] = jo5b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (2-й канал, полукомплект Б, 3-я пара 1-го кабеля ПТРК-10х2)"] = jo6b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (2-й канал, полукомплект Б, 4-я пара 1-го кабеля ПТРК-10х2)"] = jo7b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (2-й канал, полукомплект Б)"] = jo8b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (3-й канал, полукомплект Б)"] = jo9b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (3-й канал, полукомплект Б, 6-я пара 1-го кабеля ПТРК-10х2)"] = jo10b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (3-й канал, полукомплект Б, 7-я пара 1-го кабеля ПТРК-10х2)"] = jo11b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (3-й канал, полукомплект Б)"] = jo12b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (4-й канал, полукомплект Б)"] = jo13b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (4-й канал, полукомплект Б, 8-я пара 1-го кабеля ПТРК-10х2)"] = jo14b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (4-й канал, полукомплект Б, 9-я пара 1-го кабеля ПТРК-10х2)"] = jo15b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (4-й канал, полукомплект Б)"] = jo16b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (5-й канал, полукомплект Б)"] = jo17b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (5-й канал, полукомплект Б, 1-я пара 2-го кабеля ПТРК-10х2)"] = jo18b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (5-й канал, полукомплект Б, 2-я пара 2-го кабеля ПТРК-10х2)"] = jo19b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (5-й канал, полукомплект Б)"] = jo20b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (6-й канал, полукомплект Б)"] = jo21b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (6-й канал, полукомплект Б, 3-я пара 2-го кабеля ПТРК-10х2)"] = jo22b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (6-й канал, полукомплект Б, 4-я пара 2-го кабеля ПТРК-10х2)"] = jo23b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (6-й канал, полукомплект Б)"] = jo24b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (7-й канал, полукомплект Б)"] = jo25b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (7-й канал, полукомплект Б, 6-я пара 2-го кабеля ПТРК-10х2)"] = jo26b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (7-й канал, полукомплект Б, 7-я пара 2-го кабеля ПТРК-10х2)"] = jo27b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (7-й канал, полукомплект Б)"] = jo28b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (8-й канал, полукомплект Б)"] = jo29b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (8-й канал, полукомплект Б, 8-я пара 2-го кабеля ПТРК-10х2)"] = jo30b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (8-й канал, полукомплект Б, 9-я пара 2-го кабеля ПТРК-10х2)"] = jo31b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (8-й канал, полукомплект Б)"] = jo32b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3А (9-й канал, полукомплект Б)"] = jo33b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (9-й канал, полукомплект Б, 8-я пара 3-го кабеля ПТРК-10х2)"] = jo34b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (9-й канал, полукомплект Б, 9-я пара 3-го кабеля ПТРК-10х2)"] = jo35b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - ИО-3Б (9-й канал, полукомплект Б)"] = jo36b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - 48 КБИТ/С (10-й канал, полукомплект Б, 1-я пара 3-го кабеля ПТРК-10х2)"] = jo37b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (10-й канал, полукомплект Б, 1-я пара 3-го кабеля ПТРК-10х2)"] = jo38b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИТ АС (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = jo39b;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах ИТ ЦСС - 48 КБИТ/С (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = jo40b;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (1-й канал, полукомплект Б, 1-я пара 1-го кабеля ПТРК-10х2)"] = jumper164;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (1-й канал, полукомплект Б)"] = jumper165;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (1-й канал, полукомплект Б, 1-я пара 1-го кабеля ПТРК-10х2)"] = jumper166;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (1-й канал, полукомплект Б, 1-я пара 1-го кабеля ПТРК-10х2)"] = jumper167;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (1-й канал, полукомплект Б, 2-я пара 1-го кабеля ПТРК-10х2)"] = jumper168;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (1-й канал, полукомплект Б, 2-я пара 1-го кабеля ПТРК-10х2)"] = jumper169;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (1-й канал, полукомплект Б)"] = jumper170;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (1-й канал, полукомплект Б, 2-я пара 1-го кабеля ПТРК-10х2)"] = jumper171;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (2-й канал, полукомплект Б, 3-я пара 1-го кабеля ПТРК-10х2)"] = jumper175;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (2-й канал, полукомплект Б)"] = jumper176;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (2-й канал, полукомплект Б, 3-я пара 1-го кабеля ПТРК-10х2)"] = jumper177;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (2-й канал, полукомплект Б, 3-я пара 1-го кабеля ПТРК-10х2)"] = jumper178;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (2-й канал, полукомплект Б, 4-я пара 1-го кабеля ПТРК-10х2)"] = jumper179;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (2-й канал, полукомплект Б, 4-я пара 1-го кабеля ПТРК-10х2)"] = jumper180;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (2-й канал, полукомплект Б)"] = jumper181;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (2-й канал, полукомплект Б, 4-я пара 1-го кабеля ПТРК-10х2)"] = jumper182;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (3-й канал, полукомплект Б, 6-я пара 1-го кабеля ПТРК-10х2)"] = jumper186;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (3-й канал, полукомплект Б)"] = jumper187;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (3-й канал, полукомплект Б, 6-я пара 1-го кабеля ПТРК-10х2)"] = jumper188;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (3-й канал, полукомплект Б, 6-я пара 1-го кабеля ПТРК-10х2)"] = jumper189;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (3-й канал, полукомплект Б, 7-я пара 1-го кабеля ПТРК-10х2)"] = jumper190;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (3-й канал, полукомплект Б, 7-я пара 1-го кабеля ПТРК-10х2)"] = jumper191;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (3-й канал, полукомплект Б)"] = jumper192;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (3-й канал, полукомплект Б, 7-я пара 1-го кабеля ПТРК-10х2)"] = jumper193;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (4-й канал, полукомплект Б, 8-я пара 1-го кабеля ПТРК-10х2)"] = jumper197;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (4-й канал, полукомплект Б)"] = jumper198;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (4-й канал, полукомплект Б, 8-я пара 1-го кабеля ПТРК-10х2)"] = jumper199;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (4-й канал, полукомплект Б, 8-я пара 1-го кабеля ПТРК-10х2)"] = jumper200;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (4-й канал, полукомплект Б, 9-я пара 1-го кабеля ПТРК-10х2)"] = jumper201;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (4-й канал, полукомплект Б, 9-я пара 1-го кабеля ПТРК-10х2)"] = jumper202;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (4-й канал, полукомплект Б)"] = jumper203;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (4-й канал, полукомплект Б, 9-я пара 1-го кабеля ПТРК-10х2)"] = jumper204;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (5-й канал, полукомплект Б, 1-я пара 2-го кабеля ПТРК-10х2)"] = jumper208;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (5-й канал, полукомплект Б)"] = jumper209;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (5-й канал, полукомплект Б, 1-я пара 2-го кабеля ПТРК-10х2)"] = jumper210;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (5-й канал, полукомплект Б, 1-я пара 2-го кабеля ПТРК-10х2)"] = jumper211;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (5-й канал, полукомплект Б, 2-я пара 2-го кабеля ПТРК-10х2)"] = jumper212;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (5-й канал, полукомплект Б, 2-я пара 2-го кабеля ПТРК-10х2)"] = jumper213;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (5-й канал, полукомплект Б)"] = jumper214;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (5-й канал, полукомплект Б, 2-я пара 2-го кабеля ПТРК-10х2)"] = jumper215;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (6-й канал, полукомплект Б, 3-я пара 2-го кабеля ПТРК-10х2)"] = jumper219;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (6-й канал, полукомплект Б)"] = jumper220;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (6-й канал, полукомплект Б, 3-я пара 2-го кабеля ПТРК-10х2)"] = jumper221;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (6-й канал, полукомплект Б, 3-я пара 2-го кабеля ПТРК-10х2)"] = jumper222;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (6-й канал, полукомплект Б, 4-я пара 2-го кабеля ПТРК-10х2)"] = jumper223;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (6-й канал, полукомплект Б, 4-я пара 2-го кабеля ПТРК-10х2)"] = jumper224;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (6-й канал, полукомплект Б)"] = jumper225;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (6-й канал, полукомплект Б, 4-я пара 2-го кабеля ПТРК-10х2)"] = jumper226;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (7-й канал, полукомплект Б, 6-я пара 2-го кабеля ПТРК-10х2)"] = jumper230;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (7-й канал, полукомплект Б)"] = jumper231;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (7-й канал, полукомплект Б, 6-я пара 2-го кабеля ПТРК-10х2)"] = jumper232;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (7-й канал, полукомплект Б, 6-я пара 2-го кабеля ПТРК-10х2)"] = jumper233;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (7-й канал, полукомплект Б, 7-я пара 2-го кабеля ПТРК-10х2)"] = jumper234;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (7-й канал, полукомплект Б, 7-я пара 2-го кабеля ПТРК-10х2)"] = jumper235;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (7-й канал, полукомплект Б)"] = jumper236;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (7-й канал, полукомплект Б, 7-я пара 2-го кабеля ПТРК-10х2)"] = jumper237;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (8-й канал, полукомплект Б, 8-я пара 2-го кабеля ПТРК-10х2)"] = jumper241;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (8-й канал, полукомплект Б)"] = jumper242;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (8-й канал, полукомплект Б, 8-я пара 2-го кабеля ПТРК-10х2)"] = jumper243;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (8-й канал, полукомплект Б, 8-я пара 2-го кабеля ПТРК-10х2)"] = jumper244;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (8-й канал, полукомплект Б, 9-я пара 2-го кабеля ПТРК-10х2)"] = jumper245;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (8-й канал, полукомплект Б, 9-я пара 2-го кабеля ПТРК-10х2)"] = jumper246;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (8-й канал, полукомплект Б)"] = jumper247;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (8-й канал, полукомплект Б, 9-я пара 2-го кабеля ПТРК-10х2)"] = jumper248;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (9-й канал, полукомплект Б, 8-я пара 3-го кабеля ПТРК-10х2)"] = jumper252;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (9-й канал, полукомплект Б)"] = jumper253;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (9-й канал, полукомплект Б, 8-я пара 3-го кабеля ПТРК-10х2)"] = jumper254;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (9-й канал, полукомплект Б, 8-я пара 3-го кабеля ПТРК-10х2)"] = jumper255;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (9-й канал, полукомплект Б, 9-я пара 3-го кабеля ПТРК-10х2)"] = jumper256;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (9-й канал, полукомплект Б, 9-я пара 3-го кабеля ПТРК-10х2)"] = jumper257;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (9-й канал, полукомплект Б)"] = jumper258;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (9-й канал, полукомплект Б, 9-я пара 3-го кабеля ПТРК-10х2)"] = jumper259;
			//
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (10-й канал, полукомплект Б, 1-я пара 3-го кабеля ПТРК-10х2)"] = jumper260;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме 48 КБИТ/С (10-й канал, полукомплект Б, 1-я пара 3-го кабеля ПТРК-10х2)"] = jumper261;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (10-й канал, полукомплект Б, 1-я пара 3-го кабеля ПТРК-10х2)"] = jumper262;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (10-й канал, полукомплект Б, 1-я пара 3-го кабеля ПТРК-10х2)"] = jumper263;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = jumper264;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = jumper265;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме 48 КБИТ/С (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = jumper266;
			//this.ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = jumper267;
			//
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (1-й канал, полукомплект А)"] = jc1;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (1-й канал, полукомплект А)"] = jc2;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (1-й канал, полукомплект Б)"] = jc3;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (1-й канал, полукомплект Б)"] = jc4;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (2-й канал, полукомплект А)"] = jc21;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (2-й канал, полукомплект А)"] = jc22;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (2-й канал, полукомплект Б)"] = jc23;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (2-й канал, полукомплект Б)"] = jc24;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (3-й канал, полукомплект А)"] = jc5;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (3-й канал, полукомплект А)"] = jc6;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (3-й канал, полукомплект Б)"] = jc7;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (3-й канал, полукомплект Б)"] = jc8;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (4-й канал, полукомплект А)"] = jc25;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (4-й канал, полукомплект А)"] = jc26;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (4-й канал, полукомплект Б)"] = jc27;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (4-й канал, полукомплект Б)"] = jc28;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (5-й канал, полукомплект А)"] = jc9;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (5-й канал, полукомплект А)"] = jc10;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (5-й канал, полукомплект Б)"] = jc11;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (5-й канал, полукомплект Б)"] = jc12;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (6-й канал, полукомплект А)"] = jc29;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (6-й канал, полукомплект А)"] = jc30;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (6-й канал, полукомплект Б)"] = jc31;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (6-й канал, полукомплект Б)"] = jc32;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (7-й канал, полукомплект А)"] = jc13;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (7-й канал, полукомплект А)"] = jc14;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (7-й канал, полукомплект Б)"] = jc15;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (7-й канал, полукомплект Б)"] = jc16;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (8-й канал, полукомплект А)"] = jc33;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (8-й канал, полукомплект А)"] = jc34;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (8-й канал, полукомплект Б)"] = jc35;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (8-й канал, полукомплект Б)"] = jc36;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (9-й канал, полукомплект А)"] = jc17;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (9-й канал, полукомплект А)"] = jc18;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - 48 КБИТ/С (10-й канал, полукомплект А, 1-я пара 3-го кабеля ПТРК-10х2)"] = jc19;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - 48 КБИТ/С (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = jc20;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3А (9-й канал, полукомплект Б)"] = jc37;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - ИО-3Б (9-й канал, полукомплект Б)"] = jc38;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - 48 КБИТ/С (10-й канал, полукомплект Б, 1-я пара 3-го кабеля ПТРК-10х2)"] = jc39;
			//this.ControlDictionary["4-хконтактная перемычка на разъемах КАБЕЛЬ - 48 КБИТ/С (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = jc40;
		//
			//end of footer controls
		}
	}

}
