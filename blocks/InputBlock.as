package blocks {
	
	import flash.display.MovieClip;
	import flash.text.TextField;
	import fl.controls.Button;
	
	public class InputBlock extends ImpulsUnit {
		
		
		public function InputBlock() 
		{
			super(true);
			this.ControlDictionary["ПТРК-1-1"]=ptrk11;
			this.ControlDictionary["ПТРК-1-2"]=ptrk12;
			this.ControlDictionary["ПТРК-1-3"]=ptrk13;	
			this.ControlDictionary["П296-1"]=p2961;
			this.ControlDictionary["ПТРК-2-1"]=ptrk21;
			this.ControlDictionary["ПТРК-2-2"]=ptrk22;
			this.ControlDictionary["ПТРК-2-3"]=ptrk23;	
			this.ControlDictionary["П296-2"]=p2962;	
			InitializeControls();		
		}
		
		public override function InitializeImpulsUnit(pDecriptionField: TextField, outButton: Button)
		{
			super.InitializeImpulsUnit(pDecriptionField,outButton);
			InitializeSequence();
			SetMode(ModeInfo.modeInfo.MainMode);
		}
		private function InitializeSequence()
		{
			var i: int;
			var key: String;
			for (i=0; i<ModeInfo.modeInfo.KtchChannels.length; i++)
			{
				if (ModeInfo.modeInfo.KtchChannels[i]!=0 || ModeInfo.modeInfo.Czk86Channels[i]!=0)
				{
					key="ПТРК-";
					if (i<3)
						key+="1-";
					else key+="2-";
					key+=((i%3)+1).toString();
					trace(ControlDictionary[key]);
					this.AddToTraining(ControlDictionary[key],"Вставьте кабель ПТРК",ControlElement.S_B_CHOSEN);
				}
			}
			if (ModeInfo.modeInfo.P296n1!=0)
				this.AddToTraining(ControlDictionary["П296-1"],"Вставте кабель П296",ControlElement.S_B_CHOSEN);
			if (ModeInfo.modeInfo.P296n2!=0)
				this.AddToTraining(ControlDictionary["П296-1"],"Вставте кабель П296",ControlElement.S_B_CHOSEN);				
		}
	}	
}