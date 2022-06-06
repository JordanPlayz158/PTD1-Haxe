package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_541 extends Class_194 {


    static inline final name_1 = Std.int(1800.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Charge Beam";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 50;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function get_Accurary():Int {
        return 90;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc5_:ASAny = null;
        var _loc6_:ASAny = null;
        var _loc2_ = method_3(param1);
        if (param1.check_Effects(Class_824) != null) {
            _loc2_ = Std.int(_loc2_ * 0.5);
        }
        var _loc3_:Class_16 = new Class_231(var_2, param1, _loc2_, new Hit_Charge_Beam(), this);
        _loc3_.var_12 = var_12;
        var_2.add_Effect(_loc3_);
        var _loc4_:Int;
        if ((_loc4_ = Std.int(Math.random() * 100 + 1)) <= 70) {
            if (_loc5_ = var_2.check_Effects(Class_800)) {
                _loc5_.remove_Me();
                _loc6_ = new Class_22(Class_22.const_17);
            }
            else {
                var_2.add_Effect(new Class_801(var_2, Class_541.name_1));
            }
        }
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_20;
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

