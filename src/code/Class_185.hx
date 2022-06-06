package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_185 extends Attack {


    static inline final name_1 = Std.int(180.0);

    static inline final name_2 = Std.int(270.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Agility";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc3_:ASAny = null;
        if (var_2.check_Effects(Class_806) != null) {
            var_2.currentCoolDown = 0;
            return;
        }
        var _loc2_ = var_2.check_Effects(Class_809);
        if (_loc2_ != null) {
            _loc3_ = new Class_22(Class_22.const_17);
            _loc2_.remove_Me();
            return;
        }
        var_2.add_Effect(new Class_806(var_2, Class_185.name_1));
        var_2.add_Effect(new Class_820(var_2, Attack.ATTACK_TIME));
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_Initial_CoolDown():Int {
        return Attack.ATTACK_TIME;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_185.name_2;
    }
}

