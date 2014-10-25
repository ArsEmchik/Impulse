package blocks
{
	import flash.utils.getQualifiedClassName;
	
	public class BlockInfo
	{
		public var blockDone: Boolean = false;
		public var errorCount: int = 0;
		
		public function toString(): String
		{
			return getQualifiedClassName(this) + " Object {" 
			+ "\n blockDone: " + blockDone
			+ "\n errorCount: " + errorCount
			+ "\n}";
		}
	}
}