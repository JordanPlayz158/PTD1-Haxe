package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_752 extends Class_255 {


    public function new(param1:Poke, param2:Poke, param3:Int) {
        super(param1, param2, param3);
        var_4 = 24;
    }

    @:allow(code) override function do_At_End() {
        Attack.do_Flinch(var_1, 20, Attack.ATTACK_TIME, var_8, null, var_12, true);
        var _loc1_:Class_16 = new Class_734(var_1, new Hit_Waterfall(), var_20);
        _loc1_.var_12 = var_12;
        var_1.add_Effect(_loc1_);
    }

    @:allow(code) override function remove_Me() {
        var_8.gfx.alpha = 1;
        var_1.removeChild(gfx);
        gfx = null;
        var_1.remove_Effect(this);
        this.do_At_End();
        var_1 = null;
    }
}

