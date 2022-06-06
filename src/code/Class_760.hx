package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_760 extends Class_255 {


    public function new(param1:Poke, param2:Poke, param3:Int) {
        super(param1, param2, param3);
        var_4 = 20;
    }

    @:allow(code) override function do_At_Beginning() {
        var_8.gfx.alpha = 1;
        gfx.alpha = 0.4;
    }

    @:allow(code) override function do_At_End() {
        var_8.take_Healing(Std.int(var_20 / 2));
    }
}

