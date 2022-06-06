package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_557 extends Class_194 {


    static inline final name_1 = Std.int(1800.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Leaf Storm";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 140;
    }

    @:allow(code) override function get_Accurary():Int {
        return 90;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = method_3(param1);
        var _loc3_:Class_16 = new Class_231(var_2, param1, _loc2_, new Hit_Leaf_Storm(), this);
        _loc3_.var_12 = var_12;
        var_2.add_Effect(_loc3_);
        var_2.add_Effect(new Class_205(var_2, 39270, 0.7, Attack.ATTACK_TIME));
        Attack.lower_Special_Attack(var_2, Class_557.name_1);
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
        return 22;
    }
}

