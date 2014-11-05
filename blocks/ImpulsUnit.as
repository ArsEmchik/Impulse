package blocks
{
	import flash.display.MovieClip;
	import flash.utils.Dictionary;
	import flash.text.TextField;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	public class ImpulsUnit extends MovieClip
	{
		// след 2 поля для контроля - запомнить изначальное состояние перемычек(DefaultStates). 
		// Пользователь что-то делает(ControlStates), потом переводим обратно DefaultStates делаем по TrainingSequence как надо и сравнимает с ControlStates
		private var DefaultStates:Vector.<int>;
		private var ControlStates:Vector.<int>;
		
		protected var ControlElements:Vector.<ControlElement>; // элементы блока в массиве
		protected var ControlDictionary:Dictionary; // они же в коллекции
		public var ImpulseMode:int; // режим - констроль, обучение и т.д.
		
		// следующие 3 поля логически связаны. какой элемент задействовать, описание действие, в какое сосотояние его перевести
		public var TrainingSequence:Vector.<ControlElement>;
		private var trainingDescriptions:Vector.<String>;
		private var trainingState:Vector.<int>;
		
		// текущее состояние TrainingSequence
		public var currentTrainingStep:int;
		
		// кнопка и текстбокс для выхода и вывода информации
		protected var decriptionField:TextField;
		protected var textBoxNext:TextField;
		private var outButton:Button;
		
		public function ImpulsUnit()
		{
			ControlElements = new Vector.<ControlElement>();
			ControlDictionary = new Dictionary();
			StartInitialize();
		}
		
		private function StartInitialize()
		{
			TrainingSequence = new Vector.<ControlElement>();
			trainingState = new Vector.<int>();
			trainingDescriptions = new Vector.<String>();
			currentTrainingStep = 0;
		}
		
		protected function InitializeControls()
		{
			for (var item:String in ControlDictionary)
			{
				(ControlDictionary[item] as ControlElement).elementName = item;
				(ControlDictionary[item] as ControlElement).SetParent(this);
				ControlElements.push(ControlDictionary[item]);
			}
		}
		
		public function InitializeImpulsUnit(pDecriptionField:TextField, pOutButton:Button, ptextBoxNext:TextField)
		{
			decriptionField = pDecriptionField;
			outButton = pOutButton;
			textBoxNext = ptextBoxNext;
			textBoxNext.visible = false;
		}
		
		public function SetMode(impulseMode:int)
		{
			ImpulseMode = impulseMode;
			outButton.visible = false;
			switch (ImpulseMode)
			{
				case ModeInfo.MM_INSTRUCTION: 
				case ModeInfo.MM_TRAINIGWITHHINT: 
				case ModeInfo.MM_TRAINIGWITHOUTHINT:
					DisableControls();
					break;
				case ModeInfo.MM_CONTROL: 
					outButton.visible = true;
					textBoxNext.visible = true;
					RememberDefault();
					break;
				default: 
					throw new Error("Нет такого типа обучения");
			}
		}
		
		private function DisableControls()
		{
			for (var i:int = 0; i < ControlElements.length; i++)
			{
				ControlElements[i].BlockElement();
				ControlElements[i].SetParent(this);
			}
			UpdateState();
		}
		
		private function UpdateState()
		{
			if (TrainingSequence.length <= currentTrainingStep)
			{
				EndMessage();
			}
			else
			{
				if (currentTrainingStep > 0)
				{
					TrainingSequence[currentTrainingStep - 1].BlockElement();
					TrainingSequence[currentTrainingStep - 1].RemoveGlow();
				}
				
				TrainingSequence[currentTrainingStep].UnblockElement();
				
				if (ImpulseMode == ModeInfo.MM_INSTRUCTION)
				{
					TrainingSequence[currentTrainingStep].AddGlow();
					
					decriptionField.text = trainingDescriptions[currentTrainingStep];
				}
				else
				{
					decriptionField.text = "";
				}
				
				TrainingSequence[currentTrainingStep].SetNessesaryState(trainingState[currentTrainingStep]);
			}
		}
		
		private function EndMessage()
		{
			if (TrainingSequence.length != 0)
			{
				TrainingSequence[TrainingSequence.length - 1].BlockElement();
				TrainingSequence[TrainingSequence.length - 1].RemoveGlow();
			}
			decriptionField.text = "Вы выполнили все действия. Нажмите «Далее» для завершения настройки блока.";
			outButton.visible = true;
		}
		
		private function IncrementState()
		{
			currentTrainingStep++;
		}
		
		public function TestTraining(element:ControlElement)
		{
			if ((ImpulseMode == ModeInfo.MM_TRAINIGWITHHINT || ImpulseMode == ModeInfo.MM_TRAINIGWITHOUTHINT) && currentTrainingStep < TrainingSequence.length)
			{
				if (ImpulseMode == ModeInfo.MM_TRAINIGWITHHINT)
				{
					TrainingSequence[currentTrainingStep].AddGlow();
				}
				decriptionField.text = "Ошибка!";
			}
		}
		
		public function NextStep()
		{
			IncrementState();
			UpdateState();
		}
		
		public function AddToTraining(element:ControlElement, decription:String, nessesaryState:int)
		{
			TrainingSequence.push(element);
			trainingDescriptions.push(decription);
			trainingState.push(nessesaryState);
		}
		
		// делает "подготовку" для того чтобы сделать "Настройку(включение)"
		public function PrepareToWork()
		{
			var mouseEvent:MouseEvent = new MouseEvent(MouseEvent.CLICK);
			for (var i:int = 0; i < TrainingSequence.length; i++)
			{
				while (TrainingSequence[i].CurrentState != trainingState[i] && !TrainingSequence[i].OneState)
				{
					TrainingSequence[i].dispatchEvent(mouseEvent);
				}
				
				if (TrainingSequence[i].OneState)
				{
					TrainingSequence[i].dispatchEvent(mouseEvent);
				}
			}
			StartInitialize();
		}
		
		public function RememberDefault()
		{
			DefaultStates = new Vector.<int>(ControlElements.length);
			for (var i:int = 0; i < ControlElements.length; i++)
			{
				DefaultStates[i] = ControlElements[i].CurrentState;
			}
		}
		
		//след 5 процедур - для контроля - сравнение правильности последовательности и узнавании ошибок
		public function TestForErrors()
		{
			RememberControlStates();
			GoToDefaultState();
			InitializeToTestControl();
			GetErrorsProc();
		}
		
		private function RememberControlStates()
		{
			ControlStates = new Vector.<int>(ControlElements.length);
			for (var i:int = 0; i < ControlStates.length; i++)
			{
				ControlStates[i] = ControlElements[i].CurrentState;
			}
		}
		
		private function GoToDefaultState()
		{
			for (var i:int = 0; i < ControlElements.length; i++)
			{
				ControlElements[i].GoToState(DefaultStates[i], false);
			}
		}
		
		private function InitializeToTestControl()
		{
			var mouseEvent:MouseEvent = new MouseEvent(MouseEvent.CLICK);
			
			for (var i:int = 0; i < TrainingSequence.length; i++)
			{
				while (TrainingSequence[i].CurrentState != trainingState[i] && !TrainingSequence[i].OneState)
				{
					if (ModeInfo.modeInfo.blockName == "Блок D-39"
						&& TrainingSequence[i].elementName != "Тумблер питания 1"
						&& TrainingSequence[i].elementName != "Тумблер питания 2")
					{
						break;
					}
					
					TrainingSequence[i].dispatchEvent(mouseEvent);
				}
				
				if (TrainingSequence[i].OneState)
					TrainingSequence[i].dispatchEvent(mouseEvent);
			}
		}
		
		private function GetErrorsProc()
		{
			var count:int = 0;
			var errorText:String = "";
			for (var i:int = 0; i < ControlElements.length; i++)
			{
				if (ControlStates[i] != ControlElements[i].CurrentState)
				{
					if (ControlElements[i].StateCount == 2)
					{
						if (ControlElements[i].CurrentState == 1)
							errorText += "\t" + ControlElements[i].elementName + " должна находится в неактивном состоянии\r\n";
						else
							errorText += "\t" + ControlElements[i].elementName + " должна находится в активном состоянии\r\n";
					}
					else
					{
						errorText += "\t" + ControlElements[i].elementName + " находится в неверном состоянии\r\n";
					}
					count++;
				}
			}
			
			if (count > 0)
			{
				ModeInfo.modeInfo.errorText += ModeInfo.modeInfo.blockName + "\r\n" + errorText;
			}
			
			ModeInfo.modeInfo.blockInfo[ModeInfo.modeInfo.currentBlock].errorCount = count;
		}
	}
}