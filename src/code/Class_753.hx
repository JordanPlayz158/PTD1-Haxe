package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.motion.Color;

class Class_753 extends Class_255 {


    public function new(param1:Poke, param2:Poke, param3:Int) {
        super(param1, param2, param3);
        var_4 = 15;
    }

    @:allow(code) override function init() {
        super.init();
        var _loc1_ = new Color();
        _loc1_.setTint(16711680, 0.5);
        gfx.transform.colorTransform = _loc1_;
    }

    @:allow(code) override function remove_Me() {
        var_8.gfx.alpha = 1;
        var_1.removeChild(gfx);
        gfx = null;
        var_1.remove_Effect(this);
        do_At_End();
        var_1.take_Damage(var_20, new Class_197(var_1, new Hit_Strength()), var_12);
        var_1 = null;
    }
}

