package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.motion.Color;


class Class_771 extends Class_255 {


    public function new(param1:Poke, param2:Poke, param3:Int) {
        super(param1, param2, param3);
        var_4 = 20;
    }

    @:allow(code) override function init() {
        super.init();
        var _loc1_:GfxMovieClip = new Gfx_Thundershock();
        var _loc2_ = new Color();
        _loc2_.setTint(16776960, 0.9);
        gfx.transform.colorTransform = _loc2_;
        gfx.addChild(_loc1_);
    }

    @:allow(code) override function do_At_End() {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc1_ = Std.int(Math.random() * 100 + 1);
        if (_loc1_ <= 30 && !var_1.myProfile.is_Type(Class_13.const_10)) {
            if (var_1.check_Effects(Class_809) != null) {
                return;
            }
            _loc2_ = var_1.check_Effects(Class_806);
            if (_loc2_) {
                _loc3_ = new Class_22(Class_22.const_11);
                _loc2_.remove_Me();
                return;
            }
            var_1.add_Effect(new Class_202(var_1));
        }
    }
}

