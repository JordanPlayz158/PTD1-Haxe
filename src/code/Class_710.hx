package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_710 extends Class_194 {


    static inline final name_1 = Std.int(1800.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Metal Sound";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 20;
    }

    @:allow(code) override function get_Accurary():Int {
        return 85;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_7;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) function lower_Special_Defense(param1:Poke) {
        if (param1.check_Effects(Class_810) != null) {
            return;
        }
        var _loc2_ = param1.check_Effects(Class_803);
        if (_loc2_ != null) {
            _loc2_.remove_Me();
            return;
        }
        param1.add_Effect(new Class_810(param1, Class_710.name_1));
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        this.lower_Special_Defense(param1);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Do_Metal_Sound());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME * 4;
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }
}

