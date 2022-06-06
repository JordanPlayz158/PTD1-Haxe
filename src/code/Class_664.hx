package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_664 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Electro Ball";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 60;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = this.get_Move_Power();
        if (param1.check_Effects(Class_809) != null) {
            _loc2_ = 80;
        }
        var _loc3_ = method_3(param1, _loc2_);
        if (param1.check_Effects(Class_824) != null) {
            _loc3_ = Std.int(_loc3_ * 0.5);
        }
        var _loc4_:Class_16;
        (_loc4_ = new Class_365(var_2, param1, _loc3_)).var_12 = var_12;
        var_2.add_Effect(_loc4_);
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_20;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        var _loc1_:GfxMovieClip = new Gfx_Thundershock();
        var_2.add_Effect(new Class_205(var_2, 16776960, 0.7, _loc1_.totalFrames));
        return new Class_197(var_2, _loc1_);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

