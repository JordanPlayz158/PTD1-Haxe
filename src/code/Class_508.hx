package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_508 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Round";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 60;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_1;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Do_Sing());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        var _loc2_:GfxMovieClip = new Do_Sing();
        param1.add_Effect(new Class_197(param1, _loc2_));
        return new Class_197(param1, new Gfx_Hit());
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

