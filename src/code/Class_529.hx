package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_529 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Heat Wave";
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 100;
    }

    @:allow(code) override function get_Accurary():Int {
        return 90;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc4_ = 0;
        var _loc5_:ASAny = null;
        var _loc2_ = method_3(param1);
        var _loc3_ = method_3(param1, 40);
        if (param1.check_Effects(Class_826) != null || var_2.check_Effects(Class_788) != null) {
            _loc2_ = Std.int(_loc2_ * 0.5);
            _loc3_ = Std.int(_loc3_ * 0.5);
        }
        if (var_2.check_Effects(Class_789) != null) {
            _loc2_ = Std.int(_loc2_ * 1.5);
            _loc3_ = Std.int(_loc3_ * 1.5);
        }
        method_13(param1, _loc2_, this.get_Target_Hit_Animation(param1));
        if (param1.check_Effects(Class_201) == null && !param1.myProfile.is_Type(Class_13.const_6)) {
            if ((_loc4_ = Std.int(Math.random() * 100 + 1)) <= 10) {
                (_loc5_ = new Class_201(param1, _loc3_)).var_12 = var_12;
                param1.add_Effect(_loc5_);
            }
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_733(var_2, new Do_Heat_Wave());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Gfx_Hit());
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_6;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function get_coolDown():Int {
        return 24;
    }
}

