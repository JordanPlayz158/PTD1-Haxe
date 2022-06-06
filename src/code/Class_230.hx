package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_230 extends Class_16 {


    public function new(param1:Poke) {
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        speed = -speed;
    }

    @:allow(code) override function run() {
        if (var_15 == 10) {
            remove_Me();
        }
        else {
            var_1.gfx.y += speed;
            speed = -speed;
        }
        var_15 += method_6();
    }
}

