package blocks
{
	import flash.display.MovieClip;
	import flash.text.TextField;
	
	public class CableView extends MovieClip
	{
		public var textbox: TextField;
		
		public function CableView()
		{
			var resultString:String = "Распределение каналов по входному кабелю\r\n";
			var nameVector:Vector.<String> = new Vector.<String>();
			nameVector.push("ПТРК-1(1 полукомплект)", "ПТРК-2(1 полукомплект)", "ПТРК-3(1 полукомплект)", "ПТРК-1(2 полукомплект)", "ПТРК-2(2 полукомплект)", "ПТРК-3(2 полукомплект)");
			var i:int;
			var addToResult:Boolean;
			for (i = 0; i < nameVector.length; i++)
			{
				addToResult = false;
				if (ModeInfo.modeInfo.KtchChannels[i] != 0)
				{
					addToResult = true;
					resultString += (nameVector[i] + " КТЧ: " + ModeInfo.modeInfo.KtchChannels[i]);
				}
				if (ModeInfo.modeInfo.Czk86Channels[i] != 0)
				{
					if (addToResult)
						resultString += ", ЦК48: " + ModeInfo.modeInfo.Czk86Channels[i];
					else
						resultString += (nameVector[i] + " ЦК48: " + ModeInfo.modeInfo.Czk86Channels[i]);
					addToResult = true;
				}
				if (addToResult)
					resultString += "\r\n";
			}
			if (ModeInfo.modeInfo.P296n1 != 0)
				resultString += "П296 (1 полукомплект:) " + ModeInfo.modeInfo.P296n1 + " кан.\r\n";
			if (ModeInfo.modeInfo.P296n2 != 0)
				resultString += "П296 (2 полукомплект:) " + ModeInfo.modeInfo.P296n2 + " кан.\r\n";
			textbox.text = resultString;
		}
	}
}
