package blocks {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import fl.controls.Button;
	import blocks.ImpulsUnit;
	
	
	public class D00Block extends ImpulsUnit {
		
		
		public function D00Block() {
			
			this.ControlDictionary["Окон перемычка 1"]=jumper1;
			this.ControlDictionary["Окон перемычка 2"]=jumper2;
			
			InitializeControls();
			CreateCommunication();
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
			this.AddToTraining(ControlDictionary["Окон перемычка 1"],"Вставте Перемычку",ControlElement.S_B_CHOSEN);
		}
		
		private function InitializeWorkingSequence()
		{
			this.AddToTraining(ControlDictionary["Окон перемычка 2"],"Включите тумблер",ControlElement.S_B_CHOSEN);
		}		
		
		private function CreateCommunication()
		{
		}
		
	}
	
}
