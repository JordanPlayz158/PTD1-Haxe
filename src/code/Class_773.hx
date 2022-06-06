package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.motion.Color;

class Class_773 extends Class_255 {


    @:allow(code) var var_306:Int = 0;

    public function new(param1:Poke, param2:Poke, param3:Int, param4:Int) {
        super(param1, param2, param3);
        var_4 = 20;
        this.var_306 = param4;
    }

    @:allow(code) override function init() {
        super.init();
        var _loc1_ = new Color();
        _loc1_.setTint(16711935, 0.9);
        gfx.transform.colorTransform = _loc1_;
    }

    @:allow(code) override function do_At_End() {
        var _loc2_:ASAny = null;
        var _loc1_ = Std.int(Math.random() * 100 + 1);
        if (_loc1_ <= 30) {
            if (var_1.check_Effects(Class_200) == null && !var_1.myProfile.is_Type(Class_13.const_2) && !var_1.myProfile.is_Type(Class_13.const_7)) {
                _loc2_ = new Class_200(var_1, this.var_306);
                _loc2_.var_12 = var_12;
                var_1.add_Effect(_loc2_);
            }
        }
    }
}

