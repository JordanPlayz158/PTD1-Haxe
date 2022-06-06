package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_443 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Sludge Wave";
    }

    @:allow(code) override function get_Accurary():Int {
        return 100;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 95;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_2;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc3_ = 0;
        var _loc4_:ASAny = null;
        super.do_Attack(param1);
        var _loc2_ = Std.int(Math.random() * 100 + 1);
        if (_loc2_ <= 10) {
            if (param1.check_Effects(Class_200) == null && !param1.myProfile.is_Type(Class_13.const_2) && !param1.myProfile.is_Type(Class_13.const_7)) {
                _loc3_ = method_3(param1, 40, true);
                (_loc4_ = new Class_200(param1, _loc3_)).var_12 = var_12;
                param1.add_Effect(_loc4_);
            }
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_733(var_2, new Do_Sludge_Wave());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return 24;
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }
}

