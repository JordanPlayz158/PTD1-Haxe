package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_401 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Perish Song";
        cantMiss = true;
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 70;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        if (param1.myProfile.level > var_2.myProfile.level) {
            return;
        }
        if (param1.check_Effects(Class_835) != null) {
            return;
        }
        param1.add_Effect(new Class_835(param1, null, Attack.ATTACK_TIME * 3));
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        if (var_2.check_Effects(Class_835) == null) {
            var_2.add_Effect(new Class_835(var_2, null, Attack.ATTACK_TIME));
        }
        return new Class_733(var_2, new Do_Sing());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Gfx_Hit());
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_1;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function get_coolDown():Int {
        return 54;
    }
}

