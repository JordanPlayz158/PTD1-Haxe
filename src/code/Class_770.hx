package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.motion.Color;

class Class_770 extends Class_255 {


    public function new(param1:Poke, param2:Poke, param3:Int) {
        super(param1, param2, param3);
        var_4 = 12;
    }

    @:allow(code) override function init() {
        super.init();
        var _loc1_ = new Color();
        _loc1_.setTint(52326, 0.9);
        gfx.transform.colorTransform = _loc1_;
    }

    @:allow(code) override function do_At_End() {
        var _loc1_:ASAny = var_20;
        if (var_20 > var_1.life) {
            _loc1_ = var_1.life;
        }
        var _loc2_:Int = _loc1_ * 0.33;
        var _loc3_ = Std.int(_loc1_ / 0 * 0.33 * 0);
        if (Math.abs(_loc3_) < Math.abs(_loc2_)) {
            _loc2_ = _loc3_;
        }
        _loc2_ = Std.int(Math.abs(_loc2_));
        var_8.take_Damage(_loc2_, new Class_197(var_8, new Gfx_Hit()), 1, false);
    }
}

