package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_673 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Giga Drain";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 75;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        super.do_Attack(param1);
        var _loc2_ = Std.int(method_3(param1, this.get_Move_Power()) / 2);
        var_2.take_Healing(_loc2_);
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_8;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Do_Giga_Drain());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Hit_Giga_Drain());
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

