package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_754 extends Class_255 {


    public function new(param1:Poke, param2:Poke, param3:Int) {
        super(param1, param2, param3);
        var_4 = 15;
    }

    @:allow(code) override function init() {
        super.init();
        var _loc1_:GfxMovieClip = new Do_Astonish_Repeat();
        gfx.addChild(_loc1_);
    }

    @:allow(code) override function remove_Me() {
        Attack.do_Flinch(var_1, 30, Attack.ATTACK_TIME, var_8, null, var_12, true);
        super.remove_Me();
    }
}

