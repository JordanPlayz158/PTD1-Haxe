package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_570 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Gastro Acid";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 1;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_:Class_16 = new Class_309(var_2, param1);
        _loc2_.var_12 = var_12;
        var_2.add_Effect(_loc2_);
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_2;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

