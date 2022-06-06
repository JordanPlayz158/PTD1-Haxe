package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_480 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Me First";
        cantMiss = true;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 0;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc6_:ASAny = null;
        var _loc2_ = var_2.myProfile.speed * var_2.myProfile.mod_Speed;
        var _loc3_ = param1.myProfile.speed * param1.myProfile.mod_Speed;
        if (_loc2_ <= _loc3_) {
            return;
        }
        var _loc4_:Int = (param1.myProfile : ASAny)["move" + param1.myProfile.moveSelected];
        var _loc5_:Attack;
        if (Std.is((_loc5_ = Class_9.method_21(_loc4_, var_2)), Class_194)) {
            (_loc6_ = Std.downcast(_loc5_, Class_194)).var_681 = 1.5;
            _loc6_.do_Attack(param1);
        }
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

