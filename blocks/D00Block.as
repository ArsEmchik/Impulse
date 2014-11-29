package blocks
{
	import controls.D31Jumper;
	import fl.controls.Button;
	import flash.text.TextField;
	
	public class D00Block extends ImpulsUnit
	{
		public var ioACh1ModeEndpoint:D31Jumper;
		public var ioACh1ModeCenter:D31Jumper;
		public var ioACh1ModeTransit:D31Jumper;
		public var ioACh2ModeEndpoint:D31Jumper;
		public var ioACh2ModeCenter:D31Jumper;
		public var ioACh2ModeTransit:D31Jumper;
		public var ioACh3ModeEndpoint:D31Jumper;
		public var ioACh3ModeCenter:D31Jumper;
		public var ioACh3ModeTransit:D31Jumper;
		public var ioACh4ModeEndpoint:D31Jumper;
		public var ioACh4ModeCenter:D31Jumper;
		public var ioACh4ModeTransit:D31Jumper;
		public var ioACh5ModeEndpoint:D31Jumper;
		public var ioACh5ModeCenter:D31Jumper;
		public var ioACh5ModeTransit:D31Jumper;
		public var ioACh6ModeEndpoint:D31Jumper;
		public var ioACh6ModeCenter:D31Jumper;
		public var ioACh6ModeTransit:D31Jumper;
		public var ioACh7ModeEndpoint:D31Jumper;
		public var ioACh7ModeCenter:D31Jumper;
		public var ioACh7ModeTransit:D31Jumper;
		public var ioACh8ModeEndpoint:D31Jumper;
		public var ioACh8ModeCenter:D31Jumper;
		public var ioACh8ModeTransit:D31Jumper;
		public var ioACh9ModeEndpoint:D31Jumper;
		public var ioACh9ModeCenter:D31Jumper;
		public var ioACh9ModeTransit:D31Jumper;
		public var ioACh10ModeEndpoint:D31Jumper;
		public var ioACh10ModeCenter:D31Jumper;
		public var ioACh10ModeTransit:D31Jumper;
		
		public var ioBCh1ModeEndpoint:D31Jumper;
		public var ioBCh1ModeCenter:D31Jumper;
		public var ioBCh1ModeTransit:D31Jumper;
		public var ioBCh2ModeEndpoint:D31Jumper;
		public var ioBCh2ModeCenter:D31Jumper;
		public var ioBCh2ModeTransit:D31Jumper;
		public var ioBCh3ModeEndpoint:D31Jumper;
		public var ioBCh3ModeCenter:D31Jumper;
		public var ioBCh3ModeTransit:D31Jumper;
		public var ioBCh4ModeEndpoint:D31Jumper;
		public var ioBCh4ModeCenter:D31Jumper;
		public var ioBCh4ModeTransit:D31Jumper;
		public var ioBCh5ModeEndpoint:D31Jumper;
		public var ioBCh5ModeCenter:D31Jumper;
		public var ioBCh5ModeTransit:D31Jumper;
		public var ioBCh6ModeEndpoint:D31Jumper;
		public var ioBCh6ModeCenter:D31Jumper;
		public var ioBCh6ModeTransit:D31Jumper;
		public var ioBCh7ModeEndpoint:D31Jumper;
		public var ioBCh7ModeCenter:D31Jumper;
		public var ioBCh7ModeTransit:D31Jumper;
		public var ioBCh8ModeEndpoint:D31Jumper;
		public var ioBCh8ModeCenter:D31Jumper;
		public var ioBCh8ModeTransit:D31Jumper;
		public var ioBCh9ModeEndpoint:D31Jumper;
		public var ioBCh9ModeCenter:D31Jumper;
		public var ioBCh9ModeTransit:D31Jumper;
		public var ioBCh10ModeEndpoint:D31Jumper;
		public var ioBCh10ModeCenter:D31Jumper;
		public var ioBCh10ModeTransit:D31Jumper;
		
		public var ioACh1Pair1DigitalOut:D31Jumper;
		public var ioACh1Pair1Out3a:D31Jumper;
		public var ioACh1Pair1Cable:D31Jumper;
		public var ioACh1Pair1AnalogIn:D31Jumper;
		public var ioACh1Pair2AnalogIn:D31Jumper;
		public var ioACh1Pair2Cable:D31Jumper;
		public var ioACh1Pair2Out3b:D31Jumper;
		public var ioACh1Pair2DigitalOut:D31Jumper;
		
		public var ioACh2Pair3DigitalOut:D31Jumper;
		public var ioACh2Pair3Out3a:D31Jumper;
		public var ioACh2Pair3Cable:D31Jumper;
		public var ioACh2Pair3AnalogIn:D31Jumper;
		public var ioACh2Pair4AnalogIn:D31Jumper;
		public var ioACh2Pair4Cable:D31Jumper;
		public var ioACh2Pair4Out3b:D31Jumper;
		public var ioACh2Pair4DigitalOut:D31Jumper;
		
		public var ioACh3Pair6DigitalOut:D31Jumper;
		public var ioACh3Pair6Out3a:D31Jumper;
		public var ioACh3Pair6Cable:D31Jumper;
		public var ioACh3Pair6AnalogIn:D31Jumper;
		public var ioACh3Pair7AnalogIn:D31Jumper;
		public var ioACh3Pair7Cable:D31Jumper;
		public var ioACh3Pair7Out3b:D31Jumper;
		public var ioACh3Pair7DigitalOut:D31Jumper;
		
		public var ioACh4Pair8DigitalOut:D31Jumper;
		public var ioACh4Pair8Out3a:D31Jumper;
		public var ioACh4Pair8Cable:D31Jumper;
		public var ioACh4Pair8AnalogIn:D31Jumper;
		public var ioACh4Pair9AnalogIn:D31Jumper;
		public var ioACh4Pair9Cable:D31Jumper;
		public var ioACh4Pair9Out3b:D31Jumper;
		public var ioACh4Pair9DigitalOut:D31Jumper;
		
		public var ioACh5Pair1DigitalOut:D31Jumper;
		public var ioACh5Pair1Out3a:D31Jumper;
		public var ioACh5Pair1Cable:D31Jumper;
		public var ioACh5Pair1AnalogIn:D31Jumper;
		public var ioACh5Pair2AnalogIn:D31Jumper;
		public var ioACh5Pair2Cable:D31Jumper;
		public var ioACh5Pair2Out3b:D31Jumper;
		public var ioACh5Pair2DigitalOut:D31Jumper;
		
		public var ioACh6Pair3DigitalOut:D31Jumper;
		public var ioACh6Pair3Out3a:D31Jumper;
		public var ioACh6Pair3Cable:D31Jumper;
		public var ioACh6Pair3AnalogIn:D31Jumper;
		public var ioACh6Pair4AnalogIn:D31Jumper;
		public var ioACh6Pair4Cable:D31Jumper;
		public var ioACh6Pair4Out3b:D31Jumper;
		public var ioACh6Pair4DigitalOut:D31Jumper;
		
		public var ioACh7Pair6DigitalOut:D31Jumper;
		public var ioACh7Pair6Out3a:D31Jumper;
		public var ioACh7Pair6Cable:D31Jumper;
		public var ioACh7Pair6AnalogIn:D31Jumper;
		public var ioACh7Pair7AnalogIn:D31Jumper;
		public var ioACh7Pair7Cable:D31Jumper;
		public var ioACh7Pair7Out3b:D31Jumper;
		public var ioACh7Pair7DigitalOut:D31Jumper;
		
		public var ioACh8Pair8DigitalOut:D31Jumper;
		public var ioACh8Pair8Out3a:D31Jumper;
		public var ioACh8Pair8Cable:D31Jumper;
		public var ioACh8Pair8AnalogIn:D31Jumper;
		public var ioACh8Pair9AnalogIn:D31Jumper;
		public var ioACh8Pair9Cable:D31Jumper;
		public var ioACh8Pair9Out3b:D31Jumper;
		public var ioACh8Pair9DigitalOut:D31Jumper;
		
		public var ioACh9Pair8DigitalOut:D31Jumper;
		public var ioACh9Pair8Out3a:D31Jumper;
		public var ioACh9Pair8Cable:D31Jumper;
		public var ioACh9Pair8AnalogIn:D31Jumper;
		public var ioACh9Pair9AnalogIn:D31Jumper;
		public var ioACh9Pair9Cable:D31Jumper;
		public var ioACh9Pair9Out3b:D31Jumper;
		public var ioACh9Pair9DigitalOut:D31Jumper;
		
		public var ioACh10Pair1DigitalOut:D31Jumper;
		public var ioACh10Pair1Out3a:D31Jumper;
		public var ioACh10Pair1Cable:D31Jumper;
		public var ioACh10Pair1AnalogIn:D31Jumper;
		public var ioACh10Pair2AnalogIn:D31Jumper;
		public var ioACh10Pair2Cable:D31Jumper;
		public var ioACh10Pair2Out3b:D31Jumper;
		public var ioACh10Pair2DigitalOut:D31Jumper;
		
		public var ioBCh1Pair1DigitalOut:D31Jumper;
		public var ioBCh1Pair1Out3a:D31Jumper;
		public var ioBCh1Pair1Cable:D31Jumper;
		public var ioBCh1Pair1AnalogIn:D31Jumper;
		public var ioBCh1Pair2AnalogIn:D31Jumper;
		public var ioBCh1Pair2Cable:D31Jumper;
		public var ioBCh1Pair2Out3b:D31Jumper;
		public var ioBCh1Pair2DigitalOut:D31Jumper;
		
		public var ioBCh2Pair3DigitalOut:D31Jumper;
		public var ioBCh2Pair3Out3a:D31Jumper;
		public var ioBCh2Pair3Cable:D31Jumper;
		public var ioBCh2Pair3AnalogIn:D31Jumper;
		public var ioBCh2Pair4AnalogIn:D31Jumper;
		public var ioBCh2Pair4Cable:D31Jumper;
		public var ioBCh2Pair4Out3b:D31Jumper;
		public var ioBCh2Pair4DigitalOut:D31Jumper;
		
		public var ioBCh3Pair6DigitalOut:D31Jumper;
		public var ioBCh3Pair6Out3a:D31Jumper;
		public var ioBCh3Pair6Cable:D31Jumper;
		public var ioBCh3Pair6AnalogIn:D31Jumper;
		public var ioBCh3Pair7AnalogIn:D31Jumper;
		public var ioBCh3Pair7Cable:D31Jumper;
		public var ioBCh3Pair7Out3b:D31Jumper;
		public var ioBCh3Pair7DigitalOut:D31Jumper;
		
		public var ioBCh4Pair8DigitalOut:D31Jumper;
		public var ioBCh4Pair8Out3a:D31Jumper;
		public var ioBCh4Pair8Cable:D31Jumper;
		public var ioBCh4Pair8AnalogIn:D31Jumper;
		public var ioBCh4Pair9AnalogIn:D31Jumper;
		public var ioBCh4Pair9Cable:D31Jumper;
		public var ioBCh4Pair9Out3b:D31Jumper;
		public var ioBCh4Pair9DigitalOut:D31Jumper;
		
		public var ioBCh5Pair1DigitalOut:D31Jumper;
		public var ioBCh5Pair1Out3a:D31Jumper;
		public var ioBCh5Pair1Cable:D31Jumper;
		public var ioBCh5Pair1AnalogIn:D31Jumper;
		public var ioBCh5Pair2AnalogIn:D31Jumper;
		public var ioBCh5Pair2Cable:D31Jumper;
		public var ioBCh5Pair2Out3b:D31Jumper;
		public var ioBCh5Pair2DigitalOut:D31Jumper;
		
		public var ioBCh6Pair3DigitalOut:D31Jumper;
		public var ioBCh6Pair3Out3a:D31Jumper;
		public var ioBCh6Pair3Cable:D31Jumper;
		public var ioBCh6Pair3AnalogIn:D31Jumper;
		public var ioBCh6Pair4AnalogIn:D31Jumper;
		public var ioBCh6Pair4Cable:D31Jumper;
		public var ioBCh6Pair4Out3b:D31Jumper;
		public var ioBCh6Pair4DigitalOut:D31Jumper;
		
		public var ioBCh7Pair6DigitalOut:D31Jumper;
		public var ioBCh7Pair6Out3a:D31Jumper;
		public var ioBCh7Pair6Cable:D31Jumper;
		public var ioBCh7Pair6AnalogIn:D31Jumper;
		public var ioBCh7Pair7AnalogIn:D31Jumper;
		public var ioBCh7Pair7Cable:D31Jumper;
		public var ioBCh7Pair7Out3b:D31Jumper;
		public var ioBCh7Pair7DigitalOut:D31Jumper;
		
		public var ioBCh8Pair8DigitalOut:D31Jumper;
		public var ioBCh8Pair8Out3a:D31Jumper;
		public var ioBCh8Pair8Cable:D31Jumper;
		public var ioBCh8Pair8AnalogIn:D31Jumper;
		public var ioBCh8Pair9AnalogIn:D31Jumper;
		public var ioBCh8Pair9Cable:D31Jumper;
		public var ioBCh8Pair9Out3b:D31Jumper;
		public var ioBCh8Pair9DigitalOut:D31Jumper;
		
		public var ioBCh9Pair8DigitalOut:D31Jumper;
		public var ioBCh9Pair8Out3a:D31Jumper;
		public var ioBCh9Pair8Cable:D31Jumper;
		public var ioBCh9Pair8AnalogIn:D31Jumper;
		public var ioBCh9Pair9AnalogIn:D31Jumper;
		public var ioBCh9Pair9Cable:D31Jumper;
		public var ioBCh9Pair9Out3b:D31Jumper;
		public var ioBCh9Pair9DigitalOut:D31Jumper;
		
		public var ioBCh10Pair1DigitalOut:D31Jumper;
		public var ioBCh10Pair1Out3a:D31Jumper;
		public var ioBCh10Pair1Cable:D31Jumper;
		public var ioBCh10Pair1AnalogIn:D31Jumper;
		public var ioBCh10Pair2AnalogIn:D31Jumper;
		public var ioBCh10Pair2Cable:D31Jumper;
		public var ioBCh10Pair2Out3b:D31Jumper;
		public var ioBCh10Pair2DigitalOut:D31Jumper;
		
		public var ioDiffA4WiredSend:D31Jumper;
		public var ioDiffA4WiredReceive:D31Jumper;
		public var ioDiffA2Wired:D31Jumper;
		
		public var ioDiffB4WiredSend:D31Jumper;
		public var ioDiffB4WiredReceive:D31Jumper;
		public var ioDiffB2Wired:D31Jumper;
		
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
		
		public override function TestForErrors()
		{
			var count:int = 0;
			var errorText:String = "";
			for (var i:int = 0; i < ControlElements.length; i++)
			{
				if (!ControlElements[i].isErrorChecked && ControlElements[i].shouldBeLinkedWith != null && ControlElements[i].shouldBeLinkedWith != ControlElements[i].linkedElement)
				{
					errorText += "\t" + ControlElements[i].elementName + " должна быть соединена с " + ControlElements[i].shouldBeLinkedWith.elementName + "\r\n";
					
					ControlElements[i].shouldBeLinkedWith.isErrorChecked = true;
					
					count++;
				}
				else if (ControlElements[i].shouldBeLinkedWith == null && ControlElements[i].linkedElement != null)
				{
					errorText += "\t" + ControlElements[i].elementName + " должна быть оставлена пустой \r\n";
					
					count++;
				}
			}
			
			if (count > 0)
			{
				ModeInfo.modeInfo.errorText += ModeInfo.modeInfo.blockName + "\r\n" + errorText;
			}
			
			ModeInfo.modeInfo.blockInfo[ModeInfo.modeInfo.currentBlock].errorCount = count;
		}
		
		private function InitializeSequence()
		{
			for (var step:int = 0; step < ModeInfo.modeInfo.SeqCommutation.length; step++)
			{
				var controlInfo:Array;
				for (var i:int = 0; i < ModeInfo.modeInfo.SeqCommutation[step].length; i++)
				{
					controlInfo = ModeInfo.modeInfo.SeqCommutation[step][i].split("#", 3);
					
					var infoText:String;
					if (controlInfo.length == 2)
					{
						infoText = " ";
					}
					else
					{
						infoText = controlInfo[2];
					}
					
					var a:D31Jumper = getChildByName(controlInfo[0]) as D31Jumper;
					var b:D31Jumper = getChildByName(controlInfo[1]) as D31Jumper;
					
					if (a == null)
					{
						throw new Error("Невозможно найти данный контрол: " + controlInfo[0]);
					}
					
					if (b == null)
					{
						throw new Error("Невозможно найти данный контрол: " + controlInfo[1]);
					}
					
					a.shouldBeLinkedWith = b;
					b.shouldBeLinkedWith = a;
					
					AddToTraining(a, infoText, ControlElement.S_B_CHOSEN);
					AddToTraining(b, infoText, ControlElement.S_B_CHOSEN);
				}
			}
		
		}
		
		private function InitializeDictionary()
		{
			//полукомплект А
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (1-й канал, полукомплект А)"] = ioACh1ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (1-й канал, полукомплект А)"] = ioACh1ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (1-й канал, полукомплект А)"] = ioACh1ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (2-й канал, полукомплект А)"] = ioACh2ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (2-й канал, полукомплект А)"] = ioACh2ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (2-й канал, полукомплект А)"] = ioACh2ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (3-й канал, полукомплект А)"] = ioACh3ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (3-й канал, полукомплект А)"] = ioACh3ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (3-й канал, полукомплект А)"] = ioACh3ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (4-й канал, полукомплект А)"] = ioACh4ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (4-й канал, полукомплект А)"] = ioACh4ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (4-й канал, полукомплект А)"] = ioACh4ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (5-й канал, полукомплект А)"] = ioACh5ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (5-й канал, полукомплект А)"] = ioACh5ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (5-й канал, полукомплект А)"] = ioACh5ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (6-й канал, полукомплект А)"] = ioACh6ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (6-й канал, полукомплект А)"] = ioACh6ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (6-й канал, полукомплект А)"] = ioACh6ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (7-й канал, полукомплект А)"] = ioACh7ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (7-й канал, полукомплект А)"] = ioACh7ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (7-й канал, полукомплект А)"] = ioACh7ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (8-й канал, полукомплект А)"] = ioACh8ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (8-й канал, полукомплект А)"] = ioACh8ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (8-й канал, полукомплект А)"] = ioACh8ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (9-й канал, полукомплект А)"] = ioACh9ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (9-й канал, полукомплект А)"] = ioACh9ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (9-й канал, полукомплект А)"] = ioACh9ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (10-й канал, полукомплект А)"] = ioACh10ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (10-й канал, полукомплект А)"] = ioACh10ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (10-й канал, полукомплект А)"] = ioACh10ModeTransit;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (1-й канал, полукомплект А, 1-я пара 1-го кабеля ПТРК-10х2)"] = ioACh1Pair1DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (1-й канал, полукомплект А)"] = ioACh1Pair1Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (1-й канал, полукомплект А, 1-я пара 1-го кабеля ПТРК-10х2)"] = ioACh1Pair1Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (1-й канал, полукомплект А, 1-я пара 1-го кабеля ПТРК-10х2)"] = ioACh1Pair1AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (1-й канал, полукомплект А, 2-я пара 1-го кабеля ПТРК-10х2)"] = ioACh1Pair2AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (1-й канал, полукомплект А, 2-я пара 1-го кабеля ПТРК-10х2)"] = ioACh1Pair2Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (1-й канал, полукомплект А)"] = ioACh1Pair2Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (1-й канал, полукомплект А, 2-я пара 1-го кабеля ПТРК-10х2)"] = ioACh1Pair2DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (2-й канал, полукомплект А, 3-я пара 1-го кабеля ПТРК-10х2)"] = ioACh2Pair3DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (2-й канал, полукомплект А)"] = ioACh2Pair3Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (2-й канал, полукомплект А, 3-я пара 1-го кабеля ПТРК-10х2)"] = ioACh2Pair3Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (2-й канал, полукомплект А, 3-я пара 1-го кабеля ПТРК-10х2)"] = ioACh2Pair3AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (2-й канал, полукомплект А, 4-я пара 1-го кабеля ПТРК-10х2)"] = ioACh2Pair4AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (2-й канал, полукомплект А, 4-я пара 1-го кабеля ПТРК-10х2)"] = ioACh2Pair4Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (2-й канал, полукомплект А)"] = ioACh2Pair4Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (2-й канал, полукомплект А, 4-я пара 1-го кабеля ПТРК-10х2)"] = ioACh2Pair4DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (3-й канал, полукомплект А, 6-я пара 1-го кабеля ПТРК-10х2)"] = ioACh3Pair6DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (3-й канал, полукомплект А)"] = ioACh3Pair6Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (3-й канал, полукомплект А, 6-я пара 1-го кабеля ПТРК-10х2)"] = ioACh3Pair6Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (3-й канал, полукомплект А, 6-я пара 1-го кабеля ПТРК-10х2)"] = ioACh3Pair6AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (3-й канал, полукомплект А, 7-я пара 1-го кабеля ПТРК-10х2)"] = ioACh3Pair7AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (3-й канал, полукомплект А, 7-я пара 1-го кабеля ПТРК-10х2)"] = ioACh3Pair7Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (3-й канал, полукомплект А)"] = ioACh3Pair7Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (3-й канал, полукомплект А, 7-я пара 1-го кабеля ПТРК-10х2)"] = ioACh3Pair7DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (4-й канал, полукомплект А, 8-я пара 1-го кабеля ПТРК-10х2)"] = ioACh4Pair8DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (4-й канал, полукомплект А)"] = ioACh4Pair8Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (4-й канал, полукомплект А, 8-я пара 1-го кабеля ПТРК-10х2)"] = ioACh4Pair8Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (4-й канал, полукомплект А, 8-я пара 1-го кабеля ПТРК-10х2)"] = ioACh4Pair8AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (4-й канал, полукомплект А, 9-я пара 1-го кабеля ПТРК-10х2)"] = ioACh4Pair9AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (4-й канал, полукомплект А, 9-я пара 1-го кабеля ПТРК-10х2)"] = ioACh4Pair9Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (4-й канал, полукомплект А)"] = ioACh4Pair9Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (4-й канал, полукомплект А, 9-я пара 1-го кабеля ПТРК-10х2)"] = ioACh4Pair9DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (5-й канал, полукомплект А, 1-я пара 2-го кабеля ПТРК-10х2)"] = ioACh5Pair1DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (5-й канал, полукомплект А)"] = ioACh5Pair1Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (5-й канал, полукомплект А, 1-я пара 2-го кабеля ПТРК-10х2)"] = ioACh5Pair1Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (5-й канал, полукомплект А, 1-я пара 2-го кабеля ПТРК-10х2)"] = ioACh5Pair1AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (5-й канал, полукомплект А, 2-я пара 2-го кабеля ПТРК-10х2)"] = ioACh5Pair2AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (5-й канал, полукомплект А, 2-я пара 2-го кабеля ПТРК-10х2)"] = ioACh5Pair2Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (5-й канал, полукомплект А)"] = ioACh5Pair2Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (5-й канал, полукомплект А, 2-я пара 2-го кабеля ПТРК-10х2)"] = ioACh5Pair2DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (6-й канал, полукомплект А, 3-я пара 2-го кабеля ПТРК-30х2)"] = ioACh6Pair3DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (6-й канал, полукомплект А)"] = ioACh6Pair3Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (6-й канал, полукомплект А, 3-я пара 2-го кабеля ПТРК-30х2)"] = ioACh6Pair3Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (6-й канал, полукомплект А, 3-я пара 2-го кабеля ПТРК-10х2)"] = ioACh6Pair3AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (6-й канал, полукомплект А, 4-я пара 2-го кабеля ПТРК-10х2)"] = ioACh6Pair4AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (6-й канал, полукомплект А, 4-я пара 2-го кабеля ПТРК-10х2)"] = ioACh6Pair4Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (6-й канал, полукомплект А)"] = ioACh6Pair4Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (6-й канал, полукомплект А, 4-я пара 2-го кабеля ПТРК-10х2)"] = ioACh6Pair4DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (7-й канал, полукомплект А, 6-я пара 2-го кабеля ПТРК-10х2)"] = ioACh7Pair6DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (7-й канал, полукомплект А)"] = ioACh7Pair6Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (7-й канал, полукомплект А, 6-я пара 2-го кабеля ПТРК-10х2)"] = ioACh7Pair6Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (7-й канал, полукомплект А, 6-я пара 2-го кабеля ПТРК-10х2)"] = ioACh7Pair6AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (7-й канал, полукомплект А, 7-я пара 2-го кабеля ПТРК-10х2)"] = ioACh7Pair7AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (7-й канал, полукомплект А, 7-я пара 2-го кабеля ПТРК-10х2)"] = ioACh7Pair7Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (7-й канал, полукомплект А)"] = ioACh7Pair7Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (7-й канал, полукомплект А, 7-я пара 2-го кабеля ПТРК-10х2)"] = ioACh7Pair7DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (8-й канал, полукомплект А, 8-я пара 2-го кабеля ПТРК-10х2)"] = ioACh8Pair8DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (8-й канал, полукомплект А)"] = ioACh8Pair8Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (8-й канал, полукомплект А, 8-я пара 2-го кабеля ПТРК-10х2)"] = ioACh8Pair8Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (8-й канал, полукомплект А, 8-я пара 2-го кабеля ПТРК-10х2)"] = ioACh8Pair8AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (8-й канал, полукомплект А, 9-я пара 2-го кабеля ПТРК-10х2)"] = ioACh8Pair9AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (8-й канал, полукомплект А, 9-я пара 2-го кабеля ПТРК-10х2)"] = ioACh8Pair9Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (8-й канал, полукомплект А)"] = ioACh8Pair9Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (8-й канал, полукомплект А, 9-я пара 2-го кабеля ПТРК-10х2)"] = ioACh8Pair9DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (9-й канал, полукомплект А, 8-я пара 3-го кабеля ПТРК-10х2)"] = ioACh9Pair8DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (9-й канал, полукомплект А)"] = ioACh9Pair8Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (9-й канал, полукомплект А, 8-я пара 3-го кабеля ПТРК-10х2)"] = ioACh9Pair8Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (9-й канал, полукомплект А, 8-я пара 3-го кабеля ПТРК-10х2)"] = ioACh9Pair8AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (9-й канал, полукомплект А, 9-я пара 3-го кабеля ПТРК-10х2)"] = ioACh9Pair9AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (9-й канал, полукомплект А, 9-я пара 3-го кабеля ПТРК-10х2)"] = ioACh9Pair9Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (9-й канал, полукомплект А)"] = ioACh9Pair9Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (9-й канал, полукомплект А, 9-я пара 3-го кабеля ПТРК-10х2)"] = ioACh9Pair9DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (10-й канал, полукомплект А, 1-я пара 3-го кабеля ПТРК-10х2)"] = ioACh10Pair1DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме 48 КБИТ/С (10-й канал, полукомплект А)"] = ioACh10Pair1Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioACh10Pair1Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioACh10Pair1AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioACh10Pair2AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioACh10Pair2Cable;
			ControlDictionary["2-х контактная перемычка на разъеме 48 КБИТ/С (10-й канал, полукомплект А)"] = ioACh10Pair2Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (10-й канал, полукомплект А, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioACh10Pair2DigitalOut;
			
			//полукомплект Б       
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (1-й канал, полукомплект Б)"] = ioBCh1ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (1-й канал, полукомплект Б)"] = ioBCh1ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (1-й канал, полукомплект Б)"] = ioBCh1ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (2-й канал, полукомплект Б)"] = ioBCh2ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (2-й канал, полукомплект Б)"] = ioBCh2ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (2-й канал, полукомплект Б)"] = ioBCh2ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (3-й канал, полукомплект Б)"] = ioBCh3ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (3-й канал, полукомплект Б)"] = ioBCh3ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (3-й канал, полукомплект Б)"] = ioBCh3ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (4-й канал, полукомплект Б)"] = ioBCh4ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (4-й канал, полукомплект Б)"] = ioBCh4ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (4-й канал, полукомплект Б)"] = ioBCh4ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (5-й канал, полукомплект Б)"] = ioBCh5ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (5-й канал, полукомплект Б)"] = ioBCh5ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (5-й канал, полукомплект Б)"] = ioBCh5ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (6-й канал, полукомплект Б)"] = ioBCh6ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (6-й канал, полукомплект Б)"] = ioBCh6ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (6-й канал, полукомплект Б)"] = ioBCh6ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (7-й канал, полукомплект Б)"] = ioBCh7ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (7-й канал, полукомплект Б)"] = ioBCh7ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (7-й канал, полукомплект Б)"] = ioBCh7ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (8-й канал, полукомплект Б)"] = ioBCh8ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (8-й канал, полукомплект Б)"] = ioBCh8ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (8-й канал, полукомплект Б)"] = ioBCh8ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (9-й канал, полукомплект Б)"] = ioBCh9ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (9-й канал, полукомплект Б)"] = ioBCh9ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (9-й канал, полукомплект Б)"] = ioBCh9ModeTransit;
			ControlDictionary["2-х контактная перемычка на разъеме ОКОН (10-й канал, полукомплект Б)"] = ioBCh10ModeEndpoint;
			ControlDictionary["2-х контактная перемычка между разъёмами ОКОН и ТРАНЗ (10-й канал, полукомплект Б)"] = ioBCh10ModeCenter;
			ControlDictionary["2-х контактная перемычка на разъеме ТРАНЗ (10-й канал, полукомплект Б)"] = ioBCh10ModeTransit;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (1-й канал, полукомплект Б, 1-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh1Pair1DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (1-й канал, полукомплект Б)"] = ioBCh1Pair1Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (1-й канал, полукомплект Б, 1-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh1Pair1Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (1-й канал, полукомплект Б, 1-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh1Pair1AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (1-й канал, полукомплект Б, 2-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh1Pair2AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (1-й канал, полукомплект Б, 2-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh1Pair2Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (1-й канал, полукомплект Б)"] = ioBCh1Pair2Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (1-й канал, полукомплект Б, 2-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh1Pair2DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (2-й канал, полукомплект Б, 3-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh2Pair3DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (2-й канал, полукомплект Б)"] = ioBCh2Pair3Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (2-й канал, полукомплект Б, 3-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh2Pair3Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (2-й канал, полукомплект Б, 3-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh2Pair3AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (2-й канал, полукомплект Б, 4-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh2Pair4AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (2-й канал, полукомплект Б, 4-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh2Pair4Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (2-й канал, полукомплект Б)"] = ioBCh2Pair4Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (2-й канал, полукомплект Б, 4-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh2Pair4DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (3-й канал, полукомплект Б, 6-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh3Pair6DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (3-й канал, полукомплект Б)"] = ioBCh3Pair6Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (3-й канал, полукомплект Б, 6-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh3Pair6Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (3-й канал, полукомплект Б, 6-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh3Pair6AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (3-й канал, полукомплект Б, 7-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh3Pair7AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (3-й канал, полукомплект Б, 7-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh3Pair7Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (3-й канал, полукомплект Б)"] = ioBCh3Pair7Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (3-й канал, полукомплект Б, 7-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh3Pair7DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (4-й канал, полукомплект Б, 8-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh4Pair8DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (4-й канал, полукомплект Б)"] = ioBCh4Pair8Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (4-й канал, полукомплект Б, 8-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh4Pair8Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (4-й канал, полукомплект Б, 8-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh4Pair8AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (4-й канал, полукомплект Б, 9-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh4Pair9AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (4-й канал, полукомплект Б, 9-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh4Pair9Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (4-й канал, полукомплект Б)"] = ioBCh4Pair9Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (4-й канал, полукомплект Б, 9-я пара 1-го кабеля ПТРК-10х2)"] = ioBCh4Pair9DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (5-й канал, полукомплект Б, 1-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh5Pair1DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (5-й канал, полукомплект Б)"] = ioBCh5Pair1Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (5-й канал, полукомплект Б, 1-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh5Pair1Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (5-й канал, полукомплект Б, 1-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh5Pair1AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (5-й канал, полукомплект Б, 2-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh5Pair2AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (5-й канал, полукомплект Б, 2-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh5Pair2Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (5-й канал, полукомплект Б)"] = ioBCh5Pair2Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (5-й канал, полукомплект Б, 2-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh5Pair2DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (6-й канал, полукомплект Б, 3-я пара 2-го кабеля ПТРК-30х2)"] = ioBCh6Pair3DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (6-й канал, полукомплект Б)"] = ioBCh6Pair3Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (6-й канал, полукомплект Б, 3-я пара 2-го кабеля ПТРК-30х2)"] = ioBCh6Pair3Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (6-й канал, полукомплект Б, 3-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh6Pair3AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (6-й канал, полукомплект Б, 4-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh6Pair4AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (6-й канал, полукомплект Б, 4-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh6Pair4Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (6-й канал, полукомплект Б)"] = ioBCh6Pair4Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (6-й канал, полукомплект Б, 4-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh6Pair4DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (7-й канал, полукомплект Б, 6-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh7Pair6DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (7-й канал, полукомплект Б)"] = ioBCh7Pair6Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (7-й канал, полукомплект Б, 6-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh7Pair6Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (7-й канал, полукомплект Б, 6-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh7Pair6AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (7-й канал, полукомплект Б, 7-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh7Pair7AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (7-й канал, полукомплект Б, 7-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh7Pair7Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (7-й канал, полукомплект Б)"] = ioBCh7Pair7Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (7-й канал, полукомплект Б, 7-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh7Pair7DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (8-й канал, полукомплект Б, 8-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh8Pair8DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (8-й канал, полукомплект Б)"] = ioBCh8Pair8Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (8-й канал, полукомплект Б, 8-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh8Pair8Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (8-й канал, полукомплект Б, 8-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh8Pair8AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (8-й канал, полукомплект Б, 9-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh8Pair9AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (8-й канал, полукомплект Б, 9-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh8Pair9Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (8-й канал, полукомплект Б)"] = ioBCh8Pair9Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (8-й канал, полукомплект Б, 9-я пара 2-го кабеля ПТРК-10х2)"] = ioBCh8Pair9DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (9-й канал, полукомплект Б, 8-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh9Pair8DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3А (9-й канал, полукомплект Б)"] = ioBCh9Pair8Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (9-й канал, полукомплект Б, 8-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh9Pair8Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (9-й канал, полукомплект Б, 8-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh9Pair8AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (9-й канал, полукомплект Б, 9-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh9Pair9AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (9-й канал, полукомплект Б, 9-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh9Pair9Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИО-3Б (9-й канал, полукомплект Б)"] = ioBCh9Pair9Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (9-й канал, полукомплект Б, 9-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh9Pair9DigitalOut;
			
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (10-й канал, полукомплект Б, 1-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh10Pair1DigitalOut;
			ControlDictionary["2-х контактная перемычка на разъеме 48 КБИТ/С (10-й канал, полукомплект Б)"] = ioBCh10Pair1Out3a;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh10Pair1Cable;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh10Pair1AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ АС (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh10Pair2AnalogIn;
			ControlDictionary["2-х контактная перемычка на разъеме КАБЕЛЬ (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh10Pair2Cable;
			ControlDictionary["2-х контактная перемычка на разъеме 48 КБИТ/С (10-й канал, полукомплект Б)"] = ioBCh10Pair2Out3b;
			ControlDictionary["2-х контактная перемычка на разъеме ИТ ЦСС (10-й канал, полукомплект Б, 2-я пара 3-го кабеля ПТРК-10х2)"] = ioBCh10Pair2DigitalOut;
			
			//диф системы          
			ControlDictionary["2-х контактная перемычка на разъеме 4ПР ПРД 1-ой диф системы"] = ioDiffA4WiredSend;
			ControlDictionary["2-х контактная перемычка на разъеме 4ПР ПРМ 1-ой диф системы"] = ioDiffA4WiredReceive;
			ControlDictionary["2-х контактная перемычка на разъеме 2ПР 1-ой диф системы"] = ioDiffA2Wired;
			
			ControlDictionary["2-х контактная перемычка на разъеме 4ПР ПРД 2-ой диф системы"] = ioDiffB4WiredSend;
			ControlDictionary["2-х контактная перемычка на разъеме 4ПР ПРМ 2-ой диф системы"] = ioDiffB4WiredReceive;
			ControlDictionary["2-х контактная перемычка на разъеме 2ПР 2-ой диф системы"] = ioDiffB2Wired;
		}
	}

}
