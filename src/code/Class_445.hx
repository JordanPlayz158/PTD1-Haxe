package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_445 extends Class_194 {


    static inline final name_1 = Std.int(54.0);

    static inline final const_360 = Std.int(108.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Knock Off";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc5_:ASAny = null;
        if (param1.check_Effects(Class_802) != null) {
            var_2.currentCoolDown = 0;
            return;
        }
        var _loc2_ = param1.check_Effects(Class_805);
        if (_loc2_ != null) {
            _loc5_ = new Class_22(Class_22.const_11);
            _loc2_.remove_Me();
        }
        else {
            param1.add_Effect(new Class_802(param1, Class_445.name_1));
        }
        var _loc3_ = method_3(param1);
        var _loc4_:Class_16;
        (_loc4_ = new Class_235(param1, var_2, _loc3_)).var_12 = var_12;
        param1.add_Effect(_loc4_);
    }

    @:allow(code) override function get_Move_Power():Int {
        return 20;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_445.const_360;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_27;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }
}

