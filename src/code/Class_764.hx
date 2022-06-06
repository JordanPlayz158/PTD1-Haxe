package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_764 extends Class_255 {


    @:allow(code) var var_43:GfxMovieClip;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        super(param1, param2, param3);
        var_4 = 15;
    }

    @:allow(code) override function do_At_End() {
        var_1.add_Effect(new Class_388(var_1));
    }
}

