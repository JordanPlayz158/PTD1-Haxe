package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_614 extends Class_194 {


    static inline final name_1 = Std.int(90.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Telekinesis";
        cantMiss = true;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 0;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_:Class_16 = new Class_834(param1, Class_614.name_1);
        _loc2_.var_12 = var_12;
        param1.add_Effect(_loc2_);
        param1.add_Effect(new Class_205(param1, 255, 0.8, Class_614.name_1));
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_14;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        var_2.add_Effect(new Class_205(var_2, 255, 0.8, Attack.ATTACK_TIME));
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }

    @:allow(code) override function one_Per_Target():Class<Dynamic> {
        return Class_834;
    }
}

