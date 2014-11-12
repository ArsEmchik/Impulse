package blocks
{
	import flash.display.MovieClip;
	import flash.text.TextField;
	import fl.controls.Button;
	
	public class InputBlock extends ImpulsUnit
	{
		public var ptrk11:PTRK;
		public var ptrk12:PTRK;
		public var ptrk13:PTRK;
		public var p2961:P296;
		public var ptrk21:PTRK;
		public var ptrk22:PTRK;
		public var ptrk23:PTRK;
		public var p2962:P296;
		
		public function InputBlock()
		{
			super();
			
			ControlDictionary["ПТРК-1-1"] = ptrk11;
			ControlDictionary["ПТРК-1-2"] = ptrk12;
			ControlDictionary["ПТРК-1-3"] = ptrk13;
			ControlDictionary["П-296-1"] = p2961;
			
			ControlDictionary["ПТРК-2-1"] = ptrk21;
			ControlDictionary["ПТРК-2-2"] = ptrk22;
			ControlDictionary["ПТРК-2-3"] = ptrk23;
			ControlDictionary["П-296-2"] = p2962;
			
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
			var key:String;
			for (var i:int = 0; i < ModeInfo.modeInfo.KtchChannels.length; i++)
			{
				if (ModeInfo.modeInfo.KtchChannels[i] != 0 || ModeInfo.modeInfo.Czk86Channels[i] != 0)
				{
					key = "ПТРК-";
					key += (i < 3) ? "1-" : "2-";
					key += ((i % 3) + 1).toString();
					
					trace(ControlDictionary[key]);
					
					if (i < 3)
						AddToTraining(ControlDictionary[key], "Подключите кабель ПТРК-10х2 к разъему «Кабель " + (i + 1).toString() + "» 1-го полуклмплекта.", ControlElement.S_B_CHOSEN);
					else
						AddToTraining(ControlDictionary[key], "Подключите кабель ПТРК-10х2 к разъему «Кабель " + (i - 2).toString() + "» 2-го полуклмплекта.", ControlElement.S_B_CHOSEN);
				}
			}
			
			if (ModeInfo.modeInfo.P296n1 != 0)
			{
				AddToTraining(ControlDictionary["П-296-1"], "Подключите кабель П-296 к первому полукомплекту", ControlElement.S_B_CHOSEN);
			}
			
			if (ModeInfo.modeInfo.P296n2 != 0)
				AddToTraining(ControlDictionary["П-296-2"], "Подключите кабель П-296 ко второму полукомплекту", ControlElement.S_B_CHOSEN);
		}
	}
}