package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_572 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "SolarBeam";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 120;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = method_3(param1);
        var _loc3_:Class_16 = new Class_231(var_2, param1, _loc2_, new Hit_Solarbeam(), this);
        _loc3_.var_12 = var_12;
        var_2.add_Effect(_loc3_);
        var_2.add_Effect(new Class_205(var_2, 16777164, 0.7, Attack.ATTACK_TIME));
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_8;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        var _loc1_ = 24;
        if (var_2.check_Effects(Class_789) != null) {
            _loc1_ = 18;
        }
        return _loc1_;
    }
}

