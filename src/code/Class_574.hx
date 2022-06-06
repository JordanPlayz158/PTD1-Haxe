package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_574 extends Class_194 {


    @:allow(code) static inline final name_1 = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Rock Tomb";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 50;
    }

    @:allow(code) override function get_Accurary():Int {
        return 80;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_15;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc4_:ASAny = null;
        super.do_Attack(param1);
        var _loc2_ = Std.int(Math.random() * 100 + 1);
        if (_loc2_ <= 10) {
            if (param1.check_Effects(Class_793) == null) {
                param1.add_Effect(new Class_793(param1, Attack.ATTACK_TIME));
            }
        }
        var _loc3_ = param1.check_Effects(Class_806);
        if (_loc3_ != null) {
            _loc4_ = new Class_22(Class_22.const_11);
            _loc3_.remove_Me();
            return;
        }
        var_2.add_Effect(new Class_310(var_2, param1, 0));
        if (param1.check_Effects(Class_809) == null) {
            param1.add_Effect(new Class_732(param1, new Hit_Rock_Tomb(), Class_574.name_1));
            param1.add_Effect(new Class_809(param1, Class_574.name_1));
        }
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

