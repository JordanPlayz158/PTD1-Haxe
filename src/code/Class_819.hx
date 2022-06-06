package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_819 extends Class_732 {


    public function new(param1:Poke, param2:Int) {
        super(param1, new Gfx_Alert(), param2);
    }

    @:allow(code) override function init() {
        super.init();
        gfx.y = 0 - var_1.gfx.height / 2;
        var_1.turnAround();
    }
}

