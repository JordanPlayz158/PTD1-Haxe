package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_145 extends Attack {


    static inline final name_1 = Std.int(1800.0);

    static inline final name_2 = Std.int(720.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Swords Dance";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc3_:ASAny = null;
        var _loc2_ = var_2.check_Effects(Class_802);
        if (_loc2_ != null) {
            _loc2_.remove_Me();
            _loc3_ = new Class_22(Class_22.const_17);
        }
        else if (var_2.check_Effects(Class_805) == null) {
            var_2.add_Effect(new Class_805(var_2, Class_145.name_1));
        }
        _loc2_ = var_2.check_Effects(Class_800);
        if (_loc2_ != null) {
            _loc2_.remove_Me();
            _loc3_ = new Class_22(Class_22.const_17);
        }
        else if (var_2.check_Effects(Class_801) == null) {
            var_2.add_Effect(new Class_801(var_2, Class_145.name_1));
        }
        var_2.add_Effect(new Class_197(var_2, new Do_Swords_Dance()));
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
        return Class_145.name_2;
    }
}

