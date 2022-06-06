package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_606 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Future Sight";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 100;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = method_3(param1);
        param1.add_Effect(new Class_327(param1, _loc2_));
        param1.add_Effect(new Class_16(param1));
    }

    @:allow(code) override function one_Per_Target():Class<Dynamic> {
        return Class_327;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_14;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        var _loc1_:GfxMovieClip = new Do_Future_Sight();
        var_2.add_Effect(new Class_197(var_2, _loc1_));
        var_2.add_Effect(new Class_205(var_2, 39423, 0.5, _loc1_.totalFrames));
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_16(param1);
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

