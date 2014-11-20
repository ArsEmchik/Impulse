package controls 
{
	import blocks.ControlElement;
	import flash.display.DisplayObjectContainer;
	import flash.display.Shape;
	import flash.display.Sprite;
	
	public class Wire extends Sprite
	{
		private var wireShape: Shape;
		private var parentObject: DisplayObjectContainer;
		
		private var colorArray: Vector.<uint> = new <uint>[0x534220, 0x4b5320, 0x325320, 0x532820, 0x204b53];
		
		public function Wire(parentObject: DisplayObjectContainer)
        {
            wireShape = new Shape();
			
			if (parentObject != null)
				parentObject.addChild(wireShape);
        }
		
		public function drawWire(jumperA, jumperB: ControlElement)
		{
			wireShape.graphics.clear();
			
			if (jumperA == null || jumperB == null)
			{
				return;
			}
			
			if (Math.abs(jumperA.X - jumperB.X) > 5 || Math.abs(jumperA.Y - jumperB.Y) != 23)
			{
				wireShape.graphics.lineStyle(6, colorArray[Math.floor(Math.random() * 5)]);
				
				var add:int = 5 + Math.floor(Math.random() * 5);
			
				wireShape.graphics.moveTo(jumperA.X, jumperA.Y);
				wireShape.graphics.cubicCurveTo(jumperA.X, jumperA.Y + 60 + add, jumperB.X, jumperB.Y + 60 * add, jumperB.X, jumperB.Y);
			}
			else
			{
				wireShape.graphics.lineStyle(6, 0x66551c);
			
				wireShape.graphics.moveTo(jumperA.X, jumperA.Y);
				wireShape.graphics.lineTo(jumperB.X, jumperB.Y);
			}
		}
		
		public function eraseWire()
		{
			wireShape.graphics.clear();
		}
		
		public function setFilters(filters: Array)
		{
			wireShape.filters = filters;
		}
	}
}