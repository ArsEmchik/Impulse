package blocks {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import fl.controls.Button;
	import blocks.ImpulsUnit;
	
	
	public class D00Block extends ImpulsUnit {
		public function D00Block() {
			
			//this.ControlDictionary["Окон перемычка 1"]=jumper1;
			//this.ControlDictionary["Окон перемычка 2"]=jumper2;
			
			InitializeControls();
			CreateCommunication();
		}
		public override function InitializeImpulsUnit(pDecriptionField: TextField, outButton: Button)
		{
			super.InitializeImpulsUnit(pDecriptionField,outButton);
			InitializeSequence();
			SetMode(ModeInfo.modeInfo.MainMode);
		}
		private function InitializeSequence()
		{
			this.AddToTraining(ControlDictionary["Окон перемычка 1"],"Вставте Перемычку",ControlElement.S_B_CHOSEN);
		}
		private function CreateCommunication()
		{
		}
	}
}
