package fl.transitions.easing
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class None {

    public static function easeNone(param1:Float, param2:Float, param3:Float, param4:Float):Float {
        return param3 * param1 / param4 + param2;
    }

    public static function easeIn(param1:Float, param2:Float, param3:Float, param4:Float):Float {
        return param3 * param1 / param4 + param2;
    }

    public static function easeOut(param1:Float, param2:Float, param3:Float, param4:Float):Float {
        return param3 * param1 / param4 + param2;
    }

    public static function easeInOut(param1:Float, param2:Float, param3:Float, param4:Float):Float {
        return param3 * param1 / param4 + param2;
    }
}

