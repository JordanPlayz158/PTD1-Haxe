package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_497 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Eruption";
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 70;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = 150;
        var _loc3_ = param1.life / param1.totalLife;
        _loc2_ = Std.int(_loc2_ * _loc3_);
        var _loc4_ = method_3(param1, _loc2_);
        if (param1.check_Effects(Class_826) != null || var_2.check_Effects(Class_788) != null) {
            _loc4_ = Std.int(_loc4_ * 0.5);
        }
        if (var_2.check_Effects(Class_789) != null) {
            _loc4_ = Std.int(_loc4_ * 1.5);
        }
        var _loc5_:Class_16;
        (_loc5_ = new Class_270(var_2, param1, _loc4_)).var_12 = var_12;
        var_2.add_Effect(_loc5_);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Hit_Eruption());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Gfx_Hit());
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_6;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function get_coolDown():Int {
        return 24;
    }
}

