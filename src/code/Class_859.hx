package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_859 extends Class_853 {


    static inline final name_1 = Std.int(1800.0);

    public function new(param1:Class_875, param2:Poke) {
        super(param1, new Do_Wonder_Room(), Class_859.name_1, param2);
        var_234 = true;
    }

    @:allow(code) override function isCollision(param1:GfxMovieClip):Bool {
        return true;
    }

    @:allow(code) override function onCollision(param1:Poke) {
        var _loc2_ = param1.check_Effects(Class_832);
        if (_loc2_ == null) {
            param1.add_Effect(new Class_832(param1, Class_859.name_1));
        }
    }
}

