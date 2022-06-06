package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_705 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Shock Wave";
        cantMiss = true;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 60;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = method_3(param1);
        if (param1.check_Effects(Class_824) != null) {
            _loc2_ = Std.int(_loc2_ * 0.5);
        }
        method_13(param1, _loc2_, this.get_Target_Hit_Animation(param1));
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_20;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        var _loc1_:GfxMovieClip = new Do_Charge();
        var_2.add_Effect(new Class_205(var_2, 16776960, 0.7, _loc1_.totalFrames));
        return new Class_197(var_2, _loc1_);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        param1.add_Effect(new Class_197(param1, new Gfx_Paralysis()));
        return new Class_197(param1, new Gfx_Hit());
    }
}

