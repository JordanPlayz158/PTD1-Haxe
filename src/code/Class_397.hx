package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_397 extends Class_17 {


    public function new(param1:Poke) {
        super(param1);
    }

    @:allow(code) override function on_Do_Damage(param1:Poke, param2:Int, param3:Attack):Int {
        var _loc5_:ASAny = null;
        var _loc4_ = 0;
        if (var_1.life <= _loc4_) {
            if (var_1.check_Effects(Class_784) == null) {
                var_1.add_Effect(new Class_784(var_1));
                var_1.add_Effect(new Class_737(var_1, "Blaze"));
            }
            if (param3.get_Move_Type() == Class_13.const_6) {
                param2 = Std.int(param2 * 1.5);
            }
        }
        else if (_loc5_ = var_1.check_Effects(Class_784)) {
            _loc5_.remove_Me();
        }
        return param2;
    }
}

