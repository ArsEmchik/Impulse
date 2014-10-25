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
		// след 2 поля для контроля - запомнить изначальное состояние перемычек(DefaultStates). Пользователь что-то делает(ControlStates)
		// потом переводим обратно DefaultStates делаем по TrainingSequence как надо и сравнимает с ControlStates

		private var DefaultStates: Vector.<int>; 
		private var ControlStates: Vector.<int>;


		protected var ControlElements: Vector.<ControlElement>; // элементы блока в массиве
		protected var ControlDictionary: Dictionary; // они же в коллекции
		public var ImpulseMode: int; // режим - констроль, обучение и т.д.

		// следующие 3 поля логически связаны. какой элемент задействовать, описание действие, в какое сосотояние его перевести

		public var TrainingSequence: Vector.<ControlElement>; 
		private var trainingDescriptions: Vector.<String>; 
		private var trainingState: Vector.<int>; 

		// текущее состояние TrainingSequence
		public var blockState: int;

		
		// кнопка и текстбокс для выхода и вывода информации
		protected var decriptionField: TextField;
		private var outButton: Button;
		protected var textBoxNext: TextField;
		
		public function ImpulsUnit(pFree: Boolean=false)
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
			blockState=0;			
		}
		
		protected function InitializeControls()
		{
			var item: String;
			for (item in ControlDictionary)
			{
				(ControlDictionary[item] as ControlElement).elementName = item;
				(ControlDictionary[item] as ControlElement).SetParent(this);
				ControlElements.push(ControlDictionary[item]);
			}
		}
		public function InitializeImpulsUnit(pDecriptionField: TextField, pOutButton: Button, ptextBoxNext: TextField)
		{
			decriptionField=pDecriptionField;
			outButton=pOutButton;
			textBoxNext = ptextBoxNext;
			textBoxNext.visible = false;
		}
		public function SetMode(impulseMode: int)
		{
			ImpulseMode=impulseMode;
			outButton.visible=false;
			switch (ImpulseMode)
			{
				case ModeInfo.MM_INSTRUCTION:
					BlockFullControl();
					break;
				case ModeInfo.MM_TRAINIGWITHHINT:
				case ModeInfo.MM_TRAINIGWITHOUTHINT:
					TrainingControl();
					break;
				case ModeInfo.MM_CONTROL:
					outButton.visible=true;
					textBoxNext.visible = true;
					this.RememberDefault();
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
				
				if (ImpulseMode==ModeInfo.MM_INSTRUCTION)
				{
					TrainingSequence[blockState].EmitControl();
					trace(TrainingSequence[blockState].elementName);
					this.decriptionField.text = this.trainingDescriptions[blockState];
				} else this.decriptionField.text="";
				TrainingSequence[blockState].SetNessesaryState(trainingState[blockState]);
				trace(TrainingSequence[blockState].elementName);
				
			}
		}
		private function EndMessage()
		{
			if (TrainingSequence.length!=0)
			{
				TrainingSequence[TrainingSequence.length-1].BlockElement();
				TrainingSequence[TrainingSequence.length-1].RemoveEmit();
			}
			this.decriptionField.text = "Вы выполнили все действия. Нажмите «Далее» для завершения настройки блока.";
			this.outButton.visible=true;
		}
		private function IncrementState()
		{
			blockState++;
		}
		private function TrainingControl()
		{
			BlockFullControlHelper();
		}
		public function TestTraining(element: ControlElement)
		{
			if ((ImpulseMode==ModeInfo.MM_TRAINIGWITHHINT || ImpulseMode==ModeInfo.MM_TRAINIGWITHOUTHINT) &&
				blockState<TrainingSequence.length)
			{
				if (ImpulseMode==ModeInfo.MM_TRAINIGWITHHINT)
				{
						TrainingSequence[blockState].EmitControl();
				}
				this.decriptionField.text = "Ошибка!";
			}
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
		// делает "подготовку" для того чтобы сделать "Настройку(включение)"
		public function PrepareToWork()
		{
			var i: int;
			var mouseEvent: MouseEvent = new MouseEvent(MouseEvent.CLICK);
			for (i=0; i<TrainingSequence.length; i++)
			{
			//ControlElements[i].elementName
				while (TrainingSequence[i].CurrentState!=trainingState[i] && !TrainingSequence[i].OneState)
				{
					TrainingSequence[i].dispatchEvent(mouseEvent);
				}
				if (TrainingSequence[i].OneState)
					TrainingSequence[i].dispatchEvent(mouseEvent);
			}
			StartInitialize();
		}
		public function RememberDefault()
		{
			DefaultStates = new Vector.<int>(ControlElements.length);
			var i: int;
			for (i=0; i<ControlElements.length; i++)
			{
				DefaultStates[i]=ControlElements[i].CurrentState;
			}
		}
		//след 5 процедур - для контроля - сравнение правильности последовательности и узнавании ошибок
		public function TestForErrors()
		{
			RememberControlStates()
			GoToDefaultState();
			InitializeToTestControl();
			GetErrorsProc();
		}
		private function RememberControlStates()
		{
			ControlStates = new Vector.<int>(ControlElements.length);
			var i: int;
			for (i=0; i<ControlStates.length; i++)
			{
				ControlStates[i]=ControlElements[i].CurrentState;
			}			
		}
		private function GoToDefaultState()
		{
			var i: int;
			for (i=0; i<ControlElements.length; i++)
			{
				ControlElements[i].GoToState(DefaultStates[i],false);
			}
		}
		private function InitializeToTestControl()
		{
			var i: int;
			var mouseEvent: MouseEvent = new MouseEvent(MouseEvent.CLICK);
			trace(TrainingSequence.length);
			
			for (i=0; i<TrainingSequence.length; i++)
			{
				
				
				while (TrainingSequence[i].CurrentState!=trainingState[i] && !TrainingSequence[i].OneState)
				{
					if((ModeInfo.modeInfo.blockName == "Блок D-39") && !((TrainingSequence[i].elementName == "Тумблер питания 1") || (TrainingSequence[i].elementName == "Тумблер питания 2"))){
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
			var i: int;
			var count: int=0;
			var firstTime: Boolean=true;
			for (i=0; i<ControlElements.length; i++)
			{
				if (ControlStates[i]!=ControlElements[i].CurrentState)
				{
					if (firstTime)
						ModeInfo.modeInfo.errorText+=ModeInfo.modeInfo.blockName+"\r\n";
					firstTime=false;
					if (ControlElements[i].StateCount==2)
					{
						if (ControlElements[i].CurrentState==1)
							ModeInfo.modeInfo.errorText+="\t"+ControlElements[i].elementName+" должна находится в неактивном состоянии\r\n";
						else ModeInfo.modeInfo.errorText+="\t"+ControlElements[i].elementName+" должна находится в активном состоянии\r\n";
					}
					else ModeInfo.modeInfo.errorText+="\t"+ControlElements[i].elementName+" находится в неверном состоянии\r\n";
					count++;
				}
			}
			ModeInfo.modeInfo.blockInfo[ModeInfo.modeInfo.currentBlock].errorCount = count;
		}
	}
}