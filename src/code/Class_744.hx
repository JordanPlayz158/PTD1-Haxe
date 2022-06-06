package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_744 extends Class_231 {


    public function new(param1:Poke, param2:Poke, param3:Int, param4:Class_194) {
        super(param1, param2, param3, new Hit_Ice_Beam(), param4);
    }

    @:allow(code) override function do_On_Hit(param1:Poke) {
        Attack.do_Freeze(param1, 10, 0, var_1, null);
    }
}

