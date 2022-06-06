package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_831 extends Class_732 {


    public function new(param1:Poke, param2:Int) {
        super(param1, null, param2);
    }

    @:allow(code) override function init() {
        super.init();
        var_1.gfx.scaleY = 0.5;
        var_1.gfx.scaleX = 0.5;
    }

    @:allow(code) override function remove_Me() {
        var_1.gfx.scaleY = 1;
        var_1.gfx.scaleX = 1;
        super.remove_Me();
    }
}

