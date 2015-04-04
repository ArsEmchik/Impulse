package screens
{
	import flash.display.MovieClip;
	import blocks.ModeInfo;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import screens.MainScreen;
	
	public class FinalScreen extends MovieClip
	{
		public var goStartScreen: Button;
		public var errorButton: Button;
		public var errorArea: ErrorArea;
		public var txtFinalOutputMessage: TextField;
		
		private var addedErrorMessage: Boolean = false;
		private var main_screen: MainScreen;
		
		private function ShowErrors(e:MouseEvent)
		{
			addedErrorMessage = !addedErrorMessage;
			if (addedErrorMessage)
			{
				(errorButton as Button).label = "Закрыть окно с ошибками";
				errorArea.visible = true;
			}
			else
			{
				(errorButton as Button).label = "Просмотреть ошибки";
				errorArea.visible = false;
			}
		}
		
		public function InitScreen(p_main_screen:MainScreen)
		{
			errorArea.visible = false;
			errorButton.visible = false;
			main_screen = p_main_screen;
			goStartScreen.addEventListener(MouseEvent.CLICK, GoToStartScreen);
			setModeDependances();
		}
		
		public function GoToStartScreen(e:MouseEvent)
		{
			main_screen.InitializeModeScreen();
			ModeInfo.modeInfo.errorText = "";
			ModeInfo.modeInfo.error_count_summary = 0;
			var i:int;
			for (i = 0; i < ModeInfo.modeInfo.blockInfo.length; i++)
			{
				if (ModeInfo.modeInfo.blockInfo[i] != null)
					ModeInfo.modeInfo.blockInfo[i].errorCount = 0;
			}
		}
		
		public function setModeDependances()
		{
			switch (ModeInfo.modeInfo.MainMode)
			{
				case 0: 
				{
					txtFinalOutputMessage.text = "Прохождение режима работы тренажера «Обучение» завершено. Нажмите кнопку «Пройти заново», чтобы вернуться к выбору режима.";
					break;
				}
				case 1: 
				{
					txtFinalOutputMessage.text = "Прохождение режима работы тренажера «Тренировка с подсказками» завершено. Нажмите кнопку «Пройти заново», чтобы вернуться к выбору режима.";
					break;
				}
				case 2: 
				{
					txtFinalOutputMessage.text = "Прохождение режима работы тренажера «Тренировка без подсказок» завершено. Нажмите кнопку «Пройти заново», чтобы вернуться к выбору режима.";
					break;
				}
				case 3: 
				{
					errorArea.text.text = ModeInfo.modeInfo.errorText;
					errorButton.visible = true;
					errorButton.addEventListener(MouseEvent.CLICK, ShowErrors);
					
					txtFinalOutputMessage.text = "Курсант «" + ModeInfo.modeInfo.fio + "»";
					if (ModeInfo.modeInfo.vzv_num != "")
					{
						txtFinalOutputMessage.text += " (взвод № " + ModeInfo.modeInfo.vzv_num + ")"
					}
					txtFinalOutputMessage.text += " завершил прохождение режима работы тренажера «Контроль». Количество ошибок: " + ModeInfo.modeInfo.error_count_summary.toString() + ".\r\nНажмите кнопку «Пройти заново», чтобы вернуться к выбору режима.";
					break;
				}
				default: 
				{
					txtFinalOutputMessage.text = "Курсант «" + ModeInfo.modeInfo.fio + "»";
					if (ModeInfo.modeInfo.vzv_num != "")
					{
						txtFinalOutputMessage.text += " (взвод № " + ModeInfo.modeInfo.vzv_num + ")"
					}
					txtFinalOutputMessage.text += " завершил прохождение режима работы тренажера «Обучение». Нажмите кнопку «Пройти заново», чтобы вернуться к выбору режима.";
				}
			}
		}
	}

}
