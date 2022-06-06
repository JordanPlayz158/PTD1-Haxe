package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_535 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Hex";
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_24;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 50;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = this.get_Move_Power();
        if (param1.check_Effects(Class_791) != null || param1.check_Effects(Class_200) != null || param1.check_Effects(Class_201) != null || param1.check_Effects(Class_796) != null || param1.check_Effects(Class_202) != null) {
            _loc2_ *= 2;
        }
        var _loc3_ = method_3(param1, _loc2_);
        this.method_13(param1, _loc3_, null);
        param1.add_Effect(new Class_197(param1, new Hit_Hex()));
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

