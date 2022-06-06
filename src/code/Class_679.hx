package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_679 extends Class_194 {


    static inline final name_1 = Std.int(1800.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Superpower";
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_13;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 120;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = method_3(param1);
        var _loc3_:Class_16 = new Class_780(param1, var_2, _loc2_);
        _loc3_.var_12 = var_12;
        param1.add_Effect(_loc3_);
        Attack.lower_Attack(var_2, Class_679.name_1);
        this.lower_Defense(var_2);
    }

    @:allow(code) function lower_Defense(param1:Poke) {
        if (param1.check_Effects(Class_807) != null) {
            return;
        }
        var _loc2_ = param1.check_Effects(Class_808);
        if (_loc2_ != null) {
            _loc2_.remove_Me();
            return;
        }
        param1.add_Effect(new Class_807(param1, Class_679.name_1));
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

