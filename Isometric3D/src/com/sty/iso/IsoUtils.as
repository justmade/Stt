package  com.sty.iso{
	
	import flash.geom.Point;
	public class IsoUtils {
		
		public static const Y_CORRECT:Number = Math.cos(- Math.PI/6)*Math.SQRT2;   
		
		//把等角空间中的一个3D坐标点转换成屏幕上的2D坐标点
		public static function isoToScreen(pos:Point3D):Point {
			var screenX:Number=pos.x-pos.z;
			var screenY:Number=pos.y*Y_CORRECT+(pos.x+pos.z)*0.5;
			return new Point(screenX,screenY);
		}
		
		//把屏幕上的2D坐标点转换成等角空间中的一个3D坐标点
		public static function screenToIso(point:Point):Point3D {
			var xpos:Number=point.y+point.x*.5;
			var ypos:Number=0;
			var zpos:Number=point.y-point.x*.5;
			return new Point3D(xpos,ypos,zpos);
		}
	}
}