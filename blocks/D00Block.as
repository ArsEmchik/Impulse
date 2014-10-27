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
			//полукомплект А
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (1-й канал, полукомплект А)"] = j1;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (1-й канал, полукомплект А)"] = j2;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (2-й канал, полукомплект А)"] = j3;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (2-й канал, полукомплект А)"] = j4;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (3-й канал, полукомплект А)"] = j5;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (3-й канал, полукомплект А)"] = j6;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (4-й канал, полукомплект А)"] = j7;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (4-й канал, полукомплект А)"] = j8;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (5-й канал, полукомплект А)"] = j9;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (5-й канал, полукомплект А)"] = j10;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (6-й канал, полукомплект А)"] = j11;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (6-й канал, полукомплект А)"] = j12;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (7-й канал, полукомплект А)"] = j13;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (7-й канал, полукомплект А)"] = j14;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (8-й канал, полукомплект А)"] = j15;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (8-й канал, полукомплект А)"] = j16;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (9-й канал, полукомплект А)"] = j17;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (9-й канал, полукомплект А)"] = j18;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (10-й канал, полукомплект А)"] = j19;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (10-й канал, полукомплект А)"] = j20;

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
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (5-й канал, полукомплект А, 1-я пара 2-го кабеля ПТРК-10х2)"] = ioACh5Pair1DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (5-й канал, полукомплект А)"] = ioACh5Pair1Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (5-й канал, полукомплект А, 1-я пара 2-го кабеля ПТРК-10х2)"] = ioACh5Pair1Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (5-й канал, полукомплект А, 1-я пара 2-го кабеля ПТРК-10х2)"] = ioACh5Pair1AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (5-й канал, полукомплект А, 2-я пара 2-го кабеля ПТРК-10х2)"] = ioACh5Pair2AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (5-й канал, полукомплект А, 2-я пара 2-го кабеля ПТРК-10х2)"] = ioACh5Pair2Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (5-й канал, полукомплект А)"] = ioACh5Pair2Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (5-й канал, полукомплект А, 2-я пара 2-го кабеля ПТРК-10х2)"] = ioACh5Pair2DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (6-й канал, полукомплект А, 3-я пара 2-го кабеля ПТРК-30х2)"] = ioACh6Pair3DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (6-й канал, полукомплект А)"] = ioACh6Pair3Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (6-й канал, полукомплект А, 3-я пара 2-го кабеля ПТРК-30х2)"] = ioACh6Pair3Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (6-й канал, полукомплект А, 3-я пара 2-го кабеля ПТРК-10х2)"] = ioACh6Pair3AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (6-й канал, полукомплект А, 4-я пара 2-го кабеля ПТРК-10х2)"] = ioACh6Pair4AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (6-й канал, полукомплект А, 4-я пара 2-го кабеля ПТРК-10х2)"] = ioACh6Pair4Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (6-й канал, полукомплект А)"] = ioACh6Pair4Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (6-й канал, полукомплект А, 4-я пара 2-го кабеля ПТРК-10х2)"] = ioACh6Pair4DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (7-й канал, полукомплект А, 6-я пара 2-го кабеля ПТРК-10х2)"] = ioACh7Pair6DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (7-й канал, полукомплект А)"] = ioACh7Pair6Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (7-й канал, полукомплект А, 6-я пара 2-го кабеля ПТРК-10х2)"] = ioACh7Pair6Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (7-й канал, полукомплект А, 6-я пара 2-го кабеля ПТРК-10х2)"] = ioACh7Pair6AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (7-й канал, полукомплект А, 7-я пара 2-го кабеля ПТРК-10х2)"] = ioACh7Pair7AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (7-й канал, полукомплект А, 7-я пара 2-го кабеля ПТРК-10х2)"] = ioACh7Pair7Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (7-й канал, полукомплект А)"] = ioACh7Pair7Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (7-й канал, полукомплект А, 7-я пара 2-го кабеля ПТРК-10х2)"] = ioACh7Pair7DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (8-й канал, полукомплект А, 8-я пара 2-го кабеля ПТРК-10х2)"] = ioACh8Pair8DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (8-й канал, полукомплект А)"] = ioACh8Pair8Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (8-й канал, полукомплект А, 8-я пара 2-го кабеля ПТРК-10х2)"] = ioACh8Pair8Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (8-й канал, полукомплект А, 8-я пара 2-го кабеля ПТРК-10х2)"] = ioACh8Pair8AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (8-й канал, полукомплект А, 9-я пара 2-го кабеля ПТРК-10х2)"] = ioACh8Pair9AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (8-й канал, полукомплект А, 9-я пара 2-го кабеля ПТРК-10х2)"] = ioACh8Pair9Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (8-й канал, полукомплект А)"] = ioACh8Pair9Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (8-й канал, полукомплект А, 9-я пара 2-го кабеля ПТРК-10х2)"] = ioACh8Pair9DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (9-й канал, полукомплект А, 8-я пара 3-го кабеля ПТРК-10х2)"] = ioACh9Pair8DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (9-й канал, полукомплект А)"] = ioACh9Pair8Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (9-й канал, полукомплект А, 8-я пара 3-го кабеля ПТРК-10х2)"] = ioACh9Pair8Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (9-й канал, полукомплект А, 8-я пара 3-го кабеля ПТРК-10х2)"] = ioACh9Pair8AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (9-й канал, полукомплект А, 9-я пара 3-го кабеля ПТРК-10х2)"] = ioACh9Pair9AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (9-й канал, полукомплект А, 9-я пара 3-го кабеля ПТРК-10х2)"] = ioACh9Pair9Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (9-й канал, полукомплект А)"] = ioACh9Pair9Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (9-й канал, полукомплект А, 9-я пара 3-го кабеля ПТРК-10х2)"] = ioACh9Pair9DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (10-й канал, полукомплект А, 1-я пара 3-го кабеля ПТРК-10х2)"] = ioACh10Pair1DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме 48 КБИТ/С (10-й канал, полукомплект А)"] = ioACh10Pair1Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioACh10Pair1Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioACh10Pair1AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioACh10Pair2AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioACh10Pair2Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме 48 КБИТ/С (10-й канал, полукомплект А)"] = ioACh10Pair2Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioACh10Pair2DigitalOut;
			
			//полукомплект Б
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (1-й канал, полукомплект Б)"] = j1;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (1-й канал, полукомплект Б)"] = j2;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (2-й канал, полукомплект Б)"] = j3;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (2-й канал, полукомплект Б)"] = j4;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (3-й канал, полукомплект Б)"] = j5;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (3-й канал, полукомплект Б)"] = j6;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (4-й канал, полукомплект Б)"] = j7;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (4-й канал, полукомплект Б)"] = j8;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (5-й канал, полукомплект Б)"] = j9;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (5-й канал, полукомплект Б)"] = j10;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (6-й канал, полукомплект Б)"] = j11;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (6-й канал, полукомплект Б)"] = j12;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (7-й канал, полукомплект Б)"] = j13;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (7-й канал, полукомплект Б)"] = j14;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (8-й канал, полукомплект Б)"] = j15;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (8-й канал, полукомплект Б)"] = j16;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (9-й канал, полукомплект Б)"] = j17;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (9-й канал, полукомплект Б)"] = j18;
			//ControlDictionary["2-хконтактная перемычка на разъеме ОКОН (10-й канал, полукомплект Б)"] = j19;
			//ControlDictionary["2-хконтактная перемычка на разъеме ТРАНЗ (10-й канал, полукомплект Б)"] = j20;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (1-й канал, полукомплект Б, 1-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh1Pair1DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (1-й канал, полукомплект Б)"] = ioBCh1Pair1Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (1-й канал, полукомплект Б, 1-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh1Pair1Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (1-й канал, полукомплект Б, 1-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh1Pair1AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (1-й канал, полукомплект Б, 2-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh1Pair2AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (1-й канал, полукомплект Б, 2-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh1Pair2Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (1-й канал, полукомплект Б)"] = ioBCh1Pair2Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (1-й канал, полукомплект Б, 2-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh1Pair2DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (2-й канал, полукомплект Б, 3-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh2Pair3DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (2-й канал, полукомплект Б)"] = ioBCh2Pair3Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (2-й канал, полукомплект Б, 3-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh2Pair3Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (2-й канал, полукомплект Б, 3-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh2Pair3AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (2-й канал, полукомплект Б, 4-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh2Pair4AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (2-й канал, полукомплект Б, 4-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh2Pair4Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (2-й канал, полукомплект Б)"] = ioBCh2Pair4Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (2-й канал, полукомплект Б, 4-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh2Pair4DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (3-й канал, полукомплект Б, 6-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh3Pair6DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (3-й канал, полукомплект Б)"] = ioBCh3Pair6Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (3-й канал, полукомплект Б, 6-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh3Pair6Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (3-й канал, полукомплект Б, 6-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh3Pair6AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (3-й канал, полукомплект Б, 7-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh3Pair7AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (3-й канал, полукомплект Б, 7-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh3Pair7Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (3-й канал, полукомплект Б)"] = ioBCh3Pair7Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (3-й канал, полукомплект Б, 7-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh3Pair7DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (4-й канал, полукомплект Б, 8-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh4Pair8DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (4-й канал, полукомплект Б)"] = ioBCh4Pair8Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (4-й канал, полукомплект Б, 8-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh4Pair8Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (4-й канал, полукомплект Б, 8-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh4Pair8AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (4-й канал, полукомплект Б, 9-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh4Pair9AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (4-й канал, полукомплект Б, 9-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh4Pair9Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (4-й канал, полукомплект Б)"] = ioBCh4Pair9Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (4-й канал, полукомплект Б, 9-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh4Pair9DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (5-й канал, полукомплект Б, 1-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh5Pair1DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (5-й канал, полукомплект Б)"] = ioBCh5Pair1Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (5-й канал, полукомплект Б, 1-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh5Pair1Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (5-й канал, полукомплект Б, 1-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh5Pair1AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (5-й канал, полукомплект Б, 2-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh5Pair2AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (5-й канал, полукомплект Б, 2-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh5Pair2Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (5-й канал, полукомплект Б)"] = ioBCh5Pair2Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (5-й канал, полукомплект Б, 2-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh5Pair2DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (6-й канал, полукомплект Б, 3-я пара 2-го кабеля ПТРК-30х2)"] = ioBCh6Pair3DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (6-й канал, полукомплект Б)"] = ioBCh6Pair3Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (6-й канал, полукомплект Б, 3-я пара 2-го кабеля ПТРК-30х2)"] = ioBCh6Pair3Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (6-й канал, полукомплект Б, 3-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh6Pair3AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (6-й канал, полукомплект Б, 4-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh6Pair4AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (6-й канал, полукомплект Б, 4-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh6Pair4Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (6-й канал, полукомплект Б)"] = ioBCh6Pair4Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (6-й канал, полукомплект Б, 4-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh6Pair4DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (7-й канал, полукомплект Б, 6-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh7Pair6DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (7-й канал, полукомплект Б)"] = ioBCh7Pair6Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (7-й канал, полукомплект Б, 6-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh7Pair6Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (7-й канал, полукомплект Б, 6-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh7Pair6AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (7-й канал, полукомплект Б, 7-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh7Pair7AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (7-й канал, полукомплект Б, 7-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh7Pair7Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (7-й канал, полукомплект Б)"] = ioBCh7Pair7Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (7-й канал, полукомплект Б, 7-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh7Pair7DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (8-й канал, полукомплект Б, 8-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh8Pair8DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (8-й канал, полукомплект Б)"] = ioBCh8Pair8Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (8-й канал, полукомплект Б, 8-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh8Pair8Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (8-й канал, полукомплект Б, 8-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh8Pair8AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (8-й канал, полукомплект Б, 9-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh8Pair9AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (8-й канал, полукомплект Б, 9-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh8Pair9Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (8-й канал, полукомплект Б)"] = ioBCh8Pair9Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (8-й канал, полукомплект Б, 9-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh8Pair9DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (9-й канал, полукомплект Б, 8-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh9Pair8DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3А (9-й канал, полукомплект Б)"] = ioBCh9Pair8Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (9-й канал, полукомплект Б, 8-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh9Pair8Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (9-й канал, полукомплект Б, 8-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh9Pair8AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (9-й канал, полукомплект Б, 9-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh9Pair9AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (9-й канал, полукомплект Б, 9-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh9Pair9Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИО-3Б (9-й канал, полукомплект Б)"] = ioBCh9Pair9Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (9-й канал, полукомплект Б, 9-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh9Pair9DigitalOut;
			
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (10-й канал, полукомплект Б, 1-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh10Pair1DigitalOut;
			ControlDictionary["2-хконтактная перемычка на разъеме 48 КБИТ/С (10-й канал, полукомплект Б)"] = ioBCh10Pair1Out3a;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh10Pair1Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh10Pair1AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ АС (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh10Pair2AnalogIn;
			ControlDictionary["2-хконтактная перемычка на разъеме КАБЕЛЬ (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh10Pair2Cable;
			ControlDictionary["2-хконтактная перемычка на разъеме 48 КБИТ/С (10-й канал, полукомплект Б)"] = ioBCh10Pair2Out3b;
			ControlDictionary["2-хконтактная перемычка на разъеме ИТ ЦСС (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh10Pair2DigitalOut;
			
			//диф системы
			ControlDictionary["2-хконтактная перемычка на разъеме 4ПР ПРМ 1-й диф системы"] = ioDiffA4WiredSend;
			ControlDictionary["2-хконтактная перемычка на разъеме 4ПР ПРД 1-й диф системы"] = ioDiffA4WiredReceive;
			ControlDictionary["2-хконтактная перемычка на разъеме 2ПР 1-й диф системы"] = ioDiffA2Wired;
			
			ControlDictionary["2-хконтактная перемычка на разъеме 4ПР ПРМ 2-й диф системы"] = ioDiffB4WiredSend;
			ControlDictionary["2-хконтактная перемычка на разъеме 4ПР ПРД 2й диф системы"] = ioDiffB4WiredReceive;
			ControlDictionary["2-хконтактная перемычка на разъеме 2ПР 2-й диф системы"] = ioDiffB2Wired;
		}
	}

}
