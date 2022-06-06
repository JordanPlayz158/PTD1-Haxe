package fl.transitions.easing
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Regular {

    public static function easeIn(param1:Float, param2:Float, param3:Float, param4:Float):Float {
        var _loc5_:ASAny = param1 / param4;
        param1 /= param4;
        return param3 * _loc5_ * param1 + param2;
    }

    public static function easeOut(param1:Float, param2:Float, param3:Float, param4:Float):Float {
        var _loc5_:ASAny = param1 / param4;
        param1 /= param4;
        return -param3 * _loc5_ * (param1 - 2) + param2;
    }

    public static function easeInOut(param1:Float, param2:Float, param3:Float, param4:Float):Float {
        var _loc5_:ASAny = param1 / (param4 / 2);
        param1 /= param4 / 2;
        if (_loc5_ < 1) {
            return param3 / 2 * param1 * param1 + param2;
        }
        return -param3 / 2 * (--param1 * (param1 - 2) - 1) + param2;
    }
}

