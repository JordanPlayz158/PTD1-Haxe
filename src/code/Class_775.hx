package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.motion.Color;

class Class_775 extends Class_255 {


    public function new(param1:Poke, param2:Poke, param3:Int) {
        super(param1, param2, param3);
        var_4 = 15;
    }

    @:allow(code) override function init() {
        super.init();
        var _loc1_ = new Color();
        _loc1_.setTint(3355647, 0.9);
        gfx.transform.colorTransform = _loc1_;
    }

    @:allow(code) override function do_At_End() {
        Attack.do_Flinch(var_1, 20, Attack.ATTACK_TIME, var_8, null, var_12, true);
    }
}

