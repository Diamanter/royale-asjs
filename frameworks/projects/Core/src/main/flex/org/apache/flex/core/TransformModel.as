package org.apache.flex.core
{
	import org.apache.flex.events.Event;
	import org.apache.flex.events.EventDispatcher;
	import org.apache.flex.geom.Matrix;
	
	public class TransformModel extends EventDispatcher implements ITransformModel
	{
		
		public static const CHANGE:String = "transferModelChange";
		
		private var _matrix:Matrix;
		private var _strand:IStrand;
		
		public function TransformModel()
		{
		}
		
		public function get matrix():Matrix
		{
			return _matrix;
		}

		private function dispatchModelChangeEvent():void
		{
			host.dispatchEvent(new Event(CHANGE));
		}
		
		private function get host():ITransformHost
		{
			return _strand as ITransformHost;
		}
		
		public function set matrix(value:Matrix):void
		{
			_matrix = value;
			if (_strand)
			{
				dispatchModelChangeEvent();
			}
		}
		
		public function set strand(value:IStrand):void 
		{
			_strand = value;
			dispatchModelChangeEvent();
		}

	}
}