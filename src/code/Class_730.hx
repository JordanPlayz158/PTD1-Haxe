package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_730 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Bug Buzz";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 90;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        super.do_Attack(param1);
        var _loc2_ = Std.int(Math.random() * 100 + 1);
        if (_loc2_ > 10) {
            return;
        }
        if (param1.check_Effects(Class_810) == null) {
            _loc3_ = param1.check_Effects(Class_803);
            if (_loc3_) {
                _loc4_ = new Class_22(Class_22.const_11);
                _loc3_.remove_Me();
            }
            else {
                param1.add_Effect(new Class_810(param1, 0));
            }
        }
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_22;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Do_Bug_Buzz());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        var _loc2_:GfxMovieClip = new Do_Bug_Buzz();
        param1.add_Effect(new Class_197(param1, _loc2_));
        return new Class_197(param1, new Gfx_Hit());
    }

    @:allow(code) override function get_coolDown():Int {
        return 20;
    }
}

