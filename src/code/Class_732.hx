package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_732 extends Class_197 {


    @:allow(code) var var_614:Int = 0;

    public function new(param1:Poke, param2:GfxMovieClip, param3:Int) {
        this.var_614 = param3;
        super(param1, param2);
    }

    @:allow(code) override function init() {
        super.init();
        if (gfx != null) {
            gfx.play();
        }
    }

    @:allow(code) override function run() {
        if (var_15 == this.var_614) {
            remove_Me();
            return;
        }
        var_15 += method_6();
    }
}

