package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_734 extends Class_197 {


    @:allow(code) var var_433:Int = 0;

    public function new(param1:Poke, param2:GfxMovieClip, param3:Int) {
        super(param1, param2);
        this.var_433 = param3;
    }

    @:allow(code) override function do_Before_End() {
        var_1.take_Damage(this.var_433, new Class_197(var_1, new Gfx_Hit()), var_12);
    }
}

