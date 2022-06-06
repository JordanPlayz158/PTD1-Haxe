package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_715 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Stun Spore";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 20;
    }

    @:allow(code) override function get_Accurary():Int {
        return 75;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_8;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_:ASAny = null;
        if (param1.check_Effects(Class_202) == null) {
            _loc2_ = new Class_202(param1);
            param1.add_Effect(_loc2_);
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_733(var_2, new Do_Stun_Spore());
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

