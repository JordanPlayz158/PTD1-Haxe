package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_555 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Swagger";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 0;
    }

    @:allow(code) override function get_Accurary():Int {
        return 90;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = 0;
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        if (param1.check_Effects(Class_203) == null) {
            _loc2_ = method_3(param1, 60, true);
            _loc3_ = new Class_203(param1, _loc2_);
            _loc3_.var_12 = var_12;
            param1.add_Effect(_loc3_);
        }
        if (param1.check_Effects(Class_806) == null) {
            if (_loc4_ = param1.check_Effects(Class_809)) {
                _loc4_.remove_Me();
            }
            else {
                param1.add_Effect(new Class_806(param1, Attack.ATTACK_TIME * 3));
            }
        }
        param1.add_Effect(new Class_205(param1, 16711680, 0.5, Attack.ATTACK_TIME * 3));
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_1;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_205(var_2, 16711680, 0.5, Attack.ATTACK_TIME);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

