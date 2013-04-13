package blocks
{
	import flash.display.MovieClip;
	import flash.utils.Dictionary;
	import flash.text.TextField;

	public class ImpulsUnit extends MovieClip
	{
		protected var ControlElements: Vector.<ControlElement>;
		protected var ControlDictionary: Dictionary;
		public var ImpulseMode: int;
		private var TrainingSequence: Vector.<ControlElement>;
		private var trainingDescriptions: Vector.<String>;
		private var trainingState: Vector.<int>;
		private var blockState: int;
		private var decriptionField: TextField;
		
		public function ImpulsUnit()
		{
			TrainingSequence = new Vector.<ControlElement>();
			ControlElements = new Vector.<ControlElement>();
			trainingState = new Vector.<int>();
			trainingDescriptions = new Vector.<String>();
			ControlDictionary = new Dictionary();
			blockState=0;
		}
		
		protected function InitializeControls()
		{
			var item: ControlElement;
			for each (item in ControlDictionary)
			{
				ControlElements.push(item);
			}
		}
		public function InitializeImpulsUnit(pDecriptionField: TextField)
		{
			decriptionField=pDecriptionField;
		}
		public function SetMode(impulseMode: int)
		{
			ImpulseMode=impulseMode;
			switch (ImpulseMode)
			{
				case ModeInfo.MM_INSTRUCTION:
					BlockFullControl();
					break;
				default: throw new Error("Нет такого типа обучения");
			}
		}
		private function BlockFullControl()
		{
			BlockFullControlHelper();
		}
		private function BlockFullControlHelper()
		{
			var i: int;
			for (i=0; i<ControlElements.length; i++)
			{
				ControlElements[i].BlockElement();
				ControlElements[i].SetParent(this);
			}
			UpdateState();
		}
		private function UpdateState()
		{
			if (TrainingSequence.length<=blockState)
				EndMessage();
			else
			{
				if (blockState-1>=0)
				{
					TrainingSequence[blockState-1].BlockElement();
					TrainingSequence[blockState-1].RemoveEmit();
				}
				TrainingSequence[blockState].UnblockElement();
				TrainingSequence[blockState].EmitControl();
				TrainingSequence[blockState].SetNessesaryState(trainingState[blockState]);
				this.decriptionField.text = this.trainingDescriptions[blockState];
			}
		}
		private function EndMessage()
		{
			TrainingSequence[TrainingSequence.length-1].BlockElement();
			TrainingSequence[TrainingSequence.length-1].RemoveEmit();
			this.decriptionField.text = "Вы выполнили все действия.";
		}
		private function IncrementState()
		{
			blockState++;
		}
		public function EmitNext()
		{
			IncrementState();
			UpdateState();
		}
		public function AddToTraining(element: ControlElement,decription: String, nessesaryState: int)
		{
			TrainingSequence.push(element);
			trainingDescriptions.push(decription);
			trainingState.push(nessesaryState);
		}
	}
}