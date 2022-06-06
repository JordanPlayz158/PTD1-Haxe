package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_692 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Wring Out";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 120;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = this.get_Move_Power();
        var _loc3_ = param1.life / param1.totalLife;
        _loc2_ = Std.int(_loc2_ * _loc3_);
        var _loc4_ = method_3(param1, _loc2_);
        param1.add_Effect(new Class_734(param1, new Do_Wring_Out(), _loc4_));
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_1;
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

