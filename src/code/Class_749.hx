package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_749 extends Class_231 {


    static inline final name_1 = Std.int(360.0);

    public function new(param1:Poke, param2:Poke, param3:Int, param4:Class_194) {
        super(param1, param2, param3, new Hit_Mirror_Shot(), param4);
    }

    @:allow(code) override function do_On_Hit(param1:Poke) {
        var _loc2_ = 0;
        _loc2_ = Std.int(Math.random() * 100 + 1);
        if (_loc2_ <= 30) {
            Attack.lower_Accuracy(param1, Class_749.name_1, var_1);
        }
    }
}

