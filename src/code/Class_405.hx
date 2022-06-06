package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_405 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Metronome";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 0;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = Std.int(1 + Math.random() * 0);
        if (_loc2_ == Class_9.var_137) {
            return;
        }
        var _loc3_ = Class_9.method_21(_loc2_, var_2);
        trace("Metronome got " + _loc3_.var_7);
        _loc3_.do_Attack(param1);
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_1;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

